# Differential Equations – Quick Review Notes

## Page 1 — What is a Differential Equation

### Definition
A Differential Equation (DE) is an equation that contains:
* An unknown function
* One or more of its derivatives

**Example forms appear like:**
dy/dx, d²y/dx²


> **Short note:**
> **Differential Equation:** Equation involving an unknown function and its derivatives.

---

## Page 2 — Ordinary Differential Equation (ODE)

### Definition
If derivatives are with respect to one independent variable only, it is called:
**Ordinary Differential Equation**

**Example:**
dy/dx + 8x = sin x


> **Short note:**
> **ODE:** derivatives with respect to one variable only.

---

## Page 3 — Partial Differential Equation (PDE)

### Definition
If derivatives are with respect to more than one variable, it is:
**Partial Differential Equation**

**Example variables:**
* x
* y
* t

**Example:**
∂u/∂x, ∂u/∂t


> **Short note:**
> **PDE:** derivatives with respect to multiple variables.

---

## Page 4 — Order of Differential Equation

### Definition
The order is the highest derivative appearing.

**Examples:**

| Equation | Order |
| :--- | :--- |
| y'' + y = 0 | 2 |
| y'''' + x = 0 | 4 |

> **Short note:**
> **Order** = highest derivative power.

---

## Page 5 — Linear Differential Equation

### Definition
A differential equation is linear if:
* y appears only to power 1
* derivatives appear only to power 1
* no multiplication between y and its derivatives

**General form:**
an(x)y⁽ⁿ⁾ + an-1(x)y⁽ⁿ⁻¹⁾ + ... + a1(x)y' + a0(x)y = g(x)


> **Short note:**
> **Linear DE:**
> * no y²
> * no y · y'
> * no (y')²

---

## Page 6 — Nonlinear Differential Equation

If any of these happen, it becomes nonlinear:
* y²
* (y')²
* yy'

**Example:**
y'' + 6y² = 0


> **Short note:**
> **Nonlinear** if powers or products appear.

---

## Page 7 — Constant vs Variable Coefficients

Linear equations can be:

**1. Constant coefficients**
y'' + 5y' + 2y = 0

* Numbers only.

**2. Variable coefficients**
x²y'' + xy' + y = 0

* Coefficients depend on x.

> **Short note:**
> * **constant** → numbers
> * **variable** → functions of x

---

## Page 8 — Identify Order & Linearity

This page trains you to identify:
1. 1️⃣ order
2. 2️⃣ linear or nonlinear

**Typical exam question example:**
y'' + y = 0

**Answer:**
* order = 2
* linear

---

## Page 9 — What is a Solution?

### Definition
A solution is a function that satisfies the differential equation.

**Meaning:**
If you substitute the function and its derivatives → equation becomes true.

> **Short note:**
> **Solution** = function that makes DE true after substitution.

---

## Page 10 — Example of Solution

**Function given:**
f(x) = 2sin x + 3cos x

**Derivative:**
f'(x) = 2cos x - 3sin x

**Second derivative:**
f''(x) = -2sin x - 3cos x


**Substitute into equation:**
f'' + f = 0

**Result:**
(-2sin x - 3cos x) + (2sin x + 3cos x) = 0

So it satisfies the equation.

> **Short note:**
> **To verify a solution:** find derivatives, substitute, check equality.

---

## Page 11 — Implicit Solution

Sometimes solution is not written as:
y = f(x)

Instead:
x² + y² = 25

This is called an **implicit solution**.

> **Short note:**
> * **Explicit** → y = f(x)
> * **Implicit** → equation involving x and y

---

## Page 12 — Family of Solutions

**Example:**
dy/dx = 2x

**Solutions:**
y = x² + c

Where c is constant. This gives infinite solutions.

> **Short note:**
> **General solution** = family of curves.

---

## Page 13 — Initial Value Problem (IVP)

### Definition
An IVP has:
1. 1️⃣ differential equation: `y' = f(x, y)`
2. 2️⃣ initial condition: `y(a) = b`

**Example:**
y(3) = 4


> **Short note:**
> **IVP** = equation + starting value.

---

## Page 14 — Using the Initial Condition

**Given solution family:**
x² + y² = c²

**Condition:**
(3, 4)

**Substitute:**
9 + 16 = 25

So: `c² = 25`

**Final solution:**
x² + y² = 25


---

## Page 15 — IVP vs Boundary Value Problem

**Initial Value Problem**
* Conditions at same point
* Example: `y(0) = 9, y'(0) = -4`

**Boundary Value Problem**
* Conditions at different points
* Example: `y(0) = 1, y(5) = 5`

**Short note:**

| Type | Condition |
| :--- | :--- |
| IVP | same x |
| BVP | different x |

---

## Page 16–18 — Existence & Uniqueness Theorem

**Important theorem.**
If:
1. 1️⃣ f(x, y) continuous
2. 2️⃣ ∂f/∂y continuous

Then: The differential equation has **one unique solution** near the point.

**Meaning:**
The IVP will produce only one curve.

> **Short note:**
> If f and fy are continuous → unique solution exists.

---

## Very Important for Your Exercises

You will likely see questions like:
1. 1️⃣ Identify order & linearity
2. 2️⃣ Verify solution
3. 3️⃣ Find constant using IVP
4. 4️⃣ Distinguish IVP vs BVP
