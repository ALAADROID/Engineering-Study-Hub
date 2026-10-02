
# Data Mining — Lecture 2

## 1. Machine Learning Tools

* **WEKA:** A tool that provides machine learning algorithms for data analysis and model building.
* **Google Colab:** An online environment for writing and running Python code.
* **Google Drive:** A cloud service for storing files and datasets.

## 2. Types of Machine Learning

* **Supervised Learning:** Learns from labeled data to predict the target value or class.
* **Unsupervised Learning:** Finds patterns or groups in data without predefined labels.

## 3. ARFF File Format

**ARFF** stands for **Attribute-Relation File Format**. It is used to represent datasets in WEKA.

* `@relation`: Defines the dataset name.
* `@attribute`: Defines an attribute (column) and its data type.
* `@data`: Marks the beginning of the actual data.
* `%`: Indicates a comment.
* `?`: Represents a missing value.

## 4. Dataset Structure

* **Dataset:** A collection of data records.
* **Attribute / Feature:** A column describing a property.
* **Instance:** A row representing one data record.
* **Class Attribute:** The target attribute that a classification model tries to predict.

## 5. Training and Testing

* **Training Set:** Data used to train a model.
* **Test Set:** Unseen data used to evaluate the trained model.
* **Model:** The result of training a machine learning algorithm on data.

**Important:** Do not evaluate a model only on its training data, because this may give an overly optimistic result.

### Percentage Split

The dataset is divided into training and testing sets.

Example: For 1,000 instances with a 75% split:

* Training: 750 instances (75%).
* Testing: 250 instances (25%).

## 6. Cross-Validation

Cross-validation evaluates a model using different subsets of the dataset.

**10-Fold Cross-Validation:**

1. Divide the dataset into 10 folds.
2. Train the model on 9 folds and test it on the remaining fold.
3. Repeat 10 times, using a different fold for testing each time.
4. Each instance is used for testing once.

For 1,000 instances, each fold contains 100 instances. In each round, 900 are used for training and 100 for testing.

| Method  | Training per Round | Testing per Round |
| ------- | -----------------: | ----------------: |
| 10-Fold |                90% |               10% |
| 20-Fold |                95% |                5% |

Increasing the number of folds does not guarantee higher accuracy.

## 7. Accuracy

Accuracy measures the percentage of correct predictions.

$$
\text{Accuracy}=\frac{\text{Correct Predictions}}{\text{Total Predictions}}\times100\%
$$

Example: 85 correct predictions out of 100 give an accuracy of 85%.

## 8. J48 Decision Tree

* **J48** is a decision tree classification algorithm in WEKA.
* A decision tree uses conditions and branches to classify instances.
* The final leaf represents a predicted class.
