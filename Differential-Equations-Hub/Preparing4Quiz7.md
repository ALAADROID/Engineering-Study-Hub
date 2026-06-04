## Decision Tree:
- Given `ay′′+by′+cy=f(x)`
- and y=y<sub>​c</sub>+y<sub>​p</sub>​

### Step 1:
- Ignore the right side, solve the homogeneous part first.
  - `ay′′+by′+cy=0`
  - we find characteristic equation like we do.
  - then we came up with the y<sub>c</sub>.

### Step 2:
- We gues y<sub>p</sub>.

#### Case1:
- If right side f(x)=e<sup>αx</sup>
  - guess y<sub>p</sub>=Ae<sup>αx</sup>.

#### Case2:
- If right side f(x)=polynomial
  - guess y<sub>p</sub>=Ax<sup>2</sup>+Bx+C.

#### Case3:
- If right side f(x)=sin(x)
  - guess y<sub>p</sub>=Acos(ax)+Bsin(ax).

#### Case4:
- If right side f(x)=e<sup>ax</sup>(polynomial)
  - guess y<sub>p</sub>=e<sup>ax</sup>(Ax<sup>2</sup>+Bx+C).

#### Case5:
- If right side f(x)=e<sup>ax</sup>sin(bx) -or- f(x)=e<sup>ax</sup>cos(bx)
  - guess y<sub>p</sub>=e<sup>ax</sup>(Acosbx=Bsinbx)


## Golden Rule:
- If ur guess appears in y<sub>c</sub>;
  - Multiply by x.
- If still guess appears
  - Multiply by x<sup>2</sup>.
- If still appears
  - Multiply by x<sup>3</sup>.

| RHS                  | Guess                                  |
| -------------------- | -------------------------------------- |
| e<sup>ax</sup>             | Ae<sup>ax</sup>                              |
| P<sub>n</sub>(x)             | polynomial same degree                 |
| sinbx, cosbx    | Acosbx+Bsinbx                    |
| P<sub>n</sub>(x)e<sup>ax</sup>       | polynomial same degree X e<sup>ax</sup> |
| sum of terms         | solve each separately and add          |
| duplicate with y<sub>c</sub> | multiply by x                        |
| repeated duplicate   | multiply by x<sup>2</sup>                      |
