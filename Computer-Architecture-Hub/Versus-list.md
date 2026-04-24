# Versus list:


## Step vs Next:  
| STEP | NEXT |
| :--- | :--- |
| enters subroutine, executes line by line (debug) | enters subroutine, executes line by line (debug) |

## JSR vs Normal flow:  
| JSR | Fun. |
| :--- | :--- |
| jumps to subroutine + saves return addr in R7 | continues sequentially |  
> we use JSR when we want reusable code



## LD vs LDI vs LDR:  
| LD | LDI | LDR |
| :--- | :--- | :--- |
| `R ← M[PC + offset]` | `R ← M[ M[PC + offset] ]` | `R ← M[BaseR + offset]` |
| direct (1 memory access) | indirect (2 memory accesses) | uses register as base (flexible) |  
> LD = near data  
> LDI = far (via pointer)  
> LDR = dynamic address (array, loop)

## ST vs STI vs STR:  
| LD | LDI | LDR |
| :--- | :--- | :--- |
| `M[PC + offset] ← R` | `M[ M[PC + offset] ] ← R` | `M[BaseR + offset] ← R` |
> same idea as load but reversed


## Direct vs Indirect:  
| Direct (LD/ST) | Indirect (LDI/STI) |
| :--- | :--- |
| go to address → take value | go to address → get another address → then value |


## PC vs Base Register:  
| PC-relative (LD/LDI/ST/STI) | Base-relative (LDR/STR) |
| :--- | :--- |
| address = PC + offset | address = register + offset |
| limited range (±256) | more flexible (arrays, pointers) |

## Offset sizes:  
| LD/ST/LDI/STI | LDR/STR |
| :--- | :--- |
| 9-bit (bigger range) | 6-bit (smaller but flexible with base) |

## EA (Effective Address):  
| LD/ST | LDI/STI | LDR/STR |
| :--- | :--- | :--- |
| `EA = PC + offset` | `EA = M[PC + offset]` | `EA = BaseR + offset` |

## Registers:  
| Register ID | Register VALUE |
| :--- | :--- |
| 3 bits → selects R0–R7 | 16 bits → can store x4000, 25, etc. |


## CC (Condition Codes):  
| N | Z | P |
| :--- | :--- | :--- |
| negative | zero | positive |
> updated by: ADD, AND, NOT, LD, LDI, LDR  
> NOT updated by: ST, STR, STI

## BR (Branch):  
| BRnzp | BRz / BRp / BRn |
| :--- | :--- |
| unconditional | conditional |
> order doesn’t matter (nzp = zpn = pnz)

## Labels (loop / else / endloop):  
> not instructions ❗   
> just names for addresses



## HALT vs “STOP”:  
| HALT (TRAP x25) | STOP |
| :--- | :--- |
| real LC-3 instruction | not an LC-3 instruction |
| stops the program execution completely | just a word people use (or comment) meaning “end” |


## TRAPs:  
| x21 | x23 | x25 |
| :--- | :--- | :--- |
| output char | input char | halt |



## JSR vs TRAP:  
| JSR | TRAP |
| :--- | :--- |
| your own function | OS/system function |

---

> LD/LDI → “fixed location from code”  
> LDR → “location based on variable (register)”

---

> [!CAUTION]
> **NOT DONE YET IT IS UNDER MODIFYING.**

$\color{red}{\text{READ 👆👆👆👆👆👆👆👆👆👆👆👆👆}}$





