# IEEE 802.15.4 CSS PHY Transmitter

Digital IC Design project implemented in Verilog HDL and verified via QuestaSim and MATLAB, targeting Xilinx FPGA.

## Overview
- **Standard**: IEEE 802.15.4 Chirp Spread Spectrum (CSS) Physical Layer (250 kbps mode)
- **Key Modules**: Zero-Padding, I/Q Demux, Walsh-Hadamard Symbol Mapper, Interleaver, PPDU Framer, QPSK/DQPSK Encoder, and CSK Modulator.
- **Verification**: Self-checking testbench comparing RTL output against MATLAB fixed-point reference model.
