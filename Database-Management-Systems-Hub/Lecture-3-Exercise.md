## Exercise - 1
#### ▪ What are the appropriate primary keys?
#### Given your choice of primary keys, identify appropriate foreign keys. :

```
employee (ID, person_name, street, city)
works (ID, company_name, salary)
company (company_name, city)
```
<details>
  <summary>Show Answer</summary>
  <br>
  
  🎯 Primary Keys:
  
  <pre>employee: ID (unique). | works: ID. | company: company_name.</pre>
  <br>
  
🔗 Foreign Keys:

  <pre>works.ID → employee.ID. | works.company_name → company.company_name.</pre>
 </details>

----

## Exercise - 2
#### ▪ Find the name of each employee who lives in city “Miami”.
#### ▪ Find the name of each employee whose salary is greater than $100000.
#### ▪ Find the name of each employee who lives in “Miami” and whose salary is greater than $100000.

```
employee (ID, person_name, street, city)
works (ID, company_name, salary)
company (company_name, city)
```
<details>
  <summary>Show Answer</summary>
  <br>
  
  1️⃣ Employees in Miami:
  
  <pre> π<sub>(person_name)</sub> [σ<sub>(city='Miami')</sub>(employee)]</pre>
  >Steps:
 σ → filter rows (city=Miami) | π → show names
<br>

  2️⃣ Salary > 100000:

  <pre> π<sub>(person_name)</sub> [σ<sub>salary>100000</sub> (employee ⋈ works)]</pre>
  >Why join?
  Because:
   salary in works | name in employee
<br>

  3️⃣ Miami + salary > 100000:
  
  <pre> π<sub>(person_name)</sub> [σ<sub> city='Miami' ∧ salary>100000</sub> (employee ⋈ works)]</pre>
  >Combine conditions.
 </details>

----



## Exercise - 3
#### ▪ Find the ID and name of each employee who works for “BigBank”.
#### ▪ Find the ID, name, and city of residence of each employee who works for “BigBank”.
#### ▪ Find the ID, name, street address, and city of residence of each employee who works for “BigBank” and earns more than $100000.

```
employee (ID, person_name, street, city)
works (ID, company_name, salary)
company (company_name, city)
```
<details>
  <summary>Show Answer</summary>
  <br>
  
  1️⃣ ID + name for BigBank:
  
  <pre> π<sub>(ID, person_name)</sub> [σ <sub>company_name='BigBank'</sub> (employee ⋈ <sub>employee.ID=works.ID</sub>works)]</pre>
  >Steps:
 σ → filter rows (city=Miami) | π → show names
<br>

  2️⃣ ID + name + city:

  <pre> π<sub>(ID, person_name, city)</sub> [σ<sub>company_name='BigBank'</sub> (employee ⋈ <sub>employee.ID=works.ID</sub>works)]</pre>
  >Why join?
  Because:
   salary in works | name in employee
<br>

  3️⃣ + salary > 10000:
  
  <pre> π<sub>(ID, person_name, street, city)</sub> [σ<sub>company_name='BigBank' ∧ salary>10000</sub> (employee ⋈ <sub>employee.ID=works.ID</sub>works)]</pre>
  >Combine conditions.
 </details>

----

## Exercise - 4
#### ▪ Find the ID and name of each employee in this database who lives in the same city as the company for which she or he works.
#### ▪ Find the ID and name of each employee who does not work for “BigBank”.

```
employee (ID, person_name, street, city)
works (ID, company_name, salary)
company (company_name, city)
```
<details>
  <summary>Show Answer</summary>
  <br>
  
  1️⃣ Same city as company:
  
  <pre> π<sub>(ID, person_name)</sub>[σ<sub>employee.city = company.city</sub> (employee ⋈ works ⋈ company)]</pre>
  >Why 3 tables? employee → person info | works → link | company → company city
  >why do we need works? We are asking: “employee lives in same city as the company he WORKS for”. So, works = bridge between employee and company 🔗
<br>

  2️⃣ NOT working for BigBank:

  <pre> π<sub>(ID, person_name)</sub>(employee) − π<sub>(ID, person_name)</sub>[σ<sub>company_name='BigBank'</sub> (employee ⋈ works)]</pre>
  >Meaning: all employees minus BigBank employees

----
