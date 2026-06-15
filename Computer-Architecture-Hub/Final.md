
<details open>
<summary><b>18May-1Jun</b></summary>

## Complete cycles oredring:  

1) Activate Row  
      ↓  
2) Wait tRCD  
      ↓  
3) Read Column    
      ↓  
4) Wait tCL  
      ↓  
5) Data arrives    
      ↓  
6) Close row (tRP)  




### In short:
1) Open row     -> tRCD  
2) Read column  -> tCL  
3) Close row    -> tRP  
> Read latency = tCL  
> First data access = tRCD + tCL  
> Full access cycle = tRCD + tCL + tRP



## Big Picture:  
Transistor  
   ↓  
SRAM Cell (6T)  
   ↓  
Cache Memory  

Transistor + Capacitor  
   ↓  
DRAM  
   ↓  
SDRAM  
   ↓  
DDR  
   ↓  
Main Memory (RAM)  


## Analogy

Imagine a bookshelf.
  - Opening the book = activating a row (expensive)  
  - Turning to a page = selecting a column (cheap)  

After you're done with the book, you close it before opening another book.  
You don't "close page 5" and then "close page 6".

- That's why we have:
  - Open row   -> tRCD
  - Read col   -> tCL
  - Close row  -> tRP
        
- and not:    
  - Open row
  - Open col
  - Close col
  - Close row  

---

## Virtual Memory:  
- Virtual Memory gives every process its own protected address space (isolation) and makes RAM appear larger by storing inactive pages on SSD/HDD and moving pages between them when needed.

---


## Whenever u see:

- VA  
- Page Size  
- Page Table  


Step 1  
      `Page = VA / PageSize`  
Step 2  
      `Offset = VA % PageSize`  
Step 3  
      Lookup page table  
      `Page -> Frame`  
Step 4  
      `PA = Frame×PageSize + Offset`  

</details>
