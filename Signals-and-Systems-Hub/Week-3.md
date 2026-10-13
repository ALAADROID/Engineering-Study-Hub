# Week 3 — Convolution and LTI Systems

## 1. Impulse Response
- **Impulse response** \(h(t)\): output of an LTI system when the input is \(\delta(t)\).
- Knowing \(h(t)\) allows us to calculate the output for any input.

## 2. Convolution Integral
\[
y(t)=x(t)*h(t)=\int_{-\infty}^{\infty}x(\tau)h(t-\tau)\,d\tau
\]

- \(x(\tau)\): input signal.
- \(h(t-\tau)\): shifted impulse response.
- \(\tau\): integration variable; \(t\): output time.
- Convolution is not ordinary multiplication.

## 3. Deriving Convolution
1. Represent the input as a sum of narrow, shifted impulses.
2. Use **time invariance**: a shifted impulse produces a shifted response.
3. Use **linearity**: scale and add the responses.
4. As pulse width \(\Delta\to0\), the sum becomes the convolution integral.

## 4. Flip-and-Slide Method
1. Write \(x(\tau)\) and \(h(\tau)\).
2. Flip \(h(\tau)\) to obtain \(h(-\tau)\).
3. Slide it to obtain \(h(t-\tau)\).
4. Find where both signals overlap.
5. Multiply the signals and integrate over the overlap.
6. Repeat for different values of \(t\).

**Important:** Integration limits are determined by the overlap of both signals.

## 5. Rectangular Pulse * Rectangular Pulse

For two unit-height pulses on \([0,1]\):

\[
y(t)=
\begin{cases}
0,&t<0\\
t,&0\le t\le1\\
2-t,&1\le t\le2\\
0,&t>2
\end{cases}
\]

The output is triangular, with maximum \(y(1)=1\).

## 6. Rectangular Pulse * Exponential

For \(x(t)=1\) on \([0,1]\) and \(h(t)=e^{-t}u(t)\):

\[
y(t)=
\begin{cases}
0,&t<0\\
1-e^{-t},&0\le t\le1\\
(e-1)e^{-t},&t>1
\end{cases}
\]

The output rises until \(t=1\), then decays exponentially.

## 7. Convolution Properties

**Commutativity**
\[
x*h=h*x
\]

**Associativity**
\[
(x*h_1)*h_2=x*(h_1*h_2)
\]

**Distributivity**
\[
x*(h_1+h_2)=x*h_1+x*h_2
\]

**Impulse identity and delay**
\[
x(t)*\delta(t)=x(t)
\]
\[
x(t)*\delta(t-t_0)=x(t-t_0)
\]

**Unit step**
\[
(x*u)(t)=\int_{-\infty}^{t}x(\tau)\,d\tau
\]

## 8. Step Response
- Step response \(s(t)\): output when the input is \(u(t)\).
- For an LTI system:
\[
h(t)=\frac{ds(t)}{dt}
\]

## 9. LTI System Properties

**Memoryless**
\[
h(t)=K\delta(t)
\]

**Causal**
\[
h(t)=0,\quad t<0
\]

**BIBO stable**
\[
\int_{-\infty}^{\infty}|h(t)|\,dt<\infty
\]

A finite absolute integral means stable; an infinite one means not BIBO stable.
