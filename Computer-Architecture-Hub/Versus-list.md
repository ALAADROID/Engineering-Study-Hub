> [!CAUTION]
> **NOT DONE YET IT IS UNDER MODIFYING.**

$\color{red}{\text{READ 👆👆👆👆👆👆👆👆👆👆👆👆👆}}$


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

##  SRAM vs DRAM:
| SRAM                                   | DRAM                        |
| :------------------------------------- | :-------------------------- |
| Static RAM                             | Dynamic RAM                 |
| Uses flip-flops (≈ 6 transistors/cell) | Uses capacitor + transistor |
| Fast                                   | Slower                      |
| No refresh needed                      | Refresh needed              |
| More expensive                         | Cheaper                     |
| Larger cell size                       | Smaller cell size           |
| Lower density                          | Higher density              |
| Cache memory                           | Main memory (RAM)           |  
> SRAM = fast, expensive, cache  
> DRAM = slower, cheap, main memory

---

## SDRAM vs DRAM:
| SDRAM              | DRAM                     |
| :----------------- | :----------------------- |
| Synchronous DRAM   | Asynchronous DRAM        |
| Uses clock signal  | No clock synchronization |
| Predictable timing | Less predictable timing  |
| Faster             | Slower                   |  
>  SDRAM = DRAM + Clock

---

## DDR vs SDRAM:
| SDRAM                          | DDR SDRAM                       |
| :----------------------------- | :------------------------------ |
| Transfers once per clock cycle | Transfers twice per clock cycle |
| Rising edge only               | Rising + Falling edges          |
| Lower bandwidth                | Higher bandwidth                |

> Example:  
  > SDRAM @ 100 MHz → 100 million transfers/sec  
  > DDR @ 100 MHz → 200 million transfers/sec  

---

## tRCD vs tCL vs tRP:
| Timing | Meaning                       |
| :----- | :---------------------------- |
| tRCD   | Open row → Row Buffer ready   |
| tCL    | Read column from Row Buffer   |
| tRP    | Close current row (Precharge) |
>Order:
> Open Row → Read Column → Close Row  
>  tRCD       tCL          tRP

---

## MHz vs GHz:
| MHz                | GHz                |
| :----------------- | :----------------- |
| 10⁶ Hz             | 10⁹ Hz             |
| Million cycles/sec | Billion cycles/sec |

---

## Cycle Time vs Frequency:
| Frequency      | Cycle Time       |
| :------------- | :--------------- |
| High frequency | Small cycle time |
| Low frequency  | Large cycle time |
> Example:  
> 100 MHz → 10 ns  
> 1 GHz → 1 ns

---

## SRAM Cell vs DRAM Cell:
| SRAM Cell                  | DRAM Cell        |
| :------------------------- | :--------------- |
| 6T (6 transistors)         | 1T + 1 Capacitor |
| Stores using feedback loop | Stores charge    |
| Stable                     | Charge leaks     |
| No refresh                 | Refresh required |







