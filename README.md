# 🧠 UVM Verification Project: D Flip-Flop

## 📌 Overview

This repository contains a complete SystemVerilog UVM verification environment for a **D Flip-Flop (Sequential Design)**.

The project demonstrates a full industry-style UVM testbench including:

- UVM Phases (build, connect, run)
- TLM Communication (seq_item_port, analysis_port)
- Agent-based architecture
- Scoreboarding (self-checking testbench)
- Assertions (SVA)
- Functional Coverage
- Constrained random verification

---

# 🔷 D FLIP-FLOP (UVM VERIFICATION)

## 🎯 Objective

Verify the correct sequential behavior of a D Flip-Flop using UVM methodology.

---

## ⚙️ DUT Behavior

- On rising edge of clock → q = d  
- On active-low reset → q = 0  

---

## 🏗️ UVM Architecture

Test
└── Env
    └── Agent
        ├── Sequencer
        ├── Driver
        └── Monitor
    └── Scoreboard

---

## 🔄 TLM Flow

Sequence → Sequencer → Driver → DUT → Monitor → Scoreboard

---

## 📦 Verification Components

Sequence → Generates random input d  
Driver → Drives d to DUT via virtual interface  
Monitor → Captures output q from DUT  
Scoreboard → Checks correctness (q = previous d value)

---

## 📊 Assertions (SVA)

- Reset Check: q = 0 when rst_n = 0  
- Data Transfer Check: q == $past(d)

---

## 📈 Functional Coverage

- Cover d = 0 and d = 1  
- Track output transitions of q  
- Cross coverage of d and q behavior  

---

## 🔥 UVM Phases Used

- build_phase → create components  
- connect_phase → TLM wiring  
- run_phase → stimulus execution  

---

## 🔌 TLM CONNECTIONS

- Driver → Sequencer (seq_item_port)  
- Monitor → Scoreboard (analysis_port)

---

## 🔁 FULL UVM FLOW

Sequence → Sequencer → Driver → DUT → Monitor → Scoreboard → Coverage

---

## 🚀 LEARNING OUTCOME

After completing this project, you will understand:

✔ UVM testbench architecture  
✔ TLM communication mechanisms  
✔ Scoreboard-based verification  
✔ Assertion-based checking (SVA)  
✔ Functional coverage basics  
✔ Sequential design verification flow  
✔ Complete UVM execution flow  

---

## ⭐ FUTURE EXTENSIONS

- FIFO UVM Verification (interview essential)  
- UART UVM testbench  
- APB / AXI-lite verification  
- UVM Register Layer (RAL) introduction  
