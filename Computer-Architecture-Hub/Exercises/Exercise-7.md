## Fibonacci:  

<details open>
<summary><b>Language: C</b></summary>

<br>

```c

if (n <= 1)
    result = n;
else {
    small = 0;
    large = 1;
    while (n-1 > 0) {
        next = small + large;
        small = large;
        large = next;
        n--;
    }
    result = next;
}

```

</details>

<details open>
<summary><b>Language: LC-3 Assembly</b></summary>

<br>


```asm

.orig x3000

; if (n <= 1)
ADD R6, R0, #-1
BRp DO_LOOP      ; if n > 1 → loop

ADD R5, R0, #0   ; result = n
BRnzp END

DO_LOOP
LD R1, ZERO      ; small = 0
LD R2, ONE       ; large = 1

LOOP
ADD R6, R0, #-1
BRnz ENDLOOP     ; if n <= 1 → stop

ADD R3, R1, R2   ; next = small + large
ADD R1, R2, #0   ; small = large
ADD R2, R3, #0   ; large = next
ADD R0, R0, #-1  ; n--

BRnzp LOOP

ENDLOOP
ADD R5, R3, #0   ; result = next

END
TRAP x25

ZERO .fill #0
ONE  .fill #1

.end

```

</details>
