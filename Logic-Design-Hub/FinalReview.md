# Digital Logic – Final Exam Quick Review

## 1️⃣ K-Map & Flip-Flop Rules (VERY IMPORTANT)

- ✅ **K-maps use CURRENT STATE only**
  - Use: `Q(t)` and **inputs (X, Y, …)**
  - ❌ Never place `Q(t+1)` in a K-map

- ✅ If there is an **input X**, it MUST be included in the K-map variables

- ✅ Steps for FSM design:
  1. State diagram
  2. State table (Current state + Input → Next state)
  3. Use **excitation table** of FF
  4. Build **K-maps (using current states + inputs)**
  5. Get FF input equations
  6. Draw circuit

---

## 2️⃣ Flip-Flops – What to Remember

### D Flip-Flop
- **Characteristic equation**:
Q(t+1) = D
- ✔️ Easiest for analysis
- ✔️ No excitation table needed

---

### T Flip-Flop
- Toggles when T = 1
- **Characteristic equation**:
Q(t+1) = T ⊕ Q(t)
- **Excitation rule**:
- No change → T = 0
- Change → T = 1

---

### JK Flip-Flop
- Most powerful
- **Characteristic equation**:
Q(t+1) = J·Q' + K'·Q
- Must use **excitation table**
- Often requires **more K-maps**

---

## 3️⃣ Moore vs Mealy (GOLD QUESTION ⭐)

### Moore Machine
- Output depends on **STATE ONLY**
- Output written **inside the circle**
- More stable, slower response

### Mealy Machine
- Output depends on **STATE + INPUT**
- Output written **on the arrow**
- Faster, more sensitive

📌 **If output = f(state)** → Moore  
📌 **If output = f(state, input)** → Mealy

---

## 4️⃣ Counters (Exam Favorite)

- Number of flip-flops needed:
n FFs → 2^n states

- **Synchronous counter**:
- All FFs share the same clock
- Design steps:
  1. State diagram
  2. State table
  3. Excitation table
  4. K-maps
  5. Circuit

- **T FF rule for counters**:
- Bit toggles when lower bits = 1

---

## 5️⃣ Registers & Shift Registers

### Register
- Group of flip-flops
- Stores **n-bit data**
- Common clock

### Shift Register
- Moves data left/right
- Types:
- Serial-In Serial-Out (SISO)
- Serial-In Parallel-Out (SIPO)
- Parallel-In Serial-Out (PISO)
- Parallel-In Parallel-Out (PIPO)

---

## 6️⃣ RAM & ROM (Conceptual)

### RAM
- Volatile (data lost when power off)
- Types:
- **SRAM** → built using latches
- **DRAM** → uses capacitors

### ROM
- Non-volatile
- Data fixed (or programmed once)

---

## 7️⃣ What NOT to Memorize ❌
- Excitation tables (usually given)
- K-map layouts
- Gate-level transistor details

---

## 8️⃣ What YOU MUST Memorize ✅
- FSM design steps
- Moore vs Mealy difference
- Flip-flop characteristic equations
- How to read excitation tables
- How many FFs for given states

---

## 1️⃣ K-Map & Flip-Flop Rules (VERY IMPORTANT)

* ✅ **K-maps use CURRENT STATE only**

  * Use: `Q(t)` and **inputs (X, Y, …)**
  * ❌ Never place `Q(t+1)` in a K-map

* ✅ If there is an **input X**, it MUST be included in the K-map variables

* ✅ **Outputs (Y, Z, …)**:

  * Have their **own K-map**
  * ❌ Do NOT affect state equations
  * ✔ Used only in output logic and circuit

* ✅ Steps for FSM design:

  1. State diagram
  2. State table (Current state + Input → Next state)
  3. Use **excitation table** of the flip-flop
  4. Build **K-maps (current states + inputs)**
  5. Get FF input equations
  6. Draw circuit

---

## 2️⃣ Flip-Flops in Design Problems (WHEN TO USE WHAT)

* **D Flip-Flop**

  * Simplest
  * `D = Q(t+1)` (direct copy)
  * Usually **no excitation table needed**

* **T Flip-Flop**

  * Toggles when `T = 1`
  * Used a lot in **counters**
  * `T = Q ⊕ Q(t+1)`

* **JK Flip-Flop**

  * Most general
  * Needs **excitation table**
  * Often requires **more K-maps**

* **SR Flip-Flop**

  * Rarely used in design problems
  * Has **invalid state (S=R=1)**
  * Usually avoided unless explicitly asked

---

## 3️⃣ Moore vs Mealy (GOLD EXAM POINT)

* **Moore Machine**

  * Output depends on **state only**
  * Output written **inside the state circle**
  * More stable

* **Mealy Machine**

  * Output depends on **state + input**
  * Output written **on transitions**
  * Faster response

---

## 4️⃣ Encoder vs Decoder (VERY SHORT)

* **Decoder**

  * `n` inputs → `2^n` outputs
  * Activates **one output line**
  * Example: 3 inputs → 8 outputs

* **Encoder**

  * `2^n` inputs → `n` outputs
  * Converts active line into binary code

---

## 5️⃣ Memory Basics (RAM & ROM)

* **RAM (Random Access Memory)**

  * ✅ Volatile
  * ❌ Loses data when power OFF

* **ROM (Read Only Memory)**

  * ✅ Non-volatile
  * ✔ Keeps data when power OFF

---

## 6️⃣ Memory Size & Decoder Rule (IMPORTANT)

* Example: **1K × 16 memory**

  * `1K = 1024 = 2^10` words
  * Each word = **16 bits**

* Decoder size:

  * Address lines = **10** → Decoder = `2^10`

* Example question:

  * `64K × 16`
  * `64K = 2^16`
  * ✅ Decoder = **16-to-64K**

⚠️ Don’t mix:

* **Bits** = data width
* **Words** = number of locations

---

## 7️⃣ Registers & Shift Registers

* **Flip-flop** → stores **1 bit**

* **Register** → group of flip-flops (n bits)

* **Shift Register**

  * Shifts data left or right
  * Can be:

    * Serial-in / Serial-out
    * Serial-in / Parallel-out
    * Parallel-in / Parallel-out

---

## 8️⃣ Core Exam Rules to Remember

* Number of FFs = `⌈log2(number of states)⌉`
* Counters → usually **T or JK FFs**
* FSM with outputs → identify **Moore or Mealy** first
* K-map variables = **current states + inputs only**
* Output equations are **separate**
