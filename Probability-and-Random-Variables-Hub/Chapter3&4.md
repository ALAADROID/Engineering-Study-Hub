# Chapter 3 — Numerical Descriptive Measures 
[📁The files:
[chapter3.pdf](https://github.com/user-attachments/files/24838283/chapter3.pdf),
[chapter4.pdf](https://github.com/user-attachments/files/24839454/chapter4.pdf)]

---

# Chapter 3 — Numerical Descriptive Measures (Final Review) 

## 1. Measures of Central Tendency

### Mean (Arithmetic Mean)
Definition:
The average of all values.

Formula:
Mean = (sum of all values) / (number of values)

Example:
Data: 2, 4, 6, 8  
Sum = 2 + 4 + 6 + 8 = 20  
Number of values = 4  

Mean = 20 / 4 = 5

Notes (Exam):
- Affected by outliers
- Avoid when extreme values exist

---

### Median
Definition:
The middle value after ordering the data.

Rules:
- Data MUST be ordered
- Odd number of values → middle value
- Even number of values → average of the two middle values

Example (Odd):
Data: 3, 5, 7  
Median = 5

Example (Even):
Data: 2, 4, 6, 8  
Middle values = 4 and 6  

Median = (4 + 6) / 2 = 5

Notes:
- Not affected by outliers
- Preferred for skewed data

---

### Mode
Definition:
The value that occurs most frequently.

Example:
Data: 1, 2, 2, 3  
Mode = 2

Notes:
- Can have more than one mode
- Can have no mode

---

## 2. Measures of Dispersion (Spread)

### Range
Definition:
Difference between the maximum and minimum values.

Formula:
Range = Maximum value − Minimum value

Example:
Data: 4, 7, 10  
Range = 10 − 4 = 6

Notes:
- Very sensitive to outliers
- Weak measure of spread

---

### Variance (Sample)
Definition:
Average of squared deviations from the mean.

Steps:
1. Find the mean
2. Subtract the mean from each value
3. Square each result
4. Add them
5. Divide by (n − 1)

Example:
Data: 2, 4, 6  

Mean = (2 + 4 + 6) / 3 = 4  

Deviations:
2 − 4 = −2 → square = 4  
4 − 4 = 0 → square = 0  
6 − 4 = 2 → square = 4  

Sum of squares = 8  
n = 3  

Variance = 8 / (3 − 1) = 4

---

### Standard Deviation
Definition:
Square root of variance.

Formula:
Standard deviation = square root of variance

Example:
Variance = 4  

Standard deviation = 2

IMPORTANT (Final):
- Used directly in Normal Distribution (Chapter 6)

---

## 3. Z-Score (Very Important)
Definition:
Shows how many standard deviations a value is from the mean.

Formula:
Z = (value − mean) / standard deviation

Example:
Mean = 50  
Standard deviation = 10  
Value = 70  

Z = (70 − 50) / 10 = 2

Meaning:
The value is 2 standard deviations above the mean.

---

## 4. Shape of Distribution
- Symmetric: Mean = Median
- Right-skewed: Mean > Median
- Left-skewed: Mean < Median

---

## 5. Empirical Rule (Normal Data Only)
- 68% within 1 standard deviation
- 95% within 2 standard deviations
- 99.7% within 3 standard deviations

> These four definitions are enough for Chapter 1.

---

# Chapter 4 – Bayes’ Theorem 

## 1. Basic Probability (Very Quick Reminder)
- Probability of an event A:
  
  P(A) = Number of favorable outcomes / Total outcomes

- 0 ≤ P(A) ≤ 1
- P(A) = 1 → event is certain
- P(A) = 0 → event is impossible

---

## 2. Conditional Probability (IMPORTANT)
**Definition:**  
Probability that event A occurs **given that** event B has already occurred.

**Formula:**
P(A | B) = P(A ∩ B) / P(B)

Meaning:  
We reduce the sample space to only cases where **B happened**.

---

## 3. Bayes’ Theorem (MAIN EXAM TOPIC)

### What is Bayes’ Theorem?
- Used to **revise probabilities** after getting **new information**
- Extension of conditional probability
- Uses:
  - Prior probability
  - New evidence
  - Revised (posterior) probability

---

## 4. Bayes’ Theorem Formula (2-Event Case)

If A and B are events:

P(A | B) = [ P(B | A) × P(A) ] / P(B)

Where:
- P(A) = Prior probability
- P(B | A) = Conditional probability
- P(B) = Total probability of B

---

## 5. Bayes’ Theorem (Multiple Events – *Main*)

If B₁, B₂, ..., Bₖ are:
- Mutually exclusive
- Collectively exhaustive

Then:

P(Bᵢ | A) = [ P(A | Bᵢ) × P(Bᵢ) ] /
            [ P(A | B₁)P(B₁) + P(A | B₂)P(B₂) + ... + P(A | Bₖ)P(Bₖ) ]

---

## 6. Full Exam-Style Example (FROM THE PDF)

### Given:
- S = Successful well  
- U = Unsuccessful well  

**Prior probabilities:**
P(S) = 0.4  
P(U) = 0.6  

**Conditional probabilities:**
P(D | S) = 0.6  
P(D | U) = 0.2  

Where D = Detailed test scheduled

---

### Step 1: Find Joint Probabilities
P(S ∩ D) = P(S) × P(D | S) = 0.4 × 0.6 = 0.24  
P(U ∩ D) = P(U) × P(D | U) = 0.6 × 0.2 = 0.12  

---

### Step 2: Total Probability of D
P(D) = 0.24 + 0.12 = 0.36  

#### Or use:
P(D)=P(D∣S)P(S)+P(D∣U)P(U)

---

### Step 3: Revised Probability (Bayes)
P(S | D) = 0.24 / 0.36 = 0.667  

---

### Final Interpretation:
- Original probability of success = 0.4  
- After new information (detailed test):
  
  **Revised probability = 0.667**

---

## 7. Table Method (VERY IMPORTANT – EXAM FAVORITE)

| Event | Prior P. | Conditional P. | Joint P. | Revised P. (Target) |
|-------|----------|----------------|----------|---------------------|
| Success (S)  |  P(S)=0.4  |  P(D∣S)=0.6  |  P(D∩S)=0.24  |  P(S∣D)=0.667  |
| Unsuccessful (U)  |  P(U)=0.6  |  P(D∣U)=0.2  |  P(D∩U)=0.12  |  P(U∣D)=0.333  |
| **Sum**  | 1.0 |  |  **0.36**  |  1.000  |

---

## 8. Keywords That Mean "Use Bayes" in Exam
- Prior probability
- Revised probability
- Given that
- New information
- Conditional probability

---

## How to Know Which Bayes’ Formula to Use (Exam Tip)

### 1. Formula Choice (Syntax)
- **Use the 2-Event Bayes Formula**  
  When there are **only two possibilities**  
  (e.g. Success vs Failure, Sick vs Healthy).

- **Use the Multiple-Event Bayes Formula**  
  When there are **three or more possibilities**  
  (e.g. Machine A, Machine B, Machine C).

---

### 2. Question Syntax (Clues in the Wording)
- Look for the phrase **“Given that …”**
- The **Prior Probability** is what you believe *before* new information  
  Example: `P(S)` (probability of success before the test)

- The **Condition** is the new information or test result  
  Example: `D` (Detailed test result)

- The **Goal** is always to **flip the probability**:
  
  Find:
  ```
  P(S | D)
  ```
---
### The **"Given"** Rule (Syntax)
The key to identifying the symbols is the word "Given."
In probability notation P(A|B), the vertical line $|$ literally means "given." 
The Known Information: Whatever follows the word "given" is what we already know. This goes on the right side of the line.
The Target (Unknown): Whatever the question asks "what is the probability of..." is what we are looking for. This goes on the left side of the line.

---

### Conditional Probability vs. Bayes' Theorem

| Feature | Conditional Probability | Bayes' Theorem |
| :--- | :--- | :--- |
| **Logic** | **Forward:** You know the cause; you want to know the effect. | **Backward:** You saw the effect (result); you want to know the cause. |
| **Question Style** | "Given the well is **Success**, what is the chance of a **Test**?" | "Given a **Test** happened, what is the chance it's a **Success**?" |
| **Data Action** | You use simple, direct numbers from a table or data set. | You **revise** an old probability (0.4) into a new one (0.667). |
| **Goal** | Finding $P(B \vert A)$ directly. | **Flipping** the information to find $P(A \vert B)$. |
---
 
