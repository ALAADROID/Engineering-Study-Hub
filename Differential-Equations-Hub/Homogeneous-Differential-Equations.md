# How to Check if a Differential Equation is Homogeneous:  

## Calculate the degree:

| Term     | Degree  |
| -------- | ------- |
| (x<sup>2</sup>)    | 2       |
| (xy)     | 2 (1+1) |
| (y<sup>2</sup>)    | 2       |
| (x<sup>3</sup>y<sup>2</sup>) | 5 (3+2) |
| (x)      | 1       |
| constant | 0       |

> [!IMPORTANT]
> This table shows how the degree calculated.



## The easiest way:

### 1. Look @ terms in M(x,y):
- they must have same degree.

### 2. Look @ all terms in N(x,y):
- they must have same degree.

### 3. Final check:
- if degree of M = degree of N, equation is **homogenous**.

### Exm:
- dy/dx = (x<sup>2</sup> - xy + y<sup>2</sup>)/xy
- Rewrite: (x<sup>2</sup> - xy + y<sup>2</sup>)dx - xydy=0

#### Check M(x,y) = x<sup>2</sup> - xy + y<sup>2</sup>
- x<sup>2</sup> -> degree 2
- xy -> degree 2
- y<sup>2</sup> -> degree 2
> All same -> degree = 2

#### Check N(x,y) = -xy
- xy -> degree 2
> degree = 2  
> **SO IT IS HOMOGENEOUS.**



## The hard way:

### 1. Standard Form  
- You usually start with: dx/dy​=f(x,y)  

### 2. Main Idea (The Test)  
- The equation is homogeneous if: f(x,y)=f(y/x​)  
> After simplification, everything depends only on y/x — not separately on x and 𝑦  
  
### 3. Practical Method (Step-by-Step)  

Step 1: Look at the equation
- Try to rewrite or simplify it.  
    
Step 2: Divide everything by x (or factor it)  
- You want to force the form y/x to appear.  
      
Step 3: Check  
- If everything becomes a function of y/x → ✅ Homogeneous  
- If not → ❌ Not homogeneous  

#### 4. Alternative Method (Very Useful)  
- If equation is in this form:  
        - M(x,y)dx+N(x,y)dy=0  
- Check degrees:  
          - M(x,y) → degree?  
          - N(x,y) → degree?  
- If both have the same degree → ✅ homogeneous  
