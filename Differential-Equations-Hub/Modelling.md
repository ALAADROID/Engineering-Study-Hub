## What is MODELLING:  
- Converting wrods → equation
  
## THE GOLDEN RULE (MEMORIZE THIS)  
`d(quantity)/dx = (rate in)−(rate out)+(growth/decay)`

### KEYWORDS:  
- rate of change(derivative) → `dP/dx`  
- proportional to the population → `rP`  
> r>0 → growth `+rP` 
> r<0 → decay `-rP`

- increase/decrease, enters/leaves, in/out by fixed number → +15(add) , -21(subtract)
- in absence of outside factors → ignore constants only , `dP/dx = rP`  
> we use this to find `r`


### General structure:  
- Population → `dP/dx​=rP+(in)−(out)`

---

## Exm:  
A population of insects in a region will grow at a rate that is proportional to their current population with proportionality constant r>0.  
In the absence of any outside factors the population will increase 2.71828 times (ln(2.71828 ) =1 → e=2.71828) in 10 days’ time.  
On any given day there is a net migration into the area of 15 insects and 21 are eaten by the local bird population and 8 die of natural causes.  
If there are initially 100 insects in the area will the population survive?  
If not, when do they die out?
| The exm. |
|---|
| <img width="846" height="298" alt="image" src="https://github.com/user-attachments/assets/6de0acdc-9971-4bfc-a83f-f5943119b8b4" /> |

### Sol:  
- Step 1 - Build DE:  
dP/dx = rP+(in-out)  
Net Change: 15-21-8 = -4 → dP/dx = rP-14

- Step 2 - Find r:   
dP/dx=rP → 1/p dP = r dx  
lnP = rx+c → P(x) = e<sup>rx+c</sup>=e<sup>c</sup>.e<sup>rx</sup>=c<sub>1</sub>e<sup>rx</sup>  
> **population becomes 2.71828 times in 10 days**  
> "time = 10 days" → this is your x=10  
> “increase e times” → population becomes e⋅P<sub>i</sub>

Translate this to math, @ x=10 → P(10)=e.P<sub>i</sub>

  Since P<sub>i</sub>=p(0) → p(0)=C<sub>1</sub>*1 → P<sub>i</sub>=C<sub>1</sub>  
  So the equation now is P(x)=P<sub>i</sub>e<sup>rx</sup>  

> The constant C becomes the initial value when you plug x=0

  P<sub>f</sub>=e.P<sub>i</sub> @ x=10 P(10)=P<sub>i</sub>.e<sup>10r</sup> & P(10)=P<sub>i</sub>.e

  Compare now, P<sub>i</sub>.e = P<sub>i</sub>.e<sup>10r</sup> so, 10r=1 → `r=1/10`


  - Step 4 - Integrating factor:  
  [Click here to see how](https://github.com/ALAADROID/Engineering-Study-Hub/blob/main/Differential-Equations-Hub/Integrating-Factors.md)

   P=140+c<sup>x/10</sup>


- Step 5 - Initial value condition:  
  p(0)=100 → 140+c=100 → c=-40  

  So the final sol. is P(x)=140-40e<sup>x/10</sup>  


#### Survival?    
- As x ↑:  
  e<sup>x/10</sup> → P ↓  

#### When?    
140-40e<sup>x/10</sup>=0  
x=10ln(3.5)  



---

## Q1 — Population + decay

A bacteria population grows at a rate proportional to its size with constant r.  
In the absence of external effects, it doubles in 5 hours.

However, 20 bacteria die per hour due to environment.  
Initially, there are 200 bacteria.

- Tasks:  
  Build the differential equation  
  Find r  
  Find P(x)  
  Will the population die out? If yes, when?  

### Sol:  
  
  p'-(ln2)/5 p=-20  
  
  v(x)=e<sup>∫(-ln<sub>2</sub>/5)dx</sup> = e<sup>-ln<sub>2</sub>/5</sup>

  
    
