# 16-Bit Booth Multiplier

A Verilog implementation of a Booth multiplier developed as part of the 19ECE343 - FPGA course at Amrita School of Engineering, Coimbatore.

## Project Details

- Input: Two 8-bit signed numbers
- Output: 16-bit signed product
- Language: Verilog HDL
- Algorithm: Booth Multiplication

## Implementation

The design uses Booth's algorithm for signed binary multiplication. The multiplier bits are checked in pairs to decide whether the multiplicand should be added, subtracted, or no operation should be performed. An arithmetic right shift is then performed after each step.

The project is divided into the following modules:

- `boothmul` - Main multiplier module
- `booth_substep` - Performs one step of the Booth multiplication
- `Adder` - 8-bit adder
- `subtractor` - 8-bit subtractor
- `lib.v` - Contains the logic gates and full adder modules used by the design

Eight `booth_substep` stages are used to process the 8-bit multiplier.

## Example

One of the examples used in the project:

**3 × 17 = 51**

```text
Multiplicand : 3
Multiplier   : 17
Product      : 51
```

## Files

```text
16-bit-Booth-Multiplier/
│
├── src/
│   ├── booth_multiplier.v
│   ├── adder_subtractor.v
│   └── lib.v
│
├── testbench/
│   └── tb.v
│
└── docs/
    └── block-diagram.png
```

## Tools

- Verilog HDL
- FPGA
- Digital Logic Design
- Testbench / Simulation
