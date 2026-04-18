> [!CAUTION]
> **NOT DONE YET IT IS UNDER MODIFYING.**

$\color{red}{\text{READ 👆👆👆👆👆👆👆👆👆👆👆👆👆}}$

---

## Separable Equations

## Example:
- dy/dx = x<sup>2</sup> / 1+y<sup>2</sup> , y(0)=1  
- 1st fun= x<sup>2</sup> , 2nd fun= 1+y<sup>2</sup>
  2x dx = 1+y^2 dy
  ∫2x dx = ∫ 1+y^2 dy
  x^2 + c = y + y^3/3 -> 4/3=c
- The solution is `Explicit`

>   [how do we decide? "**Explicit or Implicit**"?](#implicit-explicit).

---

## Integrating Factors


| Steps to solve 1st order linear equ. using Integrating factor |
| :---: |
| <img src="https://github.com/user-attachments/assets/76140b31-c687-4412-a680-1292d5366438" width="1000"> |


- Step 1 - Identigy:  
y'+p(x)y = Q(x)  
  
- Step 2 - Find Integrating Factor:  
u(x) = e<sup>∫P(x)dx</sup>

- Step 3 - Multiply whole equation:  
Multiply EVERYTHING by u(x)  
> d/dx [u(x)y]
> if **Product Rule** needed apply.

- Step 4 - Integrate:  
d/dx​ [μy] = μQ(x)
- Integrate:
uy = ∫u(x)Q(x)dx+c


- Step 5 - Solve for y:  
y = 1/[[u(x)] * (∫uQ(x)+c)

---

## Example:
- y'+2y=e<sup>x</sup>

- **Step 1 - so we do compare with:**  
```y'+P(x)y=Q(x)``` == ```y'+2y=eˣ``` , so P(x)=2, Q(x)=e<sup>x</sup>
  
- **Step 2 - Find integrating factor:**  
u=e<sup>∫P(x)dx</sup> , so u = e<sup>2x+c</sup> = e<sup>2x</sup> ```eᶜ``` → constant
  
> [!WARNING]  
> We ignore the constant because multiplying by a constant does NOT change the solution.
  
- **Step 3 - Multiply with u:**  
e<sup>2x</sup> y'+2e<sup>2x</sup>y = e<sup>3x</sup>

#### Product rule:
```d/d​x(uv)=uv'+u'v``` = ``` d/dx(e²ˣ)*y=e²ˣ y'+2e²ˣy```

- **Step 4 - Integrate:**  
d/dx (e<sup>2x</sup>y) = e<sup>3x</sup>  
e<sup>2x</sup>y = ∫e<sup>3x</sup>dx →  e<sup>2x</sup>y = e<sup>3x</sup>/3 +c
>   [how did we integrate "e<sup>2x</sup>"?](#integrating-e).

- **Step 5 - Solve for y:**  
y=e<sup>x</sup>/3+e<sup>-2x</sup>c



---


## 🔥 NOW THE IMPORTANT PART - When to use what?   
### Use separation when:

- You can write:

  dx/dy=f(x)g(y)

> variables can be separated


### Use integrating factor when:

- You have:

  y′+P(x)y=Q(x)

> NOT easily separable

--- 


## Integrating-e

- For e<sup>3x</sup>
- we say u=3x , then differentiate w.r.t.x du/dx=d(3x)/dx
- we got du/dx=3, dx=du/3 , replace ∫e<sup>3x</sup>dx → ∫e<sup>u</sup>du/3
- it's e<sup>u</sup>/3 +c , since u=3x → e<sup>3x</sup>/3 +c



## Implicit-Explicit

### Explicit sol. (حل صريح)
- when y=f(x)
> fun. not mixed with x like y(0)=1


### Implicit sol. (حل ضمني)
- when y&ne;f(x)
> fun. is mixed with x like y=25-x<sup>2</sup>














