# Data Mining — Lecture 1

## 1. What is Data Mining?

Data mining is the process of finding hidden patterns, trends, and useful relationships in large datasets to obtain actionable insights.

## 2. The Data Mining Process

1. **Data Collection** — Gather data.
2. **Data Preparation** — Clean and organize data.
3. **Pattern Discovery / Learning** — Find patterns in data.
4. **Model Building** — Build a model using data.
5. **Testing** — Test the model using unseen data.
6. **Evaluation** — Measure model performance using accuracy and other metrics.
7. **Insights** — Use the results to understand data and solve real-world problems.

## 3. Training and Testing

* **Training:** Using data to teach a machine learning algorithm to recognize patterns.
* **Training Data:** Data used to train the model.
* **Testing:** Evaluating the trained model using data not used during training.
* **Testing Data:** Unseen data used to test the model.

## 4. Accuracy

Accuracy is the percentage of correct predictions made by a model.

**Formula:**

Accuracy = (Correct Predictions / Total Predictions) × 100%

Example: 95 correct predictions out of 100 = **95% accuracy**.

## 5. Cross-Validation

Cross-validation evaluates a model by repeating training and testing with different data splits.

### A. Leave-One-Out Cross-Validation (LOOCV)

* One sample is used for testing; all remaining samples are used for training.
* Repeated until every sample has been used for testing.

Example: 100 samples → 99 training + 1 testing per round → 100 rounds.

### B. 10-Fold Cross-Validation

* Divide the dataset into 10 equal parts (folds).
* Use 9 folds for training and 1 fold for testing.
* Repeat 10 times, using a different fold for testing each time.

Example: 1,000 samples → 100 testing + 900 training per round.

## 6. Dataset Splitting — Strategy 1

Example: 10,000 samples

* Training: 70% = 7,000 samples
* Testing: 20% = 2,000 samples
* Evaluation: 10% = 1,000 samples

*Note: This is the split recorded in the lecture notes.*

## 7. Important Terms

* **Data:** Information collected for analysis.
* **Dataset:** A collection of data.
* **Sample / Instance:** One individual data item.
* **Feature / Attribute:** A characteristic describing a sample.
* **Pattern:** A recurring structure or relationship in data.
* **Model:** A system learned from training data.
* **Classifier:** A model that assigns data to categories.
* **Classification:** Assigning an item to a category.
* **Evaluation:** Measuring model performance.
* **Algorithm:** A set of steps used to solve a problem.

## 8. Main Goal

**Turn data into actionable insights** to understand patterns and solve real-world problems.

## 9. Course Tools

* **Python:** Programming language used in the course.
* **WEKA:** A tool for applying machine learning and evaluating models.
