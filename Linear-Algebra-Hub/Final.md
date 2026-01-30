# Linear Algebra – Final Exam Quick Review

## 1. Determinants

### Key Rules
- If a matrix has:
  - a **zero row** or **zero column** → `det = 0`
  - **two identical rows or columns** → `det = 0`
  - **linearly dependent rows/columns** → `det = 0`
- Determinant of a **triangular matrix** = product of diagonal elements
- `det(A^T) = det(A)`
- `det(I_n) = 1`
- `det(A^{-1}) = 1 / det(A)`
- If `det(A) ≠ 0` → matrix is **nonsingular**

### Exam Hint
> Always scan for zero rows/columns FIRST before computing.

---

## 2. Identity Matrix

- `I_n * A = A * I_n = A`
- `I_n^{-1} = I_n`
- `I_n^T = I_n`

---

## 3. Homogeneous Systems (Ax = 0)

- If `det(A) ≠ 0` → **only trivial solution**
- If `det(A) = 0` → **infinitely many solutions**

---

## 4. Rank – Nullity Theorem

\[
\text{Rank}(A) + \text{Nullity}(A) = \text{Number of Columns}
\]

### Consequences
- `Nullity = dim(Null Space)`
- Rank = dimension of:
  - Row space
  - Column space

---

## 5. Dimensions

| Object | Dimension |
|------|----------|
| Row space | Rank |
| Column space | Rank |
| Null space | Nullity |
| Nonsingular n×n | Nullity = 0 |

---

## 6. Vector Spaces & Subspaces

### Subspace Test (MUST pass all)
1. Contains **zero vector**
2. Closed under **addition**
3. Closed under **scalar multiplication**

❌ If **any fails** → NOT a subspace

### Common Traps
- Inequalities (`x ≥ y`, `xy ≥ 0`) ❌
- Fixed constants (`x = 1`) ❌

---

## 7. Rotations & Reflections (2D)

### 90° Clockwise Rotation
\[
\begin{bmatrix}
0 & 1 \\
-1 & 0
\end{bmatrix}
\]

### Reflection about x-axis (y = 0)
\[
\begin{bmatrix}
1 & 0 \\
0 & -1
\end{bmatrix}
\]

---

## 8. Eigenvalues & Eigenvectors

### Characteristic Equation
\[
\det(A - \lambda I) = 0
\]

### Eigenvector Rule
\[
(A - \lambda I)\mathbf{x} = 0
\]

### Exam Hint
> Eigenvectors come from solving a **homogeneous system**.

---

## 9. Matrix Types

- **Square matrix**: same rows & columns
- **Diagonal**: only diagonal ≠ 0
- **Triangular**: only above or below diagonal
- **Symmetric**: `A = A^T`

---

## 10. Dot Product

\[
\mathbf{v_1} \cdot \mathbf{v_2} =
x_1x_2 + y_1y_2 + z_1z_2
\]

Example:
\[
[1,2,0]\cdot[3,4,0] = 11
\]

---

## 11. Matrix Multiplication Existence

- If `A` is `m×n` and `B` is `n×p`:
  - `AB` exists
  - `BA` exists **only if p = m**

---

## 12. Nonsingular Matrix Facts

- `det ≠ 0`
- Inverse exists
- Null space dimension = 0
- Full rank

---

## 13. Quick Exam Logic (1-liners)

- Zero row? → `det = 0`
- det ≠ 0? → only trivial solution
- Subspace? → check **zero first**
- Rotation? → sine & cosine pattern
- Reflection? → sign flip
- Nullity given? → use Rank-Nullity

---

## Final Tip
> In finals: **recognize → don’t calculate**  
> 80% of questions are logic, not math.
