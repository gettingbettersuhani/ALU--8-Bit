# ALU--8-Bit

8-Bit ALU (Arithmetic Logic Unit) – Verilog HDL
📌 Project Overview

This project implements an 8-bit Arithmetic Logic Unit (ALU) using Verilog HDL.

The ALU performs a variety of arithmetic and logical operations based on a control signal (sel). It is a fundamental building block in digital systems such as CPUs and processors.

⚙️ Features
Supports 8-bit input operands (A, B)

Performs multiple arithmetic and logical operations

Generates status flags:

Carry

Zero

Fully combinational design

Verified through simulation


🧠 Operations Supported
Select (sel)	Operation

000	Addition (A + B)

001	Subtraction (A - B)

010	AND

011	OR

100	XOR

101	NOT (A)

110	Left Shift (A << 1)

111	Right Shift (A >> 1)


🧠 Design Approach
Implemented using a case statement based on sel input

All operations are computed in a single combinational block

Output includes:

result → Operation result

carry → Carry/borrow flag

zero → Indicates if result is zero


💡 Technical Insight
ALU design requires careful handling of carry/borrow in arithmetic operations

Logical operations are bitwise, while shifts affect data positioning

Status flags like zero and carry are critical for processor decision-making


🧪 Verification
Developed a testbench to verify all operations

Tested different input combinations and edge cases

Verified correct outputs using waveform simulation in Vivado


🛠 Tools Used
Verilog HDL

Xilinx Vivado (Simulation & Synthesis)



🎯 Learning Outcomes
Strong understanding of ALU architecture and operations

Hands-on experience with combinational circuit design

Improved knowledge of status flags and bitwise operations

Practical exposure to RTL design and verification


🚀 Future Improvements
Add more operations (multiplication, division)

Extend to 16-bit / 32-bit ALU

Pipeline the design for performance

FPGA hardware implementation
