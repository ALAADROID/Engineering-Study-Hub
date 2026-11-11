### Complex Exponentials and LTI Systems

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
