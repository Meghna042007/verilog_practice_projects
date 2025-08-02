# 4-to-1 Multiplexer (MUX)

This module implements a 4-to-1 multiplexer using basic logic gates (AND, OR, NOT) in Verilog.

## Files:
- `mux4_to_1.v`: Structural Verilog implementation of the 4-to-1 MUX
- `mux_stimuli.v`: Testbench to verify functionality

## How to Run (Vivado XSIM):
1. Open Vivado.
2. Create a new project and add both `.v` files.
3. Set `mux_stimuli.v` as the top module.
4. Run simulation to verify output.

## Logic Table

| S1 | S0 | Output |
|----|----|--------|
|  0 |  0 | A      |
|  0 |  1 | B      |
|  1 |  0 | C      |
|  1 |  1 | D      |
