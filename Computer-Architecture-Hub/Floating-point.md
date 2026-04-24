## 1) Structure (VERY IMPORTANT ⭐)

32-bit number is split into:

[ sign (1 bit) | exponent (8 bits) | fraction (23 bits) ]  
Sign: 0 = +, 1 = −  
Exponent: stored with bias = 127  
Fraction (mantissa): stored WITHOUT the leading 1  

👉 real value:

(-1)^sign × 2^(exponent - 127) × (1.fraction)  
## 2) Key idea (students miss this)  

👉 mantissa is NOT just fraction

It is:  

1.fraction   ❗ (implicit 1)  
## 3) Example from board (your -26)  

Binary shown:  

1 | exponent | fraction  
Step-by-step:  
✅ sign  
1 → negative  
✅ exponent  
131 - 127 = 4  
✅ fraction  
(1.101)₂  
✅ final:  
= (-1)^1 × 2^4 × (1.101)₂  
= -1 × 16 × 1.625  
= -26 ✅  
## 4) Second example (-0.75)  

From board:

1 | 126 | fraction
exponent:  
126 - 127 = -1  
mantissa:  
(1.1)₂ = 1.5  
result:  
= -1 × 2^-1 × 1.5  
= -0.75 ✅  
## 5) Third example (6)  

From board:

0 | 129 | fraction  
exponent:  
129 - 127 = 2  
mantissa:  
(1.1)₂ = 1.5  
result:  
= 1 × 2^2 × 1.5  
= 6 ✅  
## 6) Your confusion fixed  
❓ 23 or 25 bits?  

👉 fraction = 23 bits  
👉 total = 32 bits  
  
1 + 8 + 23 = 32  
❓ why bias 127?  
  
👉 so exponent can represent negative + positive  

❓ your binary calculation mistake

You said:

111 → 1 + 2 + 0.25 ❌

Correct:

1.11₂ = 1 + 0.5 + 0.25 = 1.75 ✅  
## 7) Quick solving steps (EXAM WAY)  
Read sign  
exponent - 127  
add implicit 1 → (1.fraction)    
multiply everything  
## 8) Big picture   
floating point = scientific notation in binary  
instead of:  
6 = 1.1 × 2²  

we store:  

sign  
exponent (with bias)  
fraction  
