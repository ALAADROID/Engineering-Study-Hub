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

# Chapter 4 – Conditional Probability & Bayes’ Theorem

---

## 1. Basic Probability (Quick Reminder)
- Probability of event A:
  
  P(A) = (Number of favorable outcomes) / (Total outcomes)

- 0 ≤ P(A) ≤ 1
- P(A) = 1 → certain
- P(A) = 0 → impossible

---

## 2. Conditional Probability ⭐

### Definition
Probability that event **A** occurs **given that** event **B** has occurred.

### Formula (Division Rule)
P(A | B) = P(A ∩ B) / P(B)

### Meaning
- We **restrict the sample space** to cases where **B happened**
- Used when the **cause is known** and we want the **effect**

### Multiplication Rule (Same Concept)
P(A ∩ B) = P(A | B)P(B)

> This is **still conditional probability**, not Bayes.

---

## 3. Independence (Related but Simple)
Two events A and B are **independent** if:

P(A | B) = P(A)

Meaning:
- Knowing B **does not affect** A

---

## 4. Total Probability (IMPORTANT)
Used when:
- The question asks for an **overall / random / total probability**
- There are **multiple cases**

### Formula
If B₁, B₂, ..., Bₖ form all possibilities:

P(A) = P(A|B₁)P(B₁) + P(A|B₂)P(B₂) + ... + P(A|Bₖ)P(Bₖ)

📌 Keywords:
- randomly
- overall
- considering all
- total probability

---

## 5. Bayes’ Theorem ⭐⭐⭐ (MAIN EXAM TOPIC)

### What is Bayes’ Theorem?
- Used to **revise probabilities** after **new information**
- You **flip** conditional probabilities

### Logic
- Result is known
- Cause is unknown
- You update a **prior probability**

---

## 6. Bayes’ Formula (2 Events)

P(A | B) = [ P(B | A) × P(A) ] / P(B)

Where:
- P(A) → Prior probability
- P(B | A) → Likelihood
- P(B) → Total probability (from all cases)

---

## 7. Bayes’ Formula (Multiple Events – Exam Favorite)

If B₁, B₂, ..., Bₖ are:
- Mutually exclusive
- Collectively exhaustive

Then:

P(Bᵢ | A) =
[ P(A | Bᵢ)P(Bᵢ) ] /
[ P(A|B₁)P(B₁) + P(A|B₂)P(B₂) + ... + P(A|Bₖ)P(Bₖ) ]

---

## 8. Full Exam-Style Example (From Slides)

### Given
- S = Successful well
- U = Unsuccessful well
- D = Detailed test

**Prior probabilities**
P(S) = 0.4  
P(U) = 0.6  

**Conditional probabilities**
P(D|S) = 0.6  
P(D|U) = 0.2  

---

### Step 1: Joint Probabilities
P(S ∩ D) = 0.4 × 0.6 = 0.24  
P(U ∩ D) = 0.6 × 0.2 = 0.12  

---

### Step 2: Total Probability of D
P(D) = 0.24 + 0.12 = 0.36  

---

### Step 3: Revised Probability (Bayes)
P(S | D) = 0.24 / 0.36 = 0.667  

---

## 9. Table Method ⭐ (VERY IMPORTANT)

| Event | Prior | Conditional | Joint | Revised |
|------|-------|-------------|-------|---------|
| S | 0.4 | 0.6 | 0.24 | 0.667 |
| U | 0.6 | 0.2 | 0.12 | 0.333 |
| **Total** | 1.0 | | **0.36** | 1.0 |

---

## 10. How to Identify the Question Type (EXAM GOLD)

### Conditional Probability
- Cause known
- Forward logic
- Find P(B|A)

### Bayes’ Theorem
- Result known
- Backward logic
- Find P(A|B)

### Total Probability
- Overall / randomly / all cases
- Find P(A)

---

## 11. The “GIVEN” Rule (Syntax Trick)
In P(A | B):
- Right side (B): **what is given / known**
- Left side (A): **what is asked**

---

## 12. Conditional vs Bayes (Fast Comparison)

| Feature | Conditional | Bayes |
|-------|------------|-------|
| Logic | Cause → Effect | Effect → Cause |
| Known | Cause | Result |
| Goal | P(B|A) | P(A|B) |
| Uses prior? | ❌ | ✅ |

---
