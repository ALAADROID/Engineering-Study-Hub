# The Normal Distribution and Other Continuous Distributions:
The file : 📂 [chapter6-26.pdf](https://github.com/user-attachments/files/24438853/chapter6-26.pdf)
________________________


## Learning Objectives
- Compute probabilities from the normal distribution  
  حساب الاحتمالات باستخدام التوزيع الطبيعي
- Use the normal probability plot to check normality  
  استخدام مخطط الاحتمال الطبيعي للتحقق من التوزيع الطبيعي
- Compute probabilities for uniform and exponential distributions  
  حساب احتمالات التوزيع المنتظم والتوزيع الأسي

---

## Continuous Random Variables
A continuous random variable can take any value on a continuum.  
المتغير العشوائي المستمر يمكنه أخذ أي قيمة ضمن مجال مستمر.

Examples:
- time
- temperature
- height

Important:
- Probability of a single exact value = 0  
  احتمال قيمة واحدة محددة يساوي صفر

---

## The Normal Distribution
Properties:
- Bell-shaped and symmetric  
  على شكل جرس ومتناظر
- Mean = Median = Mode  
  المتوسط = الوسيط = المنوال
- Defined by:
  - μ (mean): location  
    μ يحدد موقع المنحنى
  - σ (standard deviation): spread  
    σ يحدد مقدار الانتشار
- Theoretical range: -infinity to +infinity  
  المدى النظري من سالب مالانهاية إلى موجب مالانهاية

---

## Normal Probability Density Function (Concept Only)
f(X) = (1 / (σ * sqrt(2π))) * e^(-(X - μ)^2 / (2σ^2))

Where:
- μ = population mean
- σ = population standard deviation

Note:
- Usually NOT required to memorize for quizzes  
  غالبًا لا يُطلب حفظها في الكويز

---

## Effect of Parameters
- Changing μ shifts the curve left or right  
  تغيير μ يحرك المنحنى يمينًا أو يسارًا
- Changing σ changes the spread  
  تغيير σ يغير مدى الانتشار

---

## Standardized Normal Distribution (Z)
Any normal distribution can be converted to Z.  
أي توزيع طبيعي يمكن تحويله إلى Z.

Z distribution:
- Mean = 0
- Standard deviation = 1

---

## Z-Score Formula
Z = (X - μ) / σ

Meaning:
- Z tells how many standard deviations X is from the mean  
  Z تخبرك كم انحرافًا معياريًا تبعد القيمة عن المتوسط

Interpretation:
- Z > 0 → above the mean  
- Z < 0 → below the mean  

---

## Probability as Area
- Probability equals area under the curve  
  الاحتمال يساوي المساحة تحت المنحنى
- Total area = 1  
- Half above μ and half below μ  

---

## Standard Normal Table (Z Table)
- Table gives P(Z < value)  
  الجدول يعطي احتمال أن Z أصغر من قيمة

Example:
- P(Z < 2.00) = 0.9772

---

## General Steps to Solve Normal Probability Problems
1. Draw the normal curve  
   ارسم المنحنى
2. Convert X to Z using the formula  
   حوّل X إلى Z
3. Use the Z-table  
   استخدم جدول Z

---

## Types of Exam Questions (VERY IMPORTANT)

### 1. Lower Tail
P(X < a)  
احتمال أن X أصغر من قيمة

### 2. Upper Tail
P(X > a) = 1 - P(Z ≤ a)  
احتمال أن X أكبر من قيمة

### 3. Between Two Values
P(a < X < b) = P(Z < b) - P(Z < a)  
احتمال أن X بين قيمتين

---

## Example (Pop Quiz Style)
Given:
X ~ Normal(μ = 8, σ = 5)

Find:
P(X < 8.6)

Step 1: Convert to Z  
Z = (8.6 - 8) / 5 = 0.12

Step 2: Use Z-table  
P(Z < 0.12) = 0.5478

Answer:
P(X < 8.6) = 0.5478

---

## What to Memorize for the Quiz
- Shape and properties of the normal distribution
- Meaning of μ and σ
- Z-score formula
- How to use the Z-table
- Lower tail, upper tail, and between probabilities

Not required:
- Full density function formula (usually)

