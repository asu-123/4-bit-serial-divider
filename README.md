# 4-bit-serial-divider
A 4-bit serial divider implemented in Verilog HDL using structural modeling. This project was developed and tested using Xilinx Vivado.

📌 Overview
This project implements a serial division algorithm using:
Full adders
Registers
Multiplexers
Control logic
The divider performs division sequentially over multiple clock cycles instead of using a fully combinational divider, reducing hardware usage.

⚙️ Features
4-bit dividend (a)
4-bit divisor (b)
4-bit quotient output (p)
Serial operation (clock-driven)
Reset and start control

🧠 Design Description
The serial divider works as follows:
Loads input values when start is asserted.
Performs subtraction using a full adder (fadd).
Uses multiplexers to control data flow.
Registers store intermediate results.
Control unit (luc) manages shifting and iteration.
Produces quotient after required clock cycles.

