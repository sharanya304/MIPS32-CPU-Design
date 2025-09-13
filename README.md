# 32-bit RISC CPU Design (MIPS Subset)
A 32-bit CPU design based on the MIPS subset architecture

**Overview**
This project implements a 32-bit RISC CPU in Verilog HDL, based on a simplified subset of the MIPS instruction set architecture (ISA). The goal is to design the CPU from the ground up, starting with fundamental building blocks (ALU, Decoder, Register File, Control Unit), and progressively integrate them into a fully functional single-cycle processor.

This project serves as both an academic exploration of computer architecture and a hands-on exercise in VLSI/HDL design methodology.

**Features**

**Architecture**: 32-bit RISC, MIPS subset

**Instruction Types Supported:**

- R-type: add, sub, and, or, xor, slt
- I-type: addi, andi, ori, lw, sw, beq, bne
- J-type: j (jump)

**Modules:**

- ALU: Arithmetic & logical operations, with flag outputs (Zero, Negative, Overflow, Carry).
- Decoder: Converts opcode/function fields into control signals.
-Register File: 32 general-purpose registers (32-bit each), with 2 read ports and 1 write port.
-Control Unit: FSM-based, manages instruction flow and signal generation.
-Memory: Instruction and data memory modules.
-Datapath Integration: Combines all modules into a single-cycle CPU.
