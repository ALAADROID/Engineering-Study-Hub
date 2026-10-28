## Week 4 — DT Convolution

**1. CT vs DT Convolution**

- CT signals use \(x(t)\) and are usually drawn as continuous curves.
- DT signals use \(x[n]\) and are drawn as stems at integer indices.
- CT convolution uses an integral.
- DT convolution uses a summation.

CT: y(t) = ∫ x(τ)h(t − τ)dτ

DT: y[n] = Σ x[k]h[n − k]

**2. DT Unit Impulse and Unit Step**

- Unit impulse δ[n] = 1 at n = 0, and 0 elsewhere.
- Shifted impulse δ[n − k] = 1 at n = k, and 0 elsewhere.
- Unit step u[n] = 1 for n ≥ 0, and 0 for n < 0.
- Relationship: δ[n] = u[n] − u[n − 1].

**3. Sifting-Sum Identity**

Any DT signal can be represented as a sum of weighted, shifted impulses:

x[n] = Σ x[k]δ[n − k]

Each sample x[k] determines the weight of one shifted impulse.

**4. DT Convolution Procedure**

1. Draw x[k] and h[k] on the same index axis.
2. Flip h[k] to obtain h[−k].
3. Shift it to obtain h[n − k].
4. Multiply x[k]h[n − k] at each index k.
5. Sum all products to obtain y[n].
6. Repeat for each required output index n.

**Notation:** Square brackets in x[n] indicate a discrete-time sequence; they do not mean that x is squared.
