# 32-bit CPU Design 
A 32-bit CPU design based on VEGA ET1031

**Overview**
This project implements a 32-bit CPU in Verilog HDL, based on the VEGA processor that follows the RISC-V instruction set architecture (ISA). The goal is to design the CPU from the ground up, starting with fundamental building blocks (ALU, Decoder, Register File, Control Unit), progressively integrate them into a fully functional single-cycle processor and implement it on the FPGA board.

This project serves as both an academic exploration of computer architecture and a hands-on exercise in VLSI/HDL design methodology.

**About the VEGA processor**
VEGA is an indigenous Indian microprocessor initiative by C-DAC, funded by the Ministry of Electronics and Information Technology (MeitY), aimed at developing a family of microprocessors and complete ecosystem for strategic, industrial, and commercial applications based on the RISC-V ISA

**Features**

**Architecture**: VEGA ET1031

**Instruction Types Supported:**

- R-type: add, sub, and, or, xor, slt
- I-type: addi, andi, ori, lw, sw, beq, bne
- J-type: j (jump)

**Modules:**

- ALU: Arithmetic & logical operations, with flag outputs (Zero, Negative, Overflow, Carry).
- Decoder: Converts opcode/function fields into control signals.
- Register File: 32 general-purpose registers (32-bit each), with 2 read ports and 1 write port.
- Control Unit: FSM-based, manages instruction flow and signal generation.
- Memory: Instruction and data memory modules.
- Datapath Integration: Combines all modules into a single-cycle CPU.
