## How to Check if a Differential Equation is Homogeneous  

### The easiest way:

<img width="%45" alt="image" src="https://github.com/user-attachments/assets/be72a527-0346-458b-89d4-90ca30ea6f09" />



<img width="%45" alt="image" src="https://github.com/user-attachments/assets/56f78b53-caa9-4350-97e4-697e2818e339" />

| Term     | Degree  |
| -------- | ------- |
| (x<sup>2</sup>)    | 2       |
| (xy)     | 2 (1+1) |
| (y<sup>2</sup>)    | 2       |
| (x<sup>3</sup>y<sup>2</sup>) | 5 (3+2) |
| (x)      | 1       |
| constant | 0       |


---



### The hard way:

#### 1. Standard Form  
- You usually start with: dx/dy​=f(x,y)  

#### 2. Main Idea (The Test)  
- The equation is homogeneous if: f(x,y)=f(y/x​)  
> After simplification, everything depends only on y/x — not separately on x and 𝑦  
  
#### 3. Practical Method (Step-by-Step)  

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
