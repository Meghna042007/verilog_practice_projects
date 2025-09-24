# 4-to-16 Decoder using Two 3-to-8 Base Decoders

This repository contains a Verilog implementation of a 4-to-16 decoder constructed using two 3-to-8 base decoders. It's a basic digital design project that demonstrates hierarchical module design in Verilog and can be simulated in tools like Vivado or ModelSim.

Modules Overview:

1. Base Decoder (3-to-8)
- File: base_decoder.v`
- Description: Converts a 3-bit input to an 8-bit one-hot output when enabled.
- Inputs:
  - `a[2:0]`: 3-bit input
  - `en`: Enable signal
- Output:
  - `b[7:0]`: One-hot 8-bit output

 2. Top Decoder (4-to-16)
- File: `top_decoder.v`
- Description: Constructs a 4-to-16 decoder using two instances of the 3-to-8 base decoder.
- Inputs:
  - `in[3:0]`: 4-bit input
  - `en`: Enable signal
- Output:
  - `out[15:0]`: One-hot 16-bit output

Logic:
- `in[3]` determines whether the upper or lower 8 outputs are enabled.
- Two 3-to-8 decoders (`dec_lo` and `dec_hi`) handle the lower and upper halves of the outputs.
- The outputs are concatenated to form the final 16-bit output.

3. Testbench
- File: `top_decoder_tsb.v`
- Description: Simulates the 4-to-16 decoder, testing all possible 4-bit input combinations with the enable signal toggled.
- Uses `$monitor` to print input and output states at each simulation step.

Simulation
To simulate the design:
1. Load all Verilog files (`base_decoder.v`, `top_decoder.v`, `top_decoder_tsb.v`) into your simulator.
2. Compile the files.
3. Run the simulation.
4. Observe outputs using the console/log to verify correct one-hot decoding.

 Key Concepts Demonstrated
- Hierarchical module design
- One-hot encoding
- Enable control logic
- Testbench creation and input stimulus generation

---


