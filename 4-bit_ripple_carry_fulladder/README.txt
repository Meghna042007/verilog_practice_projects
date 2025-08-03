# 4-bit Ripple Carry Adder in Verilog

This project implements a 4-bit ripple carry adder using Verilog. It consists of a 1-bit full adder module (`full_adder.v`) which is instantiated four times in the top-level module (`full_adder4.v`). The design is tested using a testbench (`adder_stimuli4.v`).

## 📁 Files Included
- `full_adder.v` – Verilog module for a 1-bit full adder.
- `full_adder4.v` – 4-bit ripple carry adder, created by chaining four 1-bit adders.
- `adder_stimuli4.v` – Testbench with various input stimuli to verify the 4-bit adder.
- `README.md` – Project documentation.

## ⚙️ How It Works
- **Inputs**: 
  - `a[3:0]` – First 4-bit binary input
  - `b[3:0]` – Second 4-bit binary input
  - `cin` – Single-bit carry-in
- **Outputs**: 
  - `sum[3:0]` – 4-bit sum output
  - `cout` – Single-bit carry-out
- The top module connects four 1-bit full adders in series.
- Carry propagates (ripples) from the LSB to the MSB.

## 🧪 Simulation
To simulate:
1. Open the files in any Verilog simulator (Vivado, ModelSim, EDA Playground, etc.).
2. Compile all three: `full_adder.v`, `full_adder4.v`, and `adder_stimuli4.v`.
3. Run the simulation using the testbench.


## 🧠 Concepts Demonstrated
- Bitwise addition using full adders
- Carry propagation in ripple carry design
- Structural Verilog and hierarchical design
- Simulation using a testbench

## 📌 Notes
- `cin` and all carries are binary (1-bit) values.
- The ripple carry adder is simple and easy to understand but not the fastest due to propagation delay through each stage.
- This project is a foundational example useful for building more complex arithmetic logic units (ALUs).

---

Feel free to fork, reuse, or build upon this design. Contributions and suggestions are welcome!

