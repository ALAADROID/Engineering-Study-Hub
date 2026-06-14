
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

</details>
