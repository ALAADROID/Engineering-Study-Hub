## Decision Tree:
- Given `ay′′+by′+cy=f(x)`

### Step 1:
- Ignore the right side, solve the homogeneous part first.
  - `ay′′+by′+cy=0`
  - we find characteristic equation like we do.
  - then we came up with the y<sub>c</sub>.

### Step 2:
- We gues y<sub>p</sub>.

#### Case1:
- If right side f(x)=e<sup>αx</sup>
  - guess y<sub>p</sub>=Ae<sup>αx</sup>.4y=

#### Case2:
- If right side f(x)=polynomial
  - guess y<sub>p</sub>=Ax<sup>2</sup>+Bx+C.

#### Case3:
- If right side f(x)=sin(x)
  - guess y<sub>p</sub>=Acos(ax)+Bsin(ax).


#### Case4:
#### Case5:


## Golden Rule:
- If ur guess appears in y<sub>c</sub>;
  - Multiply by x.
- If still guess appears
  - Multiply by x<sup>2</sup>.
- If still appears
  - Multiply by x<sup>3</sup>.

## Memorizing:

| RHS                    | Guess                    |
| ---------------------- | ------------------------ |
| (e^{ax})               | (Ae^{ax})                |
| Polynomial             | Same degree polynomial   |
| (\sin ax,\cos ax)      | (A\cos ax+B\sin ax)      |
| (e^{ax}P(x))           | (e^{ax}(P\text{-type}))  |
| Sum of functions       | Solve separately and add |
| Guess duplicates (y_c) | Multiply by (x)          |
