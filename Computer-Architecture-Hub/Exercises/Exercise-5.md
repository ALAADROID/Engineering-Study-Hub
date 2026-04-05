# The codes:

## .FILL:

<br>

<details open>
<summary><b>Language: LC-3 Assembly</b></summary>

<br>

```asm
.orig x3000
VAR_X .fill #5
VAR_Y .fill #7
LD R0, VAR_X   ; R0 = 5
LD R1, VAR_Y   ; R1 = 7
.end

```

</details>


> VAR_X, VAR_Y = labels (names of memory locations)  
> .FILL = store value in memory

---

## If / Else:

<br>

<details open>
<summary><b>Language: C</b></summary>

<br>

```c
#include <stdio.h>
int main(){

if (X > 0 || Y>0)
    X++;         //condition true
else
    Y++;         //condition false

}
```

</details>

> High-level

<br>

<details open>
<summary><b>Language: LC-3 Assembly</b></summary>

<br>

```asm
.orig x3000

ADD R0, R0, #0   ; set CC sign(X=R0)
BRnz ELSE        ; if x<=0 go else

ADD R0, R0, #1   ; R0<--y+1 (true part)
BRnzp END_ELSE   ; Unconditional

ELSE
ADD R1, R1, #1   ; else part

END_ELSE         ; end for both

.end
```

</details>

> LC-3

---

## While loop:

<br>

<details open>
<summary><b>Language: C</b></summary>

<br>

```c
#include <stdio.h>
int main(){

  while (Y > 0) {    //condition
      Z = Z + X;
      Y--;
  }

}
```

</details>

> High-level

<br>

<details open>
<summary><b>Language: LC-3 Assembly</b></summary>

<br>

```asm
.orig x3000

AND R1, R1, #0   ; Z = 0

LOOP
ADD R0, R0, #0  ; Update CC from Y
BRnz END_LOOP   ; if Y ≤ 0 → stop

ADD R1, R1, R2  ; Z<--Z+X
ADD R0, R0, #-1 ; Y<--Y-1

BRp LOOP      ; 

END_LOOP

.end
```

</details>

> We assign X's value manually.

---

## Multiplication:

<br>

<details open>
<summary><b>Language: C</b></summary>

<br>

```c
#include <stdio.h>
int main(){

  Z=X*Y;

}
```

</details>

> High-level

<br>

<details open>
<summary><b>Language: LC-3 Assembly</b></summary>

<br>

```asm
.orig x3000

;R1=X, R2=Z, R3=Y
AND R2, R2, #0   ; Z=0

LOOP
ADD R3, R3, #0   ; sign of Y
BRnz END_LOOP    ; if(Y>0)
    ADD R2, R2, R1   ; Z+=X
    ADD R3, R3, #-1  ; Y<--Y-1
    BRnzp LOOP
END_LOOP

.end
```

</details>

> We assign for X & Y manually some values.

---

## Division:

<br>

<details open>
<summary><b>Language: C</b></summary>

<br>

```c
#include <stdio.h>
int main(){

  while (T >= Y) {
    T = T - Y;
    Z++;
  }

}
```

</details>

> High-level  
> $$Z = \frac{X}{Y}$$

<br>

<details open>
<summary><b>Language: LC-3 Assembly</b></summary>

<br>

```asm
.orig x3000

;R0=X, R1=Y, R2=Z, R3=T, R4=-Y, R7=T-Y
ADD R3, R0, #0        ; T=X
AND R2, R2, #0        ; Z=0

NOT R4, R1
ADD R4, R4, #1        ; R4=-Y

LOOP
ADD R7, R3, R4        ; CC sign(T-Y)
BRn END_LOOP          ; End if T-Y<0
  ADD R3, R3, R4        ; T = T-Y
  ADD R2, R2, #1        ; Z++
  BRnzp LOOP
END_LOOP

.end
```

</details>

> We assign for T & Y manually some values.  
> Z = result of division (quotient).

---

## Swap (if):

<br>

<details open>
<summary><b>Language: C</b></summary>

<br>

```c
#include <stdio.h>
int main(){

  if(x<y){
    temp=x;
    x=y;
    y=temp;
  }

}
```

</details>

> High-level.

<br>

<details open>
<summary><b>Language: LC-3 Assembly</b></summary>

<br>

```asm
.orig x3000

;R0=x, R1=y, R2=temp, R3=-y

NOT R3, R1
ADD R3, R3, #1   ; R3=~y, R3'=-y
ADD R2, R0, R3 ; sign (x-y)
BRnz SKIP      ; if x-y>0-->x>y
 ADD R2, R0, #0 ; temp=x
 ADD R0, R1, #0 ; x'=y
 ADD R1, R2, #0 ; y=temp=x
SKIP

.end
```

</details>

> Compare, Branch, and Data Movement.

---

## AND (if):

<br>

<details open>
<summary><b>Language: C</b></summary>

<br>

```c
#include <stdio.h>
int main(){

  if (x > 0 && y > 0){
      x=x+1;
  } else {
      y=y+1;
  }
  
}
```

</details>

> High-level.  
> Both must be positive.

<br>

<details open>
<summary><b>Language: LC-3 Assembly</b></summary>

<br>

```asm
.orig x3000

;R0=x, R1=y
;----------
ADD R0, R0, #0    ; CC sign(x)
BRnz ELSE         ; if x ≤ 0 → go else
ADD R1, R1, #0    ; CC sign(y)
BRnz ELSE         ; if y ≤ 0 → go else
;---TRUE PART---
ADD R0, R0, #1    ; x=x+1;
BRnzp END

ELSE
ADD R1, R1, #1    ; y=y+1;

END

.end
```

</details>

> This is sequential check (fail fast).


---

## OR (if):

<br>

<details open>
<summary><b>Language: C</b></summary>

<br>

```c
#include <stdio.h>
int main(){

  if (x > 0 || y > 0){
      x=x+1;
  } else {
      y=y+1;
  }
  
}
```

</details>

> High-level.  
> at least one is positive.

<br>

<details open>
<summary><b>Language: LC-3 Assembly</b></summary>

<br>

```asm
.orig x3000
.end
```

</details>

> This
