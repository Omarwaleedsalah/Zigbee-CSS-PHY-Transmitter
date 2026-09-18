# IEEE 802.15.4 CSS PHY Transmitter

Digital IC Design project implementing an IEEE 802.15.4 CSS PHY Transmitter using Verilog HDL, verified through QuestaSim and MATLAB, and targeted for Xilinx FPGA implementation.

## Overview
- **Standard**: IEEE 802.15.4 Chirp Spread Spectrum (CSS) Physical Layer (250 kbps mode)
- **Key Modules**: Zero-Padding, I/Q Demux, Walsh-Hadamard Symbol Mapper, Interleaver, PPDU Framer, QPSK/DQPSK Encoder, and CSK Modulator.
- **Verification**: Self-checking testbench comparing RTL output against MATLAB fixed-point reference model.
