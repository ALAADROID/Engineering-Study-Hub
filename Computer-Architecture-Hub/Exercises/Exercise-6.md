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
