# ----------------------------------------------------------------------------
# CSS PHY Transmitter - ZedBoard XDC
# Target Device: Zynq-7000 XC7Z020
# ----------------------------------------------------------------------------

# ----------------------------------------------------------------------------
# Clock
# ----------------------------------------------------------------------------

set_property PACKAGE_PIN Y9 [get_ports {clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk}]

create_clock -name clk -period 30.0 [get_ports {clk}]


# ----------------------------------------------------------------------------
# Reset Button
# ----------------------------------------------------------------------------

set_property PACKAGE_PIN P16 [get_ports {reset}]
set_property IOSTANDARD LVCMOS18 [get_ports {reset}]

set_input_delay -clock clk 5.0 [get_ports {reset}]


# ----------------------------------------------------------------------------
# Start Transmission Button
# ----------------------------------------------------------------------------

set_property PACKAGE_PIN T18 [get_ports {start_Tx}]
set_property IOSTANDARD LVCMOS18 [get_ports {start_Tx}]

set_input_delay -clock clk 5.0 [get_ports {start_Tx}]


# ----------------------------------------------------------------------------
# Payload Length
# ----------------------------------------------------------------------------

set_property PACKAGE_PIN F22 [get_ports {payloadLength[0]}]
set_property PACKAGE_PIN G22 [get_ports {payloadLength[1]}]
set_property PACKAGE_PIN H22 [get_ports {payloadLength[2]}]
set_property PACKAGE_PIN F21 [get_ports {payloadLength[3]}]
set_property PACKAGE_PIN H19 [get_ports {payloadLength[4]}]
set_property PACKAGE_PIN H18 [get_ports {payloadLength[5]}]
set_property PACKAGE_PIN H17 [get_ports {payloadLength[6]}]
set_property PACKAGE_PIN M15 [get_ports {payloadLength[7]}]

set_property IOSTANDARD LVCMOS18 [get_ports {payloadLength[*]}]

set_input_delay -clock clk 5.0 [get_ports {payloadLength[*]}]


# ----------------------------------------------------------------------------
# Done Transmission
# LD0 -> done_Tx
# ----------------------------------------------------------------------------

set_property PACKAGE_PIN T22 [get_ports {done_Tx}]
set_property IOSTANDARD LVCMOS33 [get_ports {done_Tx}]

set_output_delay -clock clk 5.0 [get_ports {done_Tx}]


# ----------------------------------------------------------------------------
# Tx_real[7:0]
# ----------------------------------------------------------------------------

set_property PACKAGE_PIN Y11  [get_ports {Tx_real[0]}]
set_property PACKAGE_PIN AA11 [get_ports {Tx_real[1]}]
set_property PACKAGE_PIN Y10  [get_ports {Tx_real[2]}]
set_property PACKAGE_PIN AA9  [get_ports {Tx_real[3]}]
set_property PACKAGE_PIN AB11 [get_ports {Tx_real[4]}]
set_property PACKAGE_PIN AB10 [get_ports {Tx_real[5]}]
set_property PACKAGE_PIN AB9  [get_ports {Tx_real[6]}]
set_property PACKAGE_PIN AA8  [get_ports {Tx_real[7]}]

set_property IOSTANDARD LVCMOS33 [get_ports {Tx_real[*]}]

set_output_delay -clock clk 5.0 [get_ports {Tx_real[*]}]

# ----------------------------------------------------------------------------
# Tx_imag[7:0]
# ----------------------------------------------------------------------------

set_property PACKAGE_PIN W12 [get_ports {Tx_imag[0]}]
set_property PACKAGE_PIN W11 [get_ports {Tx_imag[1]}]
set_property PACKAGE_PIN V10 [get_ports {Tx_imag[2]}]
set_property PACKAGE_PIN W8  [get_ports {Tx_imag[3]}]
set_property PACKAGE_PIN V12 [get_ports {Tx_imag[4]}]
set_property PACKAGE_PIN W10 [get_ports {Tx_imag[5]}]
set_property PACKAGE_PIN V9  [get_ports {Tx_imag[6]}]
set_property PACKAGE_PIN V8  [get_ports {Tx_imag[7]}]

set_property IOSTANDARD LVCMOS33 [get_ports {Tx_imag[*]}]

set_output_delay -clock clk 5.0 [get_ports {Tx_imag[*]}]