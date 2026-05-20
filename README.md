# 🖥️ DDR Verification Project

## 📖 Overview
This repository demonstrates a **basic Double Data Rate (DDR) output register** implemented in Verilog, along with a SystemVerilog testbench for functional verification.  
DDR logic is a key concept in memory interfaces and high-speed digital systems, enabling data transfer on both rising and falling edges of the clock.

## 🎯 Objectives
- Implement a simple DDR output module (`ddr_simple.v`) that drives data on both clock edges.
- Provide separate inputs for rising-edge (`d_rise`) and falling-edge (`d_fall`) data.
- Include reset logic for deterministic startup.
- Develop a testbench (`ddr_tb.sv`) to simulate clock, reset, and input patterns.
- Verify DDR behavior using waveform observation (`dump.vcd`) and simulation logs (`sim.out`).

## 🛠️ Features
- **Dual-edge operation:** Launches data on both positive and negative clock edges.  
- **Reset handling:** Ensures clean initialization.  
- **Compact design:** Beginner-friendly for learning DDR concepts.  
- **Testbench:** Generates clock, applies stimulus, and monitors output transitions.  

## 📂 Repository Structure
```
├── ddr_simple.v       # RTL module
├── ddr_tb.sv          # Testbench
├── dump.vcd           # Waveform dump file
├── sim.out            # Simulation output log
├── screenshots/       # Waveform screenshots
└── README.md          # Project description
```

## 🧪 Simulation
- Clock period: 10 ns (toggle every 5 ns).  
- Stimulus applies different values to `d_rise` and `d_fall`.  
- Output `q` updates with `d_rise` on rising edges and `d_fall` on falling edges.  

Example monitor output:
```
Time=20 | clk=1 | d_rise=1 | d_fall=0 | q=1
Time=25 | clk=0 | d_rise=1 | d_fall=0 | q=0
```

## ▶️ Getting Started
### Prerequisites
- Verilog/SystemVerilog simulator (e.g., **Icarus Verilog**, **ModelSim/Questa**, or **Xilinx Vivado**)

### Run Simulation
```bash
# Compile
iverilog -o ddr_sim ddr_simple.v ddr_tb.sv

# Run
vvp ddr_sim
```

### View Waveforms
```bash
gtkwave dump.vcd
```

## 🚀 Expected Outcome
The simulation validates DDR signaling by showing correct data transitions on both clock edges.  
This project serves as a foundation for more advanced DDR controller and memory interface designs.

## 👤 Author
**Baraneeswaran S**  
Aspiring Design Verification Engineer | Passionate about Digital Systems & Memory Interfaces
```
