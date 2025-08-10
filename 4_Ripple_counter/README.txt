# 4-bit Ripple Counter in Verilog

## 📜 Description
This project implements a 4-bit asynchronous ripple counter using Verilog. The design is built hierarchically: a D flip-flop is used to create a T flip-flop, and four T flip-flops are connected in series to form the 4-bit counter. The counter increments its value on clock pulses and rolls over after reaching its maximum value (`1111`). An asynchronous clear (`CLEAR`) input resets the counter to `0000` at any time.

## 📁 Files Included
- `d_flipflop.v` – Verilog module for a D flip-flop.
- `t_flipflop.v` – T flip-flop module implemented using the D flip-flop.
- `ripple_counter4.v` – 4-bit ripple counter module connecting four T flip-flops in series.
- `ripple_stimuli_tb.v` – Testbench to simulate and verify the 4-bit ripple counter.
- `README.md` – Project documentation.

## ⚙️ How It Works
- **Inputs**:
  - `clock` – Main clock input.
  - `clear` – Asynchronous reset signal (active low in this design).
- **Outputs**:
  - `Q[3:0]` – 4-bit binary counter output.
- The output of each T flip-flop acts as the clock input for the next stage, creating the ripple effect.
- When `clear` is active, all flip-flops reset to `0`.

## 🧪 Simulation
To simulate:
1. Open the project files in Vivado, ModelSim, or any Verilog simulator.
2. Compile all source files: `d_flipflop.v`, `t_flipflop.v`, `ripple_counter4.v`, and `ripple_stimuli_tb.v`.
3. Set `ripple_stimuli_tb.v` as the top module for simulation.
4. Run the simulation and observe the counter output in the waveform viewer or console.


## 🧠 Concepts Demonstrated
- Hierarchical digital design in Verilog
- Flip-flop design and usage
- Asynchronous counters (ripple counters)
- Testbench creation and simulation techniques

## 📌 Notes
- This is an asynchronous counter, so outputs change at slightly different times due to clock ripple through the stages.
- Ideal for learning sequential circuit design before moving to synchronous counters.

