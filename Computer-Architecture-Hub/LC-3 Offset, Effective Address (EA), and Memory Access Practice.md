## LC-3 Architecture: LDI & LD Quick Review

🧠 Part 1 — Easy (Warm-up)Instruction at x3000: LDI R0, #6<details><summary>Show Answer</summary>👉 What is EA? The Effective Address is the final address where the actual data (operand) is located. In LDI, it is the value stored at the address calculated by the offset.$EA = M[PC + offset] = M[x3001 + 6] = M[x3007]$.👉 Which memory location is accessed first? x3007 (to get the pointer/address).👉 Which location is accessed second? The address found inside x3007 (this is the actual EA).</details>

🧠 Part 2 — From your codeWhy exactly is the offset #8 and not #9?<details><summary>Show Answer</summary>👉 Because the offset is calculated from the incremented PC ($x3001$).$x3009 - x3001 = 8$.</details>

🧠 Part 3 — LD vs LDIMemory: M[x3005] = x4000, M[x4000] = 25<details><summary>Show Answer</summary>👉 LD R0, #4 R0 = x4000 (Directly loads the value at $x3001 + 4$).👉 LDI R0, #4 R0 = 25 (Indirectly loads: looks at $x3005$, finds $x4000$, then loads the value 25 from there).</details>

🧠 Part 4 — Trick (Important)Instruction: LDI R0, #5 | Memory: M[x3006] = 20<details><summary>Show Answer</summary>👉 What happens? The LC-3 tries to treat the value 20 as a memory address and attempts to load data from x0014 (Hex for 20).👉 Is result correct or wrong? WHY? Wrong. The programmer likely intended to load the value 20 into the register, but used LDI (Load Indirect) instead of LD (Load) or LEA. LDI treats the first piece of data it finds as a pointer, not the final value.</details>

🧠 Part 5 — Offset ThinkingInstruction at x3000, you want to reach x300A<details><summary>Show Answer</summary>👉 What offset do you write? #9 (Since $PC$ is already at $x3001$, $x300A - x3001 = 9$).</details>

🧠 Part 6 — Hard (Exam Level).orig x3000 | LD R0, #3 ... .FILL x4000<details><summary>Show Answer</summary>👉 Will R0 contain x4000 or the value inside x4000? x4000.👉 Explain in ONE sentence. The LD instruction performs a direct load, pulling the raw bits stored at the target address ($x3001 + 3 = x3004$) directly into the register without following them as a pointer.</details>
