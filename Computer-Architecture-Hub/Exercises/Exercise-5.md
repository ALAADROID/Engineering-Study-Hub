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

if (X > 0)
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

<br>

<details open>
<summary><b>Language: LC-3 Assembly</b></summary>

<br>

```asm
.orig x3000

;R1=X, R2=Z, R3=T, R4=Y
ADD R3, R0, #0    ; T = X
AND R2, R2, #0    ; Z = 0

NOT R4, R1
ADD R4, R4, #1    ; R4 = -Y

LOOP
ADD R7, R3, R4    ; T - Y
BRn END_LOOP

ADD R3, R3, R4    ; T = T - Y
ADD R2, R2, #1    ; Z++

BRnzp LOOP

END_LOOP

.end
```

</details>

> We assign for T & Y manually some values.
