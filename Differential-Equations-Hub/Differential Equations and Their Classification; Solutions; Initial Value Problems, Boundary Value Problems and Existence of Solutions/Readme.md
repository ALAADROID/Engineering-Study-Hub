Page 1 — What is a Differential Equation

Definition

A Differential Equation (DE) is an equation that contains:

an unknown function

one or more of its derivatives

Example forms appear like:

𝑑
𝑦
𝑑
𝑥
,
𝑑
2
𝑦
𝑑
𝑥
2
dx
dy
	​

,
dx
2
d
2
y
	​


Short note you write:

Differential Equation:
Equation involving an unknown function and its derivatives.

Page 2 — Ordinary Differential Equation (ODE)

Definition

If derivatives are with respect to one independent variable only, it is called:

Ordinary Differential Equation

Example:

𝑑
𝑦
𝑑
𝑥
+
8
𝑥
=
sin
⁡
𝑥
dx
dy
	​

+8x=sinx

Short note:

ODE: derivatives with respect to one variable only.

Page 3 — Partial Differential Equation (PDE)

Definition

If derivatives are with respect to more than one variable, it is:

Partial Differential Equation

Example variables:

𝑥
x

𝑦
y

𝑡
t

Short note:

PDE: derivatives with respect to multiple variables.

Example:

∂
𝑢
∂
𝑥
,
∂
𝑢
∂
𝑡
∂x
∂u
	​

,
∂t
∂u
	​

Page 4 — Order of Differential Equation

Definition

The order is the highest derivative appearing.

Examples:

Equation	Order

𝑦
′
′
+
𝑦
=
0
y
′′
+y=0	2

𝑦
′
′
′
′
+
𝑥
=
0
y
′′′′
+x=0	4

Short note:

Order = highest derivative power.

Page 5 — Linear Differential Equation

Definition

A differential equation is linear if:

𝑦
y appears only to power 1

derivatives appear only to power 1

no multiplication between 
𝑦
y and its derivatives

General form:

𝑎
𝑛
(
𝑥
)
𝑦
(
𝑛
)
+
𝑎
𝑛
−
1
(
𝑥
)
𝑦
(
𝑛
−
1
)
+
.
.
.
+
𝑎
1
(
𝑥
)
𝑦
′
+
𝑎
0
(
𝑥
)
𝑦
=
𝑔
(
𝑥
)
a
n
	​

(x)y
(n)
+a
n−1
	​

(x)y
(n−1)
+...+a
1
	​

(x)y
′
+a
0
	​

(x)y=g(x)

Short note:

Linear DE:

no 
𝑦
2
y
2

no 
𝑦
⋅
𝑦
′
y⋅y
′

no 
(
𝑦
′
)
2
(y
′
)
2

Page 6 — Nonlinear Differential Equation

If any of these happen, it becomes nonlinear:

𝑦
2
y
2

(
𝑦
′
)
2
(y
′
)
2

𝑦
𝑦
′
yy
′

Example:

𝑦
′
′
+
6
𝑦
2
=
0
y
′′
+6y
2
=0

Short note:

Nonlinear if powers or products appear.

Page 7 — Constant vs Variable Coefficients

Linear equations can be:

Constant coefficients
𝑦
′
′
+
5
𝑦
′
+
2
𝑦
=
0
y
′′
+5y
′
+2y=0

Numbers only.

Variable coefficients
𝑥
2
𝑦
′
′
+
𝑥
𝑦
′
+
𝑦
=
0
x
2
y
′′
+xy
′
+y=0

Coefficients depend on 
𝑥
x.

Short note:

constant → numbers

variable → functions of 
𝑥
x

Page 8 — Identify Order & Linearity

This page trains you to identify:

1️⃣ order
2️⃣ linear or nonlinear

Typical exam question.

Example idea:

𝑦
′
′
+
𝑦
=
0
y
′′
+y=0

Answer:

order = 2

linear

Page 9 — What is a Solution?

Definition:

A solution is a function that satisfies the differential equation.

Meaning:

If you substitute the function and its derivatives → equation becomes true.

Short note:

Solution = function that makes DE true after substitution.

Page 10 — Example of Solution

Function given:

𝑓
(
𝑥
)
=
2
sin
⁡
𝑥
+
3
cos
⁡
𝑥
f(x)=2sinx+3cosx

Derivative:

𝑓
′
(
𝑥
)
=
2
cos
⁡
𝑥
−
3
sin
⁡
𝑥
f
′
(x)=2cosx−3sinx

Second derivative:

𝑓
′
′
(
𝑥
)
=
−
2
sin
⁡
𝑥
−
3
cos
⁡
𝑥
f
′′
(x)=−2sinx−3cosx

Substitute into equation:

𝑓
′
′
+
𝑓
=
0
f
′′
+f=0

Result:

(
−
2
sin
⁡
𝑥
−
3
cos
⁡
𝑥
)
+
(
2
sin
⁡
𝑥
+
3
cos
⁡
𝑥
)
=
0
(−2sinx−3cosx)+(2sinx+3cosx)=0

So it satisfies the equation.

Short note:

To verify a solution:

find derivatives

substitute

check equality.

Page 11 — Implicit Solution

Sometimes solution is not written as:

𝑦
=
𝑓
(
𝑥
)
y=f(x)

Instead:

𝑥
2
+
𝑦
2
=
25
x
2
+y
2
=25

This is called an implicit solution.

Short note:

Explicit → 
𝑦
=
𝑓
(
𝑥
)
y=f(x)

Implicit → equation involving 
𝑥
x and 
𝑦
y

Page 12 — Family of Solutions

Example:

𝑑
𝑦
𝑑
𝑥
=
2
𝑥
dx
dy
	​

=2x

Solutions:

𝑦
=
𝑥
2
+
𝑐
y=x
2
+c

Where c is constant.

This gives infinite solutions.

Short note:

General solution = family of curves.

Page 13 — Initial Value Problem (IVP)

Definition:

An IVP has:

1️⃣ differential equation

𝑦
′
=
𝑓
(
𝑥
,
𝑦
)
y
′
=f(x,y)

2️⃣ initial condition

𝑦
(
𝑎
)
=
𝑏
y(a)=b

Example:

𝑦
(
3
)
=
4
y(3)=4

Short note:

IVP = equation + starting value.

Page 14 — Using the Initial Condition

Given solution family:

𝑥
2
+
𝑦
2
=
𝑐
2
x
2
+y
2
=c
2

Condition:

(
3
,
4
)
(3,4)

Substitute:

9
+
16
=
25
9+16=25

So:

𝑐
2
=
25
c
2
=25

Final solution:

𝑥
2
+
𝑦
2
=
25
x
2
+y
2
=25
Page 15 — IVP vs Boundary Value Problem
Initial Value Problem

Conditions at same point

Example:

𝑦
(
0
)
=
9
y(0)=9
𝑦
′
(
0
)
=
−
4
y
′
(0)=−4
Boundary Value Problem

Conditions at different points

Example:

𝑦
(
0
)
=
1
y(0)=1
𝑦
(
5
)
=
5
y(5)=5

Short note:

Type	Condition
IVP	same x
BVP	different x
Page 16–18 — Existence & Uniqueness Theorem

Important theorem.

If:

1️⃣ 
𝑓
(
𝑥
,
𝑦
)
f(x,y) continuous
2️⃣ 
∂
𝑓
/
∂
𝑦
∂f/∂y continuous

Then:

The differential equation has one unique solution near the point.

Meaning:

The IVP will produce only one curve.

Short note:

If 
𝑓
f and 
𝑓
𝑦
f
y
	​

 are continuous → unique solution exists.
