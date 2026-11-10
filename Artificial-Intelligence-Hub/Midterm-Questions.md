# Artificial Intelligence — Solved Mock Midterm (Weeks 1–6)

**Course:** CENG307 — Artificial Intelligence  
**Duration:** 60 minutes  
**Total:** 100 marks  
**Format:** Conceptual + Reasoning + Applied Calculations  
**Instructions:** Closed book. Show calculation steps where applicable.

---

# Question 1 — AI Fundamentals and Search Algorithms (15 Marks)

## Part A — Multiple Choice (5 Marks)

**1. Which statement correctly describes the relationship between AI, ML, and DL?**

A. AI is part of ML, and ML is part of DL.  
B. DL is part of ML, and ML is part of AI.  
C. They are completely independent.  
D. ML is part of DL, and DL is part of AI.

**Solution: B**

AI ⊃ ML ⊃ DL.

**2. What is the difference between training and inference?**

A. Training uses a model to predict; inference creates data.  
B. Training learns patterns from data; inference uses the trained model.  
C. They have exactly the same meaning.  
D. Inference only works with unlabeled data.

**Solution: B**

**3. Which algorithm uses a FIFO queue?**

A. DFS  
B. BFS  
C. UCS  
D. A*

**Solution: B — BFS**

**4. Which algorithm expands the node with the lowest actual path cost?**

A. DFS  
B. Greedy  
C. UCS  
D. Minimax

**Solution: C — UCS**

**5. Which of the following is an example of supervised learning?**

A. Grouping customers without labels.  
B. Learning through rewards and penalties.  
C. Training with labeled Healthy/Faulty machine records.  
D. Randomly grouping data.

**Solution: C**

## Part B — Comparison (5 Marks)

**Compare BFS and DFS.**

**Solution:**

| BFS | DFS |
|---|---|
| FIFO Queue | LIFO Stack |
| Explores level by level | Explores deeply first |
| Complete under finite branching | Not generally complete |
| Optimal with equal step costs | Not generally optimal |
| Higher memory usage | Lower memory usage |

## Part C — Short Reasoning (5 Marks)

**Why might UCS be preferred over BFS?**

**Solution:**

UCS is preferred when path costs differ because it expands the node with the lowest accumulated path cost, while BFS explores according to depth.

**Exam hint:**

- FIFO → BFS.
- LIFO → DFS.
- Lowest g(n) → UCS.
- Lowest h(n) → Greedy.
- Lowest g(n) + h(n) → A*.

---

# Question 2 — Search, Games, and CSP (25 Marks)

## Part A — A* Search Calculation (10 Marks)

A search algorithm has three available nodes:

| Node | g(n) | h(n) |
|---|---:|---:|
| A | 2 | 6 |
| B | 4 | 2 |
| C | 3 | 4 |

**Questions:**

1. Calculate f(n) for each node.
2. Which node will A* expand first?
3. Explain why.

**Solution:**

Formula:

f(n) = g(n) + h(n)

For A:

f(A) = 2 + 6 = 8

For B:

f(B) = 4 + 2 = 6

For C:

f(C) = 3 + 4 = 7

Comparison:

| Node | Calculation | f(n) |
|---|---|---:|
| A | 2 + 6 | 8 |
| B | 4 + 2 | 6 |
| C | 3 + 4 | 7 |

**Final answer: B**

Because B has the lowest f(n) value.

**Exam hint:** Calculate g + h for every available node, then choose the smallest.

## Part B — Minimax (8 Marks)

Consider the following game tree:

```text
                  MAX
                 /   \
               MIN   MIN
              /  \   /  \
             4    7  2    9
```

**Questions:**

1. Calculate the value of each MIN node.
2. Calculate the final MAX value.
3. Which branch will MAX choose?

**Solution:**

Step 1 — Left MIN:

min(4,7) = 4

Step 2 — Right MIN:

min(2,9) = 2

Step 3 — MAX:

max(4,2) = 4

**Final answer: 4**

MAX chooses the left branch.

**Exam hint:**

- MIN → smallest value.
- MAX → largest value.
- Start from the leaves and move upwards.

## Part C — CSP Reasoning (7 Marks)

A student must assign examination times to three courses:

- Variables: AI, Java, Data Mining.
- Domain: Monday, Tuesday.
- Constraint: AI and Java cannot be scheduled on the same day.

**Questions:**

1. Identify the variables.
2. Identify the domain.
3. Identify the constraint.
4. If AI is assigned Monday, what values remain available for Java?
5. Which CSP technique removes invalid future values after an assignment?

**Solution:**

1. Variables: AI, Java, Data Mining.
2. Domain: Monday, Tuesday.
3. Constraint: AI and Java must have different days.
4. Java can only be Tuesday.
5. Forward Checking.

**Exam hint:** 

- Variables = what needs assigning.
- Domain = possible values.
- Constraints = assignment rules.
- Forward Checking = removes invalid future options.

---

# Question 3 — Fuzzy Logic (15 Marks)

## Part A — Membership Function Calculation (6 Marks)

A triangular membership function represents the concept Warm:

a = 18, b = 26, c = 34.

Calculate the membership degree when x = 22.

**Solution:**

Since 22 is between a and b, use the rising formula:

μ(x) = (x − a) / (b − a)

Substitute:

μ(22) = (22 − 18) / (26 − 18)

μ(22) = 4 / 8

**Final answer: μ(22) = 0.5**

Interpretation: The temperature has a membership degree of 0.5 in the fuzzy set Warm.

## Part B — Conceptual Comparison (4 Marks)

**Compare triangular and trapezoidal membership functions.**

**Solution:**

| Triangular | Trapezoidal |
|---|---|
| Uses 3 points (a,b,c) | Uses 4 points (a,b,c,d) |
| Has one peak | Has a flat top |
| Membership reaches 1 at one point | Membership stays at 1 over an interval |

## Part C — Fuzzy Inference (3 Marks)

**Arrange the fuzzy inference steps in the correct order.**

**Solution:**

1. Fuzzification.
2. Rule Evaluation.
3. Implication.
4. Aggregation.
5. Defuzzification.

**Remember:**

Input → Fuzzification → Rules → Aggregation → Defuzzification → Crisp Output.

## Part D — Mamdani vs Sugeno (2 Marks)

**What is the main difference?**

**Solution:**

- Mamdani: Consequent is a fuzzy set.
- Sugeno: Consequent is a constant or mathematical function.

Sugeno commonly uses a weighted average to calculate the final output.

---

# Question 4 — Probability and HMM (20 Marks)

## Part A — Bayes' Rule (10 Marks)

A disease affects 2% of a population.

A test has:

- Sensitivity = 90%.
- Specificity = 95%.

A person receives a positive test result.

Calculate the probability that the person actually has the disease.

**Solution:**

Step 1 — Identify the values:

P(D) = 0.02

P(No D) = 0.98

P(+ | D) = 0.90

False Positive Rate:

P(+ | No D) = 1 − Specificity

= 1 − 0.95 = 0.05

Step 2 — Calculate total positive probability:

P(+) = P(+ | D)P(D) + P(+ | No D)P(No D)

P(+) = (0.90 × 0.02) + (0.05 × 0.98)

P(+) = 0.018 + 0.049

P(+) = 0.067

Step 3 — Apply Bayes' Rule:

P(D | +) = [P(+ | D) × P(D)] / P(+)

P(D | +) = (0.90 × 0.02) / 0.067

P(D | +) = 0.018 / 0.067

**Final answer: 0.2687 = 26.87%**

**Important exam trap:**

- Sensitivity = P(+ | D).
- Posterior = P(D | +).

Do not confuse them.

## Part B — Naive Bayes (6 Marks)

A machine can be Healthy or Faulty.

Given:

| Probability | Healthy | Faulty |
|---|---:|---:|
| Prior | 0.8 | 0.2 |
| High Temperature | 0.2 | 0.8 |
| High Vibration | 0.1 | 0.7 |

Predict the machine's condition using Naive Bayes.

**Solution:**

Formula:

Score(Class) = Prior × Likelihood 1 × Likelihood 2

Step 1 — Healthy:

0.8 × 0.2 × 0.1 = 0.016

Step 2 — Faulty:

0.2 × 0.8 × 0.7 = 0.112

Step 3 — Compare:

Healthy = 0.016

Faulty = 0.112

**Final answer: Faulty**

Because Faulty has the higher score.

Optional normalization:

P(Faulty) = 0.112 / (0.112 + 0.016)

= 0.875 = 87.5%

## Part C — HMM Concepts (4 Marks)

A machine has hidden states Healthy and Faulty. Its visible observations are Alarm ON and Alarm OFF.

**Questions:**

1. What are the hidden states?
2. What are the observations?
3. What is a transition probability?
4. What is an emission probability?

**Solution:**

1. Hidden states: Healthy and Faulty.
2. Observations: Alarm ON and Alarm OFF.
3. Transition: Probability of moving from one hidden state to another.
4. Emission: Probability of observing something given a hidden state.

**Additional important distinction:**

| Task | Meaning |
|---|---|
| Filtering | Estimate current hidden state |
| Prediction | Estimate future hidden state |
| Smoothing | Estimate past hidden state using later observations |

---

# Question 5 — Machine Learning (25 Marks)

## Part A — Learning Types and Task Identification (4 Marks)

Identify the learning type:

1. A model learns from labeled machine records.
2. An algorithm groups customers without labels.
3. A robot learns through rewards and penalties.

**Solution:**

1. Supervised Learning.
2. Unsupervised Learning.
3. Reinforcement Learning.

## Part B — Linear Regression (6 Marks)

A model is given:

ŷ = 2 + 3x

**Questions:**

1. Predict y when x = 4.
2. If the observed value is 15, calculate the residual.
3. What does the slope mean?
4. What does OLS minimize?

**Solution:**

1. Prediction:

ŷ = 2 + 3(4)

ŷ = 2 + 12

**Answer: 14**

2. Residual:

Residual = Observed − Predicted

Residual = 15 − 14

**Answer: 1**

3. Slope = 3 means predicted Y increases by 3 for every one-unit increase in X.

4. OLS minimizes the Sum of Squared Residuals (SSR).

SSR = Σ(yᵢ − ŷᵢ)²

## Part C — Logistic Regression (5 Marks)

Given:

z = −4 + 0.8x

p = 1 / (1 + e^(−z))

For x = 5:

1. Calculate z.
2. Calculate p.
3. Classify using threshold = 0.5.
4. Why is logistic regression used for classification?

**Solution:**

Step 1:

z = −4 + 0.8(5)

z = −4 + 4 = 0

Step 2:

p = 1 / (1 + e⁰)

p = 1 / 2

**Answer: 0.5**

Step 3:

Since p ≥ 0.5:

**Prediction: Class 1**

Step 4:

Logistic regression estimates the probability of belonging to a class and uses a threshold to classify the observation.

## Part D — k-NN Calculation (8 Marks)

A new machine has coordinates (3,3).

Use k = 3 to predict its condition.

| Neighbor | Coordinates | Class |
|---|---|---|
| A | (2,3) | Faulty |
| B | (3,5) | Healthy |
| C | (4,3) | Faulty |

Calculate the distances and predict the class.

**Solution:**

Euclidean distance:

d = √[(x₂ − x₁)² + (y₂ − y₁)²]

Step 1 — Distance to A:

dA = √[(3−2)² + (3−3)²]

dA = √1 = 1

Step 2 — Distance to B:

dB = √[(3−3)² + (3−5)²]

dB = √4 = 2

Step 3 — Distance to C:

dC = √[(3−4)² + (3−3)²]

dC = √1 = 1

Step 4 — Majority vote:

Faulty = 2 votes.

Healthy = 1 vote.

**Final answer: Faulty**

## Part E — Reasoning (2 Marks)

**Why is feature scaling important in k-NN?**

**Solution:**

Because features with larger numerical ranges can dominate distance calculations. Scaling makes features comparable.

---

# Final Exam Formula Sheet

| Topic | Formula / Rule |
|---|---|
| A* | f(n) = g(n) + h(n) |
| Minimax | MAX = maximum, MIN = minimum |
| Alpha-Beta | Prune when α ≥ β |
| Triangular Fuzzy (rising) | μ(x) = (x − a)/(b − a) |
| Triangular Fuzzy (falling) | μ(x) = (c − x)/(c − b) |
| Bayes | P(A\|B) = P(B\|A)P(A)/P(B) |
| Naive Bayes | Prior × Likelihoods |
| Linear Regression | ŷ = b₀ + b₁x |
| Residual | Observed − Predicted |
| OLS | Minimize Σ(yᵢ − ŷᵢ)² |
| Logistic Regression | p = 1/(1 + e^(−z)) |
| k-NN | d = √[(x₂−x₁)² + (y₂−y₁)²] |

---

# Final Revision Checklist

Before entering the exam, make sure you can:

- [ ] Distinguish AI, ML, and DL.
- [ ] Compare BFS, DFS, UCS, Greedy, and A*.
- [ ] Calculate A* evaluation values.
- [ ] Solve a basic Minimax tree.
- [ ] Identify CSP variables, domains, and constraints.
- [ ] Calculate triangular membership degrees.
- [ ] Explain the fuzzy inference process.
- [ ] Distinguish Mamdani and Sugeno.
- [ ] Apply Bayes' Rule.
- [ ] Solve a basic Naive Bayes example.
- [ ] Identify HMM hidden states, observations, transitions, and emissions.
- [ ] Distinguish supervised, unsupervised, and reinforcement learning.
- [ ] Calculate linear regression predictions and residuals.
- [ ] Calculate logistic regression probabilities and apply thresholds.
- [ ] Calculate k-NN distances and perform majority voting.

**Exam strategy:** Identify the question type → select the formula → substitute values → show calculations → state the final answer clearly.
