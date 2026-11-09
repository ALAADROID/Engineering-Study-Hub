# Week 6 — Machine Learning Foundations

### 1. Machine Learning (ML)
ML is a branch of AI that learns patterns and relationships from data to make predictions or decisions.

### 2. Learning Paradigms
- Supervised Learning: Learns from labeled data (features + targets).
- Unsupervised Learning: Learns from unlabeled data to discover patterns or clusters.
- Reinforcement Learning: An agent learns actions through rewards and penalties.

### 3. Data Terminology
- Features (X): Input variables used for prediction.
- Target (y): Output the model tries to predict.
- Observation: One data sample.
- Label: Known class assigned to an observation.

### 4. Classification vs Regression
- Classification: Predicts categories (Healthy / Faulty).
- Regression: Predicts numerical values (cost, time, temperature).
- Numeric labels such as 0 and 1 can still represent classification.

### 5. Linear Regression
- Supervised regression algorithm.
- Predicts numerical values using a fitted linear relationship.
- Intercept: Predicted output when x = 0.
- Slope: Predicted change in y for one-unit increase in x.
- OLS: Minimizes the sum of squared residuals.
- Residual: Observed value − Predicted value.

### 6. Logistic Regression
- Supervised classification algorithm, commonly binary.
- Calculates a linear score and applies the sigmoid function.
- Sigmoid converts the score into a probability between 0 and 1.
- A decision threshold converts probability into a class.
- At threshold 0.5: predict Class 1 if p ≥ 0.5.

### 7. k-Nearest Neighbors (k-NN)
- Predicts using the nearest training observations.
- Steps: Calculate distances → Select k neighbors → Combine their targets.
- Classification: Majority voting.
- Regression: Average numerical targets.
- Small k is more sensitive to local noise; large k considers a wider neighborhood.
- Feature scaling is important because features with larger numerical ranges can dominate distances.

### 8. Parameters and Hyperparameters
- Parameter: Learned from data (e.g. regression coefficients).
- Hyperparameter: Configuration choice (e.g. k in k-NN).

### 9. k-Means (Unsupervised Learning)
- Groups observations into k clusters without target labels.
- Assigns observations to nearby centroids and updates centroids using the mean.
- Cluster IDs are not automatically known classes.
