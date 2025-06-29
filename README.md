# Verilog-ALU-Design

## Project Overview
This repository contains my implementation of a 4-bit ALU in Verilog, created as the final project for Logic Circuits course. The ALU performs basic arithmetic and logical operations as specified in the project requirements.

## Key Features
- **Modular Design**:
  - 1-bit full adder
  - 4-to-1 multiplexer
  - Combinational logic gates
- **Supported Operations**:
  - AND, OR, XOR
  - Addition/Subtraction
  - Increment/Decrement
  - Data transfer
- **Multi-phase Implementation**:
  - Phase 1: Gate-level and behavioral design
  - Phase 2: Structural ALU module
  - Phase 3: 4-bit extension with overflow detection

## Technical Specifications
```verilog
module ALU (A, B, Cin, S, f, Cout);
input A, B, Cin;
input [3:0] S;  // Control lines
output f, Cout; // Result and carry out
```

## Academic Context
This project represents my first major Verilog implementation during undergraduate studies, demonstrating:
- HDL design methodologies
- Digital logic principles
- Modular circuit design
- Arithmetic unit implementation

## How to Use
1. Clone repository
2. Simulate with Verilog tools (Icarus, ModelSim)
3. Test different control inputs:
```verilog
$monitor("S=%b A=%b B=%b → f=%b Cout=%b", S, A, B, f, Cout);
```
