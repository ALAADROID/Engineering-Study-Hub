# DATA MINING — MIDTERM CRASH REVIEW

**Exam-focused — Weeks 1, 3, 4, 5 & 7**

## Part 1 — Essential Terms and Concepts

### Week 1 — Introduction to Data Mining

| Term | What you should understand |
|---|---|
| Data Mining | Discovering hidden patterns, trends, and useful relationships in large datasets. |
| Data Science | Using data analysis, statistics, visualization, and other methods to gain insights. |
| Artificial Intelligence (AI) | Making machines perform tasks associated with intelligent behaviour. |
| Machine Learning (ML) | A field of AI where machines learn patterns from data. |
| Deep Learning (DL) | A type of ML based on deep neural networks. |
| Weak / Narrow AI | AI designed for specific tasks, such as spam detection. |
| Strong / General AI | Hypothetical AI capable of performing broad intellectual tasks like humans. |
| Super AI | Hypothetical AI that surpasses human intelligence. |
| Reactive Machines | Respond to current conditions without using stored past experiences. |
| Limited Memory AI | Uses past or historical information to improve decisions. |
| Computer Vision | Understanding information from images and videos. |
| NLP | Processing and understanding human language. |

**Scenario to recognize:** A facial-expression system learns from labelled images, then classifies a new image without a label. It uses training data, feature extraction, and a trained classifier.

### Week 3 — Data Science Workflow & Machine Learning

| Term | What you should understand |
|---|---|
| Data Analysis | Asking questions, finding patterns, and deriving insights from data. |
| Data Science Workflow | Define the problem → collect/process data → visualize → choose an approach → evaluate → compare results. |
| Python | A widely used, open-source programming language for Data Science. |
| Pandas | Python library for data analysis and manipulation. |
| Series | One-dimensional indexed data structure. |
| DataFrame | Two-dimensional tabular structure with rows and columns. |
| Supervised Learning | Learns from labelled data (inputs with correct outputs). |
| Unsupervised Learning | Finds patterns or groups without labelled outputs. |
| Reinforcement Learning | An agent learns through actions and rewards/penalties. |
| Classification | Predicting a category or class. |
| Regression | Predicting a continuous numerical value. |
| Clustering | Grouping similar observations. |
| Feature Extraction | Transforming raw data into useful measurable properties. |
| Preprocessing | Cleaning and transforming data before model training. |
| PCA | Reduces data dimensionality while retaining important information. |
| K-means | Groups data into K clusters. |

**Algorithm Recognition:**

| Algorithm | Main purpose |
|---|---|
| Linear Regression | Predict numerical values |
| Logistic Regression | Classification |
| SVM | Separates classes using a decision boundary |
| Decision Tree | Makes decisions through conditions and branches |
| K-means | Clustering |
| PCA | Dimensionality reduction |

**Reinforcement Learning Terms:**

- Agent: Decision-maker.
- Environment: The world the agent interacts with.
- Action: What the agent does.
- Reward: Feedback for an action.
- Policy: Strategy for choosing actions.

### Week 4 — Data Cleaning & Machine Learning Challenges

| Term | What you should understand |
|---|---|
| Data Cleaning | Fixing or removing incorrect, duplicated, corrupted, or incomplete data. |
| Duplicate Data | Repeated records that may distort analysis. |
| Irrelevant Data | Records unrelated to the problem being studied. |
| Structural Errors | Inconsistent names, spelling, or capitalization. |
| Missing Data | Values that are absent or unknown. |
| Outlier | An observation unusually far from other values. |
| Noisy Data | Data containing unwanted errors or random variations. |
| Validity | Data follows defined rules or constraints. |
| Accuracy | Data is close to the true value. |
| Completeness | All required data is available. |
| Consistency | Data agrees within or across datasets. |
| Uniformity | Data uses consistent units of measurement. |
| Overfitting | Model memorizes training data/noise and performs poorly on new data. |
| Underfitting | Model is too simple to learn the actual patterns. |
| Linear Regression | Predicts a numerical dependent variable from independent variables. |
| KNN | Predicts using the closest K training observations. |

**Very Important Scenario Distinctions:**

| Situation | Correct concept |
|---|---|
| Excellent training performance, poor testing performance | Overfitting |
| Poor training and testing performance | Underfitting |
| Two categories use `N/A` and `Not Applicable` for the same meaning | Structural error |
| A customer's record appears twice | Duplicate data |
| A person's age is recorded as 250 due to a typing mistake | Possible outlier/data error |
| A genuine unusual observation exists | Do not automatically remove it |
| A model predicts house prices | Regression |
| A model predicts Apple or Orange | Classification |

**KNN:** Find the nearest K points, count their classes, and predict the majority class.

**Evaluation Terms:**

| Metric | Meaning |
|---|---|
| Accuracy | Overall proportion of correct predictions. |
| Precision | Of predicted positives, how many were actually positive? |
| Recall | Of actual positives, how many were detected? |
| F1-score | Balance between precision and recall. |
| Confusion Matrix | Table comparing actual and predicted classes. |
| MSE | Average squared prediction error for regression. |
| R-squared | How well a regression model explains variation in the target. |
| Cross-validation | Evaluates model performance using repeated training/testing splits. |

### Week 5 — Visualization, Data Types & Basic Statistics

| Term | What you should understand |
|---|---|
| Visualization | Representing data graphically to discover patterns and communicate insights. |
| Bar Chart | Comparing categories or quantities. |
| Histogram | Showing the distribution of numerical data. |
| Line Chart | Showing trends or changes over time. |
| Scatter Plot | Showing the relationship between two numerical variables. |
| Pie Chart | Showing proportions of a whole. |
| Quantitative Data | Numerical data. |
| Discrete Data | Countable numerical values, e.g. number of employees. |
| Continuous Data | Values within a range, e.g. height or weight. |
| Qualitative Data | Descriptive or categorical data. |
| Nominal Data | Categories without a natural order, e.g. eye colour. |
| Ordinal Data | Categories with a natural order, e.g. satisfaction levels. |
| Mean | Average value. |
| Median | Middle value after sorting. |
| Percentile | Indicates the percentage of observations below a value. |
| Standard Deviation | Measures how spread out values are around the mean. |
| Z-score | How many standard deviations a value is from the mean. |
| Normalization | Rescales numerical values, commonly to 0–1. |
| Standardization | Rescales values using the mean and standard deviation; no fixed 0–1 range. |
| Smoothing | Reducing noise in data. |
| GroupBy | Divides records into groups for separate summaries. |

**Choosing the Right Visualization:**

| Scenario | Best visualization |
|---|---|
| Compare sales between five stores | Bar chart |
| Examine distribution of customer ages | Histogram |
| Observe monthly sales trends | Line chart |
| Examine relationship between salary and experience | Scatter plot |
| Show market-share proportions | Pie chart |

**Bin Smoothing Methods:**

- Bin Mean: Replace values with their bin's mean.
- Bin Median: Replace values with their bin's median.
- Bin Boundaries: Replace values using the minimum or maximum boundary of the bin.

**Normalization vs Standardization:**

- Normalization: commonly maps values into the 0–1 range.
- Standardization: centers values around the mean using standard deviation; values are not restricted to 0–1.

### Week 7 — Statistics, Probability & Feature Selection

| Term | What you should understand |
|---|---|
| Descriptive Statistics | Summarizes and describes the available dataset. |
| Inferential Statistics | Uses sample data to draw conclusions about a population. |
| Mean | Average. |
| Median | Middle value. |
| Mode | Most frequent value. |
| Range | Difference between maximum and minimum. |
| Quartiles | Divide ordered data into four parts. |
| Variance | Measures squared deviations from the mean. |
| Standard Deviation | Measures spread around the mean. |
| Probability | How likely an event is to occur. |
| Probability Distribution | Describes probabilities of possible values. |
| CDF | Probability that a variable is less than or equal to a given value. |
| Uniform Distribution | All outcomes are equally likely. |
| Binomial Distribution | Models repeated independent trials with two possible outcomes. |
| Normal/Gaussian Distribution | Symmetric, bell-shaped distribution around the mean. |
| Hypothesis | A statement or claim that can be investigated using data. |
| Feature Selection | Choosing the most relevant input variables for analysis or prediction. |
| Domain Knowledge | Subject-specific knowledge used to identify relevant features. |
| GIGO | Garbage In, Garbage Out: poor-quality input can produce poor results. |
| Outlier/Anomaly | An unusual observation that may deserve investigation. |

**Important Scenarios:**

- A researcher summarizes the average income of 500 customers → Descriptive Statistics.
- A researcher uses 500 customers to estimate the income of all customers → Inferential Statistics.
- Every outcome of a fair die has the same probability → Uniform Distribution.
- Ten independent coin tosses, counting the number of heads → Binomial Distribution.
- Human heights approximately form a bell-shaped curve → Normal Distribution.
- A bank investigates whether higher income increases loan approval → Hypothesis.
- A bank selects income, credit history, and loan amount instead of irrelevant columns → Feature Selection.
