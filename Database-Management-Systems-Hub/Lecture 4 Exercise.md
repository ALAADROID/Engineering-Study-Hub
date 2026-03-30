## SQL Code:

```
/*
alter table Students add gender VARCHAR(10);

alter table Students drop column gender;

SELECT * FROM Students;
*/
/*---------------------------------------*/
/*
create table forTest(
	ID INT
);

select * from forTest;

drop table forTest;

select * from forTest;
*/

/*
SELECT email FROM Students;

select student_id*10 AS student_id_10 from students;
*/

select * from students;

```

----

## Exercise - 1
#### ▪ Write create table commands for the database
#### ▪ Write insert commands for the tables and populate some data

```
employee (person name, street, city)
works (person name, company name, salary)
company (company name, city
```
<details>
  <summary>Show Answer</summary>  <br>

	USE UnknownDB;
	
	/*
	create table employee(
		person_name VARCHAR(100) primary key,
		street VARCHAR(225),
		city VARCHAR(100)
	);
	select * from employee;
	*/
	/*
	create table company(
		company_name VARCHAR(100) primary key,
		city VARCHAR(100)
	);
	*/
	/*
	create table works(
		person_name VARCHAR(100),
		company_name VARCHAR(100),
		salary DECIMAL(10,2),
		PRIMARY KEY (person_name, company_name),
		FOREIGN KEY (person_name) REFERENCES employee(person_name),
		FOREIGN KEY (company_name) REFERENCES company(company_name)
	);
	select * from works;
	*/
	/*
	insert into employee(person_name, street, city)
	values ('Alice Williams', '123 Maple St', 'New York'),
		   ('Bob Smith', '456 Oak Ave', 'Chicago'),
		   ('Charlie Brown', '789 Pine Rd', 'London');
	select * from employee;
	*/
	/*
	insert into company(company_name, city)
	values ('XCorp', 'New York'),
		   ('CloudY', 'Chicago'),
		   ('BigBank', 'London');
	select * from company;
	*/
	/*
	insert into works(person_name, company_name, salary)
	values ('Alice Williams', 'XCorp', 95000.00),
		   ('Bob Smith', 'CloudY', 82000.00),
		   ('Charlie Brown', 'BigBank', 105000.00);
	select * from works;
	*/
	
  <br> </details>

----

## Exercise - 2
#### ▪ Find the name of each employee who lives in city “Miami”.
#### ▪ Find the name of each employee whose salary is greater than $100000.
#### ▪ Find the name of each employee who lives in “Miami” and whose salary is greater than $100000. 

```
employee (person name, street, city)
works (person name, company name, salary)
company (company name, city
```
<details>
  <summary>Show Answer</summary>  <br>

	USE UnknownDB;
	
	/*
	select person_name
	from employee
	where city='Miami';
	*/
	/*
	select e.person_name
	from employee e, works w
	where e.person_name=w.person_name and salary > 100000;
	*/
	/*
	select e.person_name
	from employee e, works w
	where e.person_name=w.person_name
	and e.city='Miami' and w.salary > 100000;
	*/

	
  <br> </details>

----

## Exercise - 3
#### ▪ Find the ID and name of each employee who works for “BigBank”.
#### ▪ Find the ID, name, and city of residence of each employee who works for “BigBank”.
#### ▪ Find the ID, name, street address, and city of residence of each employee who works for “BigBank” and earns more than $10000.

> since there is no ID imma igonre it.

```
employee (person name, street, city)
works (person name, company name, salary)
company (company name, city
```
<details>
  <summary>Show Answer</summary>  <br>

	USE UnknownDB;
	
	/*
	select e.person_name
	from employee e, works w
	where e.person_name=w.person_name
	and w.company_name='BigBank';
	*/
	/*
	select e.person_name, e.city
	from employee e, works w
	where e.person_name=w.person_name
	and w.company_name='BigBank';
	*/
	/*
	select e.person_name, e.street, e.city
	from employee e, works w
	where e.person_name=w.person_name
	and w.company_name='BigBank'
	and w.salary > 100000;
	*/

	
  <br> </details>

  
----

## Exercise - 4
#### ▪ Find the ID and name of each employee in this database who lives in the same city as the company for which she or he works.
#### ▪ Find the ID and name of each employee who does not work for “BigBank”.

> since there is no ID imma igonre it.

```
employee (person name, street, city)
works (person name, company name, salary)
company (company name, city
```
<details>
  <summary>Show Answer</summary>  <br>

	
	use UnknownDB;
	
	/*
	select e.person_name
	from employee e,  company c, works w
	where e.person_name=w.person_name
	and w.company_name=c.company_name
	and e.city=c.city;
	*/
	/*
	select person_name
	from employee
	except
	select e.person_name
	from employee e, works w
	where e.person_name=w.person_name
	and w.company_name='BigBank'
	*/
	/*-------------OR-------------*/
	/*
	select person_name
	from employee 
	where person_name
	not in (
		select person_name
		from works
		where company_name='BigBank'
	);
	*/
	/*-------------OR-------------*/
	/*
	select e.person_name
	from employee e
	where e.person_name
	not in (
		select w.person_name
		from works w
		where w.company_name='BigBank'
	);
	*/


  <br> </details>
  

> The Book should have be used: [Abraham.Silberschatz.Henry.Korth.and.S.Sudarshan.-.Database.System.Concepts.7-McGraw-Hill.Education.2020.pdf](https://github.com/user-attachments/files/26359309/Abraham.Silberschatz.Henry.Korth.and.S.Sudarshan.-.Database.System.Concepts.7-McGraw-Hill.Education.2020.pdf)

> The file aint used: [smallRelationsInsertFile.sql](https://github.com/user-attachments/files/26359349/smallRelationsInsertFile.sql)

> The login-info aint used: $$$$$$$$$$$$$$$$

> The aint tables: [DDL.sql](https://github.com/user-attachments/files/26359383/DDL.sql)


>  ~Example 1 from the book p74~ 
