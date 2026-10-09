# Signals and Systems — Week 2

## 1. Signal Transformations

**Time Shifting**

* \(x(t-t_0)\): Shift right by \(t_0\).
* \(x(t+t_0)\): Shift left by \(t_0\).

**Time Reversal**

* \(x(-t)\): Flip the signal horizontally around \(t=0\).

**Time Scaling**

* \(x(at)\), where \(|a|>1\): Time compression.
* \(x(at)\), where \(0<|a|<1\): Time expansion.
* If \(a<0\): Time reversal also occurs.

**Amplitude Scaling**

* \(Ax(t)\): Multiply all signal values (y-axis) by \(A\).

**Example:**

$$
x(-2t)=\text{reversal + compression by 2}
$$

$$
x(2t-3)=x\left(2\left(t-\frac32\right)\right)
$$

Compress by 2, then shift right by 1.5.

## 2. Discrete-Time Scaling

* \(x[2n]\): Keep every other sample (even-indexed samples); samples are discarded.
* \(x[n/2]\): Original samples appear at even values of \(n\).
* \(x[n/3]\): Original samples appear at multiples of 3.

## 3. Periodic and Aperiodic Signals

**Periodic Signal:**

$$
x(t+T)=x(t)
$$

The signal repeats after a period \(T\). The smallest positive period is the **fundamental period**.

**Aperiodic Signal:** No positive \(T\) makes \(x(t+T)=x(t)\).

* \(t\): Time variable.
* \(T\): Period.

## 4. Even and Odd Signals

**Even Signal:**

$$
x(-t)=x(t)
$$

Symmetric around the vertical axis.

**Odd Signal:**

$$
x(-t)=-x(t)
$$

Symmetric around the origin (180° rotational symmetry).

## 5. Time Shift and Phase Shift

For a sinusoidal signal, a time shift changes its phase.

* Time shift: Moves the signal along the time axis.
* Phase shift: Changes the sinusoid's position within its cycle.
