> [!CAUTION]
> **NOT DONE YET IT IS UNDER MODIFYING.**

$\color{red}{\text{READ 👆👆👆👆👆👆👆👆👆👆👆👆👆}}$

---


```asm

.orig x3000
; R0=9
ADD R0 R0 R0; double R0
ADD R0 R0 #1; add 1 to R0
;this point here
JSR MYFUNC ; function call
ADD R0 R0 R1 ; main function continues here

.fill x0
.fill x0
.fill x0
.fill x0

MYFUNC
ADD R0 R0 #-5
RET

.end

```

```asm

.orig x3000
ADD R5 R5 R5
TRAP x21
ADD R6 R6 R6
.end

```


```asm

.orig x3000
ADD R5 R5 R5
TRAP x23
ADD R6 R6 R6
.end

```

### pseudocode:

```c
sum = 0
i = 0
while (i < size){
  sum sum + A[i]; sum = sum + *(A + i)
  1++
}

i < size
i+(-size) < 0
```

```asm

.orig x3000

LD R0 ADDR
LD R3 ZERO
NOT R4 R1
ADD R4 R4 #1 ; R4 <-(-size)

LOOPCOND
ADD R5 R4 R3 ; R5 = i-size  CC: sign(i size)
BRzP ENDLOOP

ADD R6 R0 R3 ; R6 = A + i
LDR R7 R6 #0 ; R7 = A[1]
ADD R2 R2 R7
ADD R3 R3 #1
BRnzp LOOPCOND
ENDLOOP

SIZE .fill #5
ADDR .fill x4000
ZERO .fill #0

.end

; sum = R2
; i = R3


```

