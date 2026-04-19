# Differential Equations Guide

🎯 🔥 **STEP 0 — ALWAYS START HERE**

**Given:**  
$M(x,y)dx + N(x,y)dy = 0$

👉 **FIRST check:**

### ✅ 1. Exact?  
**Compute:**  
$M_y \stackrel{?}{=} N_x$  

* **✔ YES** → solve as exact    
* **❌ NO** → go next

---

### 🎯 2. Homogeneous?  
**Check degrees:**

**Example you gave:**  
$(x^2 - 3y^2)dx + 2xy \, dy = 0$  

* $x^2, y^2, xy \rightarrow$ all degree 2 ✔

👉 **✅ Homogeneous**

### 🎯 3. Separable?
**Try to rewrite:**
$$\frac{dy}{dx} = f(x)g(y)$$

👉 **if YES** → separable
👉 **if NO** → next

---

### 🎯 4. Linear?  
**Form:**  
$y' + P(x)y = Q(x)$
 
👉 only $y$, no $y^2, xy$, etc.  

---

### 🎯 5. Bernoulli?    
**Form:**    
$y' + P(x)y = Q(x)y^n$

👉 power on $y \rightarrow$ ✔ **Bernoulli**


### 🔥 APPLY TO YOUR EXAMPLE  
$(x^2 - 3y^2)dx + 2xy \, dy = 0$
 
**Step 1: Exact?**  
$M = x^2 - 3y^2 \Rightarrow M_y = -6y$  
$N = 2xy \Rightarrow N_x = 2y$

❌ **not equal** → NOT exact

---

**Step 2: Homogeneous?**  
All terms degree 2 ✔

👉 **✅ USE:**  
$y = vx$

### ⚠️ IMPORTANT MIDTERM RULE
👉 **Order matters:**

1. Exact
2. Homogeneous
3. Separable
4. Linear
5. Bernoulli

---

### 🔥 QUICK IDENTIFICATION TRICKS

**✅ Exact:**  
* Given as $Mdx + Ndy$  
* Derivatives match ($M_y = N_x$)

**✅ Homogeneous:**  
* Same degree everywhere    
* Mix of $x, y$ (like $xy, x^2, y^2$)

**✅ Separable:**    
* Clean split: $\frac{dy}{dx} = f(x)g(y)$

**✅ Linear:**  
* Only $y$  
* No powers or products involving $y$

**✅ Bernoulli:**  
* $y^n$ appears

---

### 🎯 YOUR CONFUSION FIXED  
**“they look same”** 
  
✔ **YES, but:**  
* **Exact** → derivative check  
* **Homogeneous** → degree check

👉 these two never confuse again if you follow order

