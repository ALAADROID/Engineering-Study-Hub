## The "Cleanliness" Factor:

### Instead of doing:  
```asm
;R0=x, R1=temp
ADD R1 R1 #0 ;R1=0
ADD R0 R1 #0 ;R0=0+0=0
```

### We do use:
```asm
AND R0 R0 #0 ;either becomes zero or remains zero
```
> This saves you from **wasting Registery** just to hold a zero.
