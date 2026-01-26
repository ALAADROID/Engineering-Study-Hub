# Chapter 5 – Discrete Random Variables

---

## 1. Random Variables

### Definition
A **random variable** represents a **numerical value** resulting from a random experiment.

---

### Types of Random Variables
- **Discrete Random Variable** ⭐ (THIS CHAPTER)
  - Comes from **counting**
  - Takes **countable values**
  - Examples:
    - Number of heads in coin tosses
    - Number of defective items
    - Number of classes taken

- **Continuous Random Variable**
  - Comes from **measurement**
  - Covered in **Chapter 6** (Normal Distribution)

---

## 2. Discrete Random Variables & Outcomes ⭐

### Definition
A **discrete random variable** can take **only specific values**, not ranges.

### Example
Toss 2 coins  
Let **X = number of heads**

Possible outcomes:

| Outcome | X |
|------|---|
| TT | 0 |
| HT | 1 |
| TH | 1 |
| HH | 2 |

So:
X ∈ {0, 1, 2}

---

## 3. Probability Distribution (Discrete)

### Definition
A **probability distribution** lists:
- All possible values of X
- The probability of each value

### Properties
- P(X) ≥ 0
- ΣP(X) = 1

### Example

| X | P(X) |
|---|------|
| 0 | 0.25 |
| 1 | 0.50 |
| 2 | 0.25 |

---

## 4. Expected Value (E(X)) ⭐⭐⭐

### Meaning
- The **long-run average**
- The **center** of the distribution
- A **weighted mean**

---

### Formula
E(X) = Σ [ X · P(X) ]

---

### Example
Using the coin example:

E(X) = (0)(0.25) + (1)(0.50) + (2)(0.25)  
E(X) = 1.0

📌 Interpretation:  
On average, you expect **1 head** per 2 tosses.

---

## 5. Variance & Standard Deviation (Quick Reminder)

### Variance Formula
Var(X) = σ² = Σ [ (X − E(X))² · P(X) ]

### Standard Deviation
σ = √Var(X)

📌 Measures **spread**, not center.

---

## 6. Covariance ⭐⭐ (IMPORTANT)

### What is Covariance?
- Measures **direction of linear relationship**
  between two discrete random variables **X and Y**

---

### Interpretation
- Cov(X,Y) > 0 → move **together**
- Cov(X,Y) < 0 → move **opposite**
- Cov(X,Y) = 0 → no linear relationship

---

### Covariance Formula
Cov(X,Y) = Σ [ (Xi − E(X))(Yi − E(Y)) · P(Xi, Yi) ]

Where:
- Xi , Yi → paired outcomes
- P(Xi, Yi) → joint probability

---

## 7. Exam Notes (IMPORTANT)

- **Discrete Random Variables** → counting outcomes
- **Expected Value** → weighted average
- **Covariance** → relationship direction, NOT strength
- Do NOT confuse covariance with correlation
- Sign (+ / −) matters more than the value

---

## 8. What to Ignore for Your Final ❌
- Binomial distribution
- Poisson distribution
- Hypergeometric distribution
- Excel / tables
- Portfolio formulas

---

## 9. What WILL Be Asked ✅
- Identify discrete random variables
- Build probability distribution tables
- Compute E(X)
- Interpret covariance sign
