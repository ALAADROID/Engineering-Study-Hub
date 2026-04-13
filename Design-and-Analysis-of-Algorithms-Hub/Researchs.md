> [!CAUTION]
> **NOT DONE YET IT IS UNDER MODIFYING.**

$\color{red}{\text{READ 👆👆👆👆👆👆👆👆👆👆👆👆👆}}$

---


## 3/Mar:

<details open>
<summary><b>Close-Open</b></summary>


### Computational complexity of insertion sort:
  - 

</details>

## 10/Mar:

<summary><b>Close-Open</b></summary>


### Information theory:
  - $$H = -\sum_{x} p(x) \log_2 p(x)$$

  | Formula Visualization |
  | :---: |
  | <img src="https://github.com/user-attachments/assets/c4cff82c-49c3-43d4-91d9-e7a88ee308e8" width="300"> |
  
  - EXAMPLE:
      - 'bout (ترميز مورس) 2<sup>5</sup>=32 covers that 28 letter.

</details>

## 17/Mar:

## 24/Mar:

## 31/Mar:

<details open>
<summary><b>Close-Open</b></summary>


### 1. Strassen’s Paper (1969)
  - The problem was the **martrix multiplication.**

Normal way:
  - O(n<sup>3</sup>)

Strassen idea:
  - Resduce number of multiplication from 8 → 7 (in 2×2 blocks)
  
Result:
  - O(n<sup>2.81</sup>)

> Do fewer multiplication → faster algorithm.

---

### 2. AlphaGo
  - AI that plays Go  
  - Uses:
      - **search trees.**
      - **probability.**
      - **neural networks.**  
> smarter algorithms reduce compexity.

---

### 3. “rules angles” → probably Big-O rules
  - The rules we studied.  
  - Rule 1: Drop constants
      - 5n → O(n)
  - Rule 2: Keep highest term
      - n<sup>2</sup>+n → O(n<sup>2</sup>)
  - Rule 3: Sequential
      - O(n)+O(n) → O(n)
  - Rule 4: Nested
      - n x n → O(n<sup>2</sup>)

---

### 4. Busy Beaver Number
  - Busy Beaver function
      - Given a machine with **n states**
      - What is the **maximum steps it can run before stopping?**  

#### Why important?
  - Grows EXTREMELY fast
  - Faster than:
      - 2<sup>n</sup>
      - n!
      - anything computable
> It is **uncomputable**
> No algorithm can calculate it for large n

### Summary:
  - Strassen → reduce multiplications → faster than n<sup>3</sup>.  
  - AlphaGo → smart algorithms beat brute force.  
  - Big-O rules → ignore constants, keep highest growth.  
  - Busy Beaver → limits of computation (super huge growth).  


</details>
