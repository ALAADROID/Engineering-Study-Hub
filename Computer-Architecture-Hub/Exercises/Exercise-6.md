
## JSR (Jump to Subroutine):  
- Callin' a fun.

<details open>
<summary><b>Language: LC-3 Assembly</b></summary>

<br>

```asm

.orig x3000
; R0=9
ADD R0 R0 R0        ; double R0
ADD R0 R0 #1        ; add 1 to R0
;this point here
JSR MYFUNC          ; function call
ADD R0 R0 R1        ; main function continues here

.fill x0
.fill x0
.fill x0
.fill x0

MYFUNC
ADD R0 R0 #-5
RET                ; RETURN, shortcut for JMP R7.

.end

```

</details>


> A subroutine always ends with RET.

## Vectors:

### Vector(x21), 	Routine(OUT)

<details open>
<summary><b>Language: C</b></summary>

<br>

```c

print(/*smth*/);

```

</details>


<details open>
<summary><b>Language: LC-3 Assembly</b></summary>

<br>

```asm

.orig x3000
ADD R0 R5 R5
TRAP x21        ; Prints the char. currently stored in R0 to the console.
ADD R6 R6 R6
.end

```

</details>


### Vector(x23)	Routine(IN)

<details open>
<summary><b>Language: C</b></summary>

<br>

```c

scanf(/*smth*/);

```

</details>


<details open>
<summary><b>Language: LC-3 Assembly</b></summary>

<br>

```asm

.orig x3000
ADD R0 R5 R5
TRAP x23        ; Prints a prompt, waits for you to type a character, and saves it in R0.
ADD R6 R6 R6
.end

```


### Vectoer(x25),	Routine(HALT)

#### pseudocode:

<details open>
<summary><b>Language: C</b></summary>

<br>

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

</details>


<details open>
<summary><b>Language: LC-3 Assembly</b></summary>

<br>

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

</details>


## Printting an arr. of char: ('hello friend'):

<details open>
<summary><b>Language: C</b></summary>

<br>

```c

i=0
while(A[i] != 0){
  print A[i]
  i++
}

```
</details>

<details open>
<summary><b>Language: LC-3 Assembly</b></summary>

<br>

- We run this first:
```asm

.orig x4000

.STRINGZ "hello friend"   ; store the letters in term of ASCII 

.end


```

</details>


- Then:

<details open>
<summary><b>Language: LC-3 Assembly</b></summary>

<br>

```asm

.orig x3000

LD R1 ADDR       ; R1<- x4000
LD R2 ZERO       ; R2<- 0

LOOP
ADD R3 R1 R2     ; 
LDR R0 R3 #0     ; R0 <- A[i], CC: sign(A[i])
BRz ENDLOOP      ; condition (its not ZERO)
TRAP x21
ADD R2 R2 #1
BRnzp LOOP
ENDLOOP
TRAP x25

ADDR .fill x4000
ZERO .fill #0

.end


```

</details>
