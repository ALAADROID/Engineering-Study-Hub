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
BRnzp END_ELSE 

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

AND R2, R2, #0    ; Z = 0

LOOP
ADD R1, R1, #0    ; check Y
BRnz END_LOOP     ; if Y ≤ 0 → stop

ADD R2, R2, R0    ; Z = Z + X
ADD R1, R1, #-1   ; Y--

BRnzp LOOP        ; repeat

END_LOOP

.end
```

</details>

> LC-3
