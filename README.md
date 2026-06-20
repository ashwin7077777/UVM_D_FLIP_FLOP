# 🧠 UVM Verification Projects: D Flip-Flop & Ripple Carry Adder

## 📌 Overview

This repository contains **complete SystemVerilog UVM verification environments** for two fundamental digital designs:

1. **D Flip-Flop (Sequential Design)**
2. **4-bit Ripple Carry Adder (Combinational Design)**

Both projects demonstrate a full industry-style UVM testbench including:
- UVM Phases
- TLM Communication
- Agent-based Architecture
- Scoreboarding (Self-checking TB)
- Assertions (SVA)
- Functional Coverage
- Constrained Random Verification

---

# 🔷 1. D FLIP-FLOP (UVM PROJECT)

## 🎯 Objective

To verify the behavior of a **D Flip-Flop**, ensuring correct sequential operation using UVM methodology.

---

## ⚙️ DUT Behavior

- On rising edge of clock → `q = d`
- On active-low reset → `q = 0`

---

## 🏗️ UVM Architecture
