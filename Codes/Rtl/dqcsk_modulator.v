module dqcsk_modulator (
    input  wire   clk,
    input  wire   reset,
    input  wire   valid_in,  
    input  wire [2:0]  sn_phase,   // from dqpsk_encoder.out_phase (only can take values  1,3,5,7 -- 45/135/225/315 deg)
    input  wire signed [5:0] csk_real,   
    input  wire signed [5:0] csk_imag,   

    output reg               valid_out,
    output reg  signed [7:0] tx_real,
    output reg  signed [7:0] tx_imag
);

    // sn_phase can only  be 1, 3, 5, or 7).
    //   Sn * (csk_real + j*csk_imag)  , Sn = Sn_real + Sn_imag
    // = (Sn_real*csk_real - Sn_imag*csk_imag) + j*(Sn_real*csk_imag + Sn_imag*csk_real)

always @(posedge clk or posedge reset) begin
        if (reset) begin
            valid_out <= 1'b0;
            tx_real   <= 8'sd0;
            tx_imag   <= 8'sd0;
        end else begin
            valid_out <= valid_in;
            if (valid_in) begin
                case (sn_phase)
                    3'd1: begin // 45 deg:  Sn = +1 +j1
                        tx_real <= csk_real - csk_imag;
                        tx_imag <= csk_real + csk_imag;
                    end
                    3'd3: begin // 135 deg: Sn = -1 +j1
                        tx_real <= -csk_real - csk_imag;
                        tx_imag <=  csk_real - csk_imag;
                    end
                    3'd5: begin // 225 deg: Sn = -1 -j1
                        tx_real <=  csk_imag - csk_real;
                        tx_imag <= -csk_real - csk_imag;
                    end
                    3'd7: begin // 315 deg: Sn = +1 -j1
                        tx_real <= csk_real + csk_imag;
                        tx_imag <= csk_imag - csk_real;
                    end
                    default: begin
                        tx_real <= 8'sd0;
                        tx_imag <= 8'sd0;
                    end
                endcase
            end
        end
    end

endmodule