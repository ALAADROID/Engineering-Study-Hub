## General form:  
- M(x,y)dx+N(x,y)dy=0

### Checking Exact equation:  
- Exm:    (2xy<sup>3</sup>+x−2y)dx+(3x<sup>2</sup>y<sup>2</sup>−2x)dy=0  
  - Step 1.0 - Defien M, N :  
      M = 2xy<sup>3</sup>+x−2y , N = 3x<sup>2</sup>y<sup>2</sup>−2x  
  - Step 1.1 - Check My=Nx:  
      M<sub>y</sub>​=6xy<sup>2</sup>−2 , N<sub>x</sub>=6xy<sup>2</sup>−2  
> Exact ✔


### Solving the Exact equ:

- Step 2 - Integrate M:  
    ∫M dx ∫(2xy<sup>3</sup>+x−2y) dx → x<sup>2</sup>y<sup>3</sup>+x<sup>2</sup>/2-2xy+c

- Step 3 - Replace c with h(x):  
    x<sup>2</sup>y<sup>3</sup>+x<sup>2</sup>/2-2xy+**h(y)**

- Step 4 - Differentiate w.r.t y:  
    3x<sup>2</sup>y<sup>2</sup>-2x+**h'(y)**

- Step 5 - Compare with N:  
    3x<sup>2</sup>y<sup>2</sup>-2x+`h'(y)` = 3x<sup>2</sup>y<sup>2</sup>-2x+`0`

- Step 6 - Integral the h'(x):  
    h'(x)=0 → h(x) = ∫0 dx = 0

- Step 7 - Substitute h(x) value in Integrated equ. of M <sub>(step 3)</sub> :  
    x<sup>2</sup>y<sup>3</sup>+x<sup>2</sup>/2-2xy+**0** = c
