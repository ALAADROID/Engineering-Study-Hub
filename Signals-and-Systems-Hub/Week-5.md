## Complex Exponentials and LTI Systems

**Euler's formula:**

e^(jωt) = cos(ωt) + j sin(ωt)

- j: imaginary unit, j² = −1.
- ω: angular frequency (ω = 2πf).
- Complex exponentials combine cosine and sine.

**LTI Eigenfunction Property:**

If x(t) = e^(jωt), then:

y(t) = H(jω) · e^(jωt)

- e^(jωt): eigenfunction.
- H(jω): eigenvalue and frequency response.
- The system scales the input without changing its exponential form.

**Frequency Response:**

H(jω) = ∫ h(τ)e^(−jωτ)dτ

It describes how an LTI system responds to different frequencies.

--- 

## Complex Exponential Fourier Series

A periodic signal can be represented as a sum of complex exponentials.

### Synthesis Equation

x(t) = &sum;<sub>k=-&infin;</sub><sup>&infin;</sup> A<sub>k</sub> e<sup>j k &omega;<sub>0</sub> t</sup>

### Definitions

- **x(t)**: Original periodic signal.
- **A<sub>k</sub>**: Complex Fourier coefficient (amplitude and phase information).
- **&omega;<sub>0</sub>**: Fundamental angular frequency.
- **k**: Harmonic index.

### Description

**Synthesis:** Reconstructing the signal using its Fourier coefficients.
