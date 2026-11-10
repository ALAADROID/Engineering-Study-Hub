# AI Midterm Preparation — Weeks 1–6

## A. High-Priority Comparison Tables

### Week 1 — AI Fundamentals

| Term | Meaning |
|---|---|
| AI | Machines performing tasks that require intelligence |
| ML | AI systems that learn patterns from data |
| DL | ML using multi-layer neural networks |
| Symbolic AI | Uses rules, logic, and knowledge |
| Data-Driven AI | Learns patterns from data |
| Training | Learning from data |
| Inference | Using a trained model to make predictions |
| Narrow AI | Designed for specific tasks |
| AGI | General intelligence across different tasks |
| Agent | Perceives environment and takes actions |
| PEAS | Performance, Environment, Actuators, Sensors |

**Important:** AI ⊃ ML ⊃ DL.

### Week 2–3 — Search Algorithms

| Algorithm | Data Structure / Selection | Main Idea | Optimal? |
|---|---|---|---|
| BFS | FIFO Queue | Explores level by level | Yes, with equal step costs |
| DFS | LIFO Stack | Explores deeply first | No |
| UCS | Priority Queue, lowest g(n) | Lowest path cost first | Yes, under standard assumptions |
| Greedy Best-First | Lowest h(n) | Estimated closest node first | No |
| A* | Lowest g(n) + h(n) | Actual + estimated cost | Yes, under standard assumptions |

**Important formulas:**

- g(n): Actual cost from start.
- h(n): Estimated cost to goal.
- f(n) = g(n) + h(n): A* evaluation function.

### Minimax vs Alpha-Beta Pruning

| Minimax | Alpha-Beta Pruning |
|---|---|
| Finds the best move assuming optimal opponent play | Makes Minimax faster |
| MAX chooses maximum | MAX still chooses maximum |
| MIN chooses minimum | MIN still chooses minimum |
| Evaluates game-tree values | Skips unnecessary branches |

**Important:** Prune when α ≥ β. The final Minimax result does not change.

### CSP — Constraint Satisfaction Problems

| Term | Meaning |
|---|---|
| Variable | What we need to assign |
| Domain | Possible values |
| Constraint | Rule restricting assignments |
| Backtracking | Assign, check, undo if invalid |
| MRV | Choose variable with fewest legal values |
| Degree Heuristic | Choose variable constraining the most others |
| LCV | Choose value eliminating the fewest options |
| Forward Checking | Remove invalid future values after assignment |

### Week 4 — Fuzzy Logic

#### Membership Functions

| Triangular | Trapezoidal |
|---|---|
| 3 points: (a,b,c) | 4 points: (a,b,c,d) |
| One peak | Flat top |
| Membership reaches 1 at one point | Membership is 1 across an interval |

#### Fuzzy Inference Process

| Step | Meaning |
|---|---|
| 1. Fuzzification | Crisp input → membership degrees |
| 2. Rule Evaluation | Calculate rule firing strengths |
| 3. Implication | Apply firing strength to each rule's output |
| 4. Aggregation | Combine rule outputs |
| 5. Defuzzification | Fuzzy output → crisp number |

#### Mamdani vs Sugeno

| Mamdani | Sugeno |
|---|---|
| Consequent is a fuzzy set | Consequent is a constant or function |
| Aggregates fuzzy output sets | Combines numerical outputs |
| Usually requires defuzzification | Often uses weighted average |

### Week 5 — Probability

#### Important Terms

| Term | Meaning |
|---|---|
| Prior | Probability before new evidence |
| Likelihood | Probability of evidence given a hypothesis |
| Posterior | Probability of hypothesis after evidence |
| Evidence | Overall probability of observing evidence |
| Sensitivity | P(+ \| Disease) |
| Specificity | P(- \| No Disease) |
| False Positive Rate | P(+ \| No Disease) = 1 − Specificity |

#### Bayes vs Naive Bayes vs HMM

| Method | Main Idea |
|---|---|
| Bayes' Rule | Updates probability using evidence |
| Naive Bayes | Uses Bayes with conditional independence between features |
| HMM | Models hidden states and observable outputs over time |

#### HMM Terms

| Term | Meaning |
|---|---|
| Hidden State | Actual condition we cannot directly observe |
| Observation | What we can see |
| Transition | Probability of moving between hidden states |
| Emission | Probability of an observation given a hidden state |
| Filtering | Estimate current hidden state |
| Prediction | Estimate future hidden state |
| Smoothing | Estimate past hidden state using later observations |

### Week 6 — Machine Learning

#### Learning Paradigms

| Learning Type | Data / Feedback |
|---|---|
| Supervised | Labeled data |
| Unsupervised | Unlabeled data |
| Reinforcement | Rewards and penalties |

#### ML Methods

| Method | Purpose | Main Idea |
|---|---|---|
| Linear Regression | Predicts continuous numerical values | Fits a line |
| Logistic Regression | Classification | Uses sigmoid |
| k-NN | Classification or regression | Uses nearest data points |
| k-Means | Clustering | Groups similar data |

#### Classification vs Regression

| Classification | Regression |
|---|---|
| Predicts a category | Predicts a numerical value |
| Healthy / Faulty | Hours until maintenance |
| Spam / Not Spam | House price |
| Pass / Fail | Temperature |

**Important:** A 0/1 output is still classification when 0 and 1 represent categories.

---

## B. Calculation Questions — Solved Examples

### 1. A* Search

**Question clue:** A graph with edge costs and heuristic values.

Formula:

f(n) = g(n) + h(n)

Example:

| Node | g(n) | h(n) | f(n) |
|---|---:|---:|---:|
| A | 3 | 5 | 8 |
| B | 4 | 2 | 6 |
| C | 2 | 7 | 9 |

**Solution:** Choose B because it has the lowest f(n) = 6.

**Exam hint:** Calculate g + h for every available node. Expand the smallest.

### 2. Minimax

**Question clue:** A game tree with numbers at the bottom and MAX/MIN levels.

Rules:
- MAX selects the largest value.
- MIN selects the smallest value.
- Start from the bottom and move upwards.

Example:

```text
              MAX
             /   \
           MIN   MIN
           / \   / \
          3   5 2   9
```

Step 1: Left MIN chooses min(3,5) = 3.

Step 2: Right MIN chooses min(2,9) = 2.

Step 3: MAX chooses max(3,2) = 3.

**Answer: 3**

**Exam hint:** Solve the lowest level first, then move upwards.

### 3. Fuzzy Membership Function

**Question clue:** Triangular membership function with (a,b,c).

For the rising side:

μ(x) = (x − a) / (b − a)

For the falling side:

μ(x) = (c − x) / (c − b)

Example:

a = 18, b = 26, c = 34, x = 22.

μ(22) = (22 − 18) / (26 − 18)

μ(22) = 4 / 8

**Answer: 0.5**

**Exam hint:**
- If x is between a and b, use the rising formula.
- If x is between b and c, use the falling formula.
- At b, membership = 1.

### 4. Bayes' Rule

**Question clue:** Disease/test, faulty machine/alarm, or probability after receiving evidence.

Formula:

P(A | B) = [P(B | A) × P(A)] / P(B)

Example:

- Disease prevalence = 2%
- Sensitivity = 90%
- Specificity = 95%

Find P(Disease | Positive).

**Step 1 — Write the values:**

P(D) = 0.02

P(+ | D) = 0.90

P(+ | No D) = 1 − 0.95 = 0.05

**Step 2 — Calculate total positive probability:**

P(+) = P(+ | D) × P(D) + P(+ | No D) × P(No D)

P(+) = 0.90 × 0.02 + 0.05 × 0.98

P(+) = 0.018 + 0.049 = 0.067

**Step 3 — Apply Bayes:**

P(D | +) = (0.90 × 0.02) / 0.067

P(D | +) = 0.018 / 0.067

**Answer: 0.2687 = 26.87%**

**Exam trap:** Sensitivity P(+ | D) is NOT the same as posterior P(D | +).

### 5. Naive Bayes

**Question clue:** Different classes, prior probabilities, and feature likelihoods.

Formula:

Score(Class) = P(Class) × P(F1 | Class) × P(F2 | Class)

Example:

| Value | Healthy | Faulty |
|---|---:|---:|
| Prior | 0.8 | 0.2 |
| High Temperature | 0.2 | 0.8 |
| High Vibration | 0.1 | 0.7 |

**Step 1 — Healthy score:**

0.8 × 0.2 × 0.1 = 0.016

**Step 2 — Faulty score:**

0.2 × 0.8 × 0.7 = 0.112

**Step 3 — Compare:**

Faulty score is higher.

**Prediction: Faulty**

If they ask for normalized probabilities:

P(Faulty) = 0.112 / (0.112 + 0.016)

P(Faulty) = 0.112 / 0.128

**Answer: 0.875 = 87.5%**

**Exam hint:** Multiply prior × all feature likelihoods for each class. Choose the higher score.

### 6. Linear Regression

**Question clue:** A fitted equation such as:

ŷ = 2 + 3x

**A. Predict when x = 5:**

ŷ = 2 + 3(5)

ŷ = 2 + 15

**Answer: 17**

**B. Observed value = 18. Calculate residual:**

Residual = Observed − Predicted

Residual = 18 − 17

**Answer: 1**

**C. Interpret slope:**

Slope = 3 means predicted Y increases by 3 when X increases by 1.

**D. What does OLS minimize?**

OLS = Ordinary Least Squares.

It minimizes the Sum of Squared Residuals:

SSR = Σ(yᵢ − ŷᵢ)²

### 7. Logistic Regression

**Question clue:** Sigmoid, probability, or classification threshold.

Given:

z = −4 + 0.8x

p = 1 / (1 + e^(−z))

For x = 5:

**Step 1 — Calculate z:**

z = −4 + 0.8(5)

z = −4 + 4 = 0

**Step 2 — Calculate probability:**

p = 1 / (1 + e⁰)

p = 1 / (1 + 1)

**Answer: 0.5**

**Step 3 — Apply threshold = 0.5:**

| Probability | Classification |
|---|---|
| p ≥ 0.5 | Class 1 |
| p < 0.5 | Class 0 |

**Answer: Class 1**

**Why classification?** Logistic regression estimates the probability of belonging to a class, then assigns a class using a threshold.

### 8. k-NN

**Question clue:** New point, coordinates, k, and labeled neighbors.

Euclidean distance formula:

d = √[(x₂ − x₁)² + (y₂ − y₁)²]

Example:

New machine = (3,3), k = 3.

| Neighbor | Coordinates | Class |
|---|---|---|
| A | (2,3) | Faulty |
| B | (3,5) | Healthy |
| C | (4,3) | Faulty |

**Step 1 — Calculate distances:**

A:

dA = √[(3−2)² + (3−3)²]

dA = √(1 + 0) = 1

B:

dB = √[(3−3)² + (3−5)²]

dB = √(0 + 4) = 2

C:

dC = √[(3−4)² + (3−3)²]

dC = √(1 + 0) = 1

**Step 2 — Select the 3 nearest neighbors:**

- Faulty = 2 votes
- Healthy = 1 vote

**Prediction: Faulty**

**What does k mean?**

The number of nearest neighbors used to make the prediction.

**What is feature scaling?**

Making features comparable in scale so a feature with large numerical values does not dominate the distance calculation.

**If k-NN is used for regression:**

Take the average of the neighbors' numerical values instead of majority voting.

### 9. HMM — Conceptual Example

**Question clue:** Hidden condition and visible observations.

Example: A machine is secretly Healthy or Faulty, but you only observe whether its alarm is ON or OFF.

- Hidden state = actual condition.
- Observation = visible evidence.
- Transition = probability of changing state.
- Emission = probability of seeing an observation from a state.

**Markov assumption:** The next state depends only on the current state, not the entire previous history.

---

## C. Reasoning Questions — Short Answers to Memorize

| Possible Exam Question | Short Answer |
|---|---|
| Why use BFS? | Finds the shallowest solution when step costs are equal. |
| Why use DFS? | Uses less memory and explores deep paths. |
| Why use UCS instead of BFS? | When path costs differ. |
| Why use A* instead of Greedy? | A* considers actual cost and estimated remaining cost. |
| Why use Alpha-Beta? | Reduces evaluated nodes without changing Minimax's result. |
| Why use Forward Checking? | Detects impossible future assignments early. |
| Why use Fuzzy Logic? | Handles vague concepts such as low, medium, and high. |
| Why use Defuzzification? | Converts fuzzy output into a crisp numerical value. |
| Why use Bayes? | Updates prior probability using new evidence. |
| Why use Naive Bayes? | Estimates classes using prior and feature likelihoods. |
| Why use HMM? | Models sequences with hidden states and visible observations. |
| Why use Linear Regression? | Predicts continuous numerical values. |
| Why use Logistic Regression? | Predicts class probabilities. |
| Why use k-NN? | Predicts based on similar nearby observations. |
| Why scale features in k-NN? | Prevents large-scale features from dominating distances. |
| Why use Unsupervised Learning? | Finds patterns without labeled outputs. |

---

## D. Last-Minute Memorization Priority

| Priority | Topic | What to Memorize |
|---:|---|---|
| 1 | k-NN | Distance formula, nearest neighbors, majority vote |
| 2 | Bayes | Formula and false-positive rate |
| 3 | Naive Bayes | Prior × likelihoods, compare scores |
| 4 | Linear Regression | Substitute, residual, slope, OLS |
| 5 | Logistic Regression | Calculate z → sigmoid → threshold |
| 6 | A* | f = g + h |
| 7 | Minimax | MAX/MIN selection |
| 8 | Fuzzy | Membership calculation and inference steps |
| 9 | Learning Types | Supervised / Unsupervised / Reinforcement |
| 10 | HMM and CSP | Definitions and conceptual comparisons |

### Final Exam Tips

1. Show your calculation steps, even if unsure of the final answer. You may receive partial marks.
2. When asked to compare methods, mention their purpose and one important difference.
3. For probability questions, convert percentages into decimals before multiplying.
4. For k-NN, sort distances before voting.
5. Classification predicts a category; regression predicts a numerical value.
6. Don't spend too long on one question. The exam has 60 minutes for 5 questions.
7. A fuzzy membership degree of 0.8 means strong membership in a fuzzy set, NOT necessarily an 80% probability.

**Main strategy:** Recognize the question type → choose the formula → substitute values → show the steps → write the final answer.
