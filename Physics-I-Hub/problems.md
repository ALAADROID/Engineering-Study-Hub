# Physics Problems Solutions

## Problem 1: Waterfall Power
**Given:**
- Height ($h$): $30\text{ m}$
- Mass flow rate ($\frac{dm}{dt}$): $10^4\text{ kg/s}$
- Bulb power: $200\text{ W}$
- Gravity ($g$): $9.8\text{ m/s}^2$

### a) Calculation of Power
The power is the rate of potential energy change:
$$P = \frac{mgh}{t} = \left(\frac{m}{t}\right) \times g \times h$$
$$P = (10^4) \times (9.8) \times (30)$$
$$P = 2,940,000\text{ W} = 2.94\text{ MW}$$

### b) Number of Bulbs
$$\text{Number of bulbs} = \frac{P_{\text{total}}}{P_{\text{bulb}}}$$
$$\text{Number of bulbs} = \frac{2,940,000}{200} = 14,700\text{ bulbs}$$

> **Note:** Efficiency is assumed to be 100% as per the problem statement "if all this power were converted".

---

## Problem 2: Work on a Semi-Cylinder
**Task:** Calculate work done pulling mass $m$ at constant speed along a frictionless path.

Using the formula $W = \int \vec{F} \cdot d\vec{s}$:
- Displacement $ds = R d\theta$
- Applied Force $F = mg \sin\theta$ (Required to balance the tangential component of gravity).



$$W = \int_{0}^{\pi/2} (mg \sin\theta) (R d\theta)$$
$$W = mgR \int_{0}^{\pi/2} \sin\theta d\theta$$
$$W = mgR [-\cos\theta]_{0}^{\pi/2}$$
$$W = mgR (0 - (-1)) = mgR$$

> **Note:** The work done is independent of the path's shape because gravity is a conservative force; the work equals the change in potential energy ($\Delta U = mgh = mgR$).

---

## Q10: Raindrop Work
**Given:**
- $m = 3.35 \times 10^{-5}\text{ kg}$
- $h = 100\text{ m}$
- Velocity is constant ($v = \text{const} \implies \Delta K = 0$)

### 1. Work by Weight ($W_g$)
$$W_g = m \cdot g \cdot h$$
$$W_g = (3.35 \times 10^{-5}) \cdot (9.8) \cdot (100)$$
$$W_g = 0.0328\text{ J}$$

### 2. Work by Friction ($W_f$)
Since the drop moves at a constant velocity, the Net Work must be zero according to the Work-Kinetic Energy Theorem:
$$W_{net} = W_g + W_f = 0$$
$$W_f = -0.0328\text{ J}$$

> **Note:** Work done by gravity is positive (force and displacement are in the same direction), while work done by friction is negative (opposing the motion).

---

## Q11: Loop-the-Loop Height
**Condition:** The ball must maintain contact at the highest point (Point B).

### 1. Dynamics at Point B:
To stay on the track, the minimum speed is when Normal Force $N = 0$:
$$mg = \frac{mv^2}{R} \implies v^2 = gR$$



### 2. Conservation of Energy (Point A to B):
$$E_A = E_B$$
$$mgh = mg(2R) + \frac{1}{2}mv^2$$
Substituting $v^2 = gR$:
$$mgh = 2mgR + \frac{1}{2}mgR$$
$$h = 2R + 0.5R = 2.5R$$
**Result:** $h = 2.5R$

---

## Q1: Tennis Ball Average Force
**Given:**
- $m = 56\text{ g} = 0.056\text{ kg}$
- $v_{initial} = +20\text{ m/s}$
- $v_{final} = -30\text{ m/s}$ (Returned in the opposite direction)
- $\Delta t = 0.05\text{ s}$

### Calculation:
Using the Impulse-Momentum Theorem ($F_{avg} \Delta t = \Delta p$):
$$F_{avg} = \frac{m(v_f - v_i)}{\Delta t}$$
$$F_{avg} = \frac{0.056 \cdot (-30 - 20)}{0.05}$$
$$F_{avg} = \frac{0.056 \cdot (-50)}{0.05} = -56\text{ N}$$
**Magnitude:** $56\text{ N}$

> **Note:** The negative sign indicates that the force exerted by the racket is in the opposite direction of the initial velocity.
