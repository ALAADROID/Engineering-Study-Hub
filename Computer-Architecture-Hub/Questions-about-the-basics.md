# Instruction Set Architecture (ISA) and Instruction Encoding in CC-3:

## 📝 Mini Practice

### 1️⃣ Fill in:

- Number of registers = ______ 
<details>
  <summary>Show Answer</summary>
👉 8 registers (R0–R7)
  </details>
  
- Bits for register index = ______

<details>
  <summary>Show Answer</summary>
👉 3 bits, Because of 2³ = 8 registers
  </details>
  
- Immediate value range = ______

<details>
  <summary>Show Answer</summary>
👉 Max positive: 01111 = +15, Min negative: 10000 = -16, So range: [-16 , +15]
  </details>
  
- If instruction set = 10 instructions → opcode bits = ______

<details>
  <summary>Show Answer</summary>
👉 4 bits, 2³ = 8 (not enough), 2⁴ = 16 (enough)
  </details>
  
### 2️⃣ Short Questions

- Why is register file faster than memory?

<details>
  <summary>Show Answer</summary>
👉 Because it is inside the CPU, no memory bus access needed.
  </details>
  
- Why don’t we use 4 bits for register index?

<details>
  <summary>Show Answer</summary>
👉 Because:
3 bits → 8 registers (exactly what we have), 4 bits → 16 registers (waste 8 combinations)
  </details>
  
- Why can’t 256 be represented in immediate field?

<details>
  <summary>Show Answer</summary>
👉 Because 256 needs 8 bits: 256 = 100000000₂, But immediate field is only 5 bits.
</details>
