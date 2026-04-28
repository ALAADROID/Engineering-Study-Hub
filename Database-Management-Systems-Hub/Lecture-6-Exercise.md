
## SQL Code:

```sql
use UnknownDB;

/*
select * from student;

select distinct name
from student
where ID = 44553 and dept_name = 'Physics' and
	name in (select name 
			 from student 
			 where ID = 45678 and dept_name = 'Physics'
			);
*/
/*
select name
from student
where name not in ('Levy','Aoi');
*/
/*
select * from takes;
select * from teaches;
select count (distinct ID)
from student
where (course_id, sec_id, semester, year) in(
	select course_id, sec_id, semester, year
	from teaches
	where teaches.ID= 10101);
*/


SELECT course_id
FROM section S
WHERE semester='Fall' AND year=2017
AND EXISTS (
    SELECT *
    FROM section T
    WHERE T.course_id = S.course_id
    AND semester='Spring' AND year=2018
);
```

----

## Exercise - 1
#### ▪  List the female employees in the "Software" department by their first and last names and addresses.
#### ▪  List the projects in the "R&D" category developed by the "Software" department
#### ▪  List the employee ID numbers, first names, and last names of all employees working on project no 2, 3, or 5


<pre>
Employee (empID, firstName, lastName, jobTitle, salary, address, gender,
hireDate, managerID, deptID)
Department (deptID, deptName, managerID)
Project (projNo, projName, projLocation, category, deptID)
Works_On (empID, projNo, hours
</pre>




<details>
  <summary>Show Answer</summary>  <br>

  ```sql
	use UnknownDB;
  
  select firstName, lastName, address
  from Employee
  where gender = 'Female'
  AND deptID IN (
  	select deptID 
  	from Department
  	where deptName = 'Software'
  );
  
  /*----------------------------------------*/
  
  select projName
  from Project 
  where category = 'R&D'
  AND deptID IN (
  	select deptID
  	from Department
  	where dpetName = 'Software'
  );
  
  /*--------------------------------------*/
  
  select empID, firtName, lastName
  from Employee
  where empID IN (
  	select empID
  	from Works_On
  	where projNo IN (2,3,5)
  );
  
  ```

  
  <br> </details>

----
<br>

## Exercise - 2
#### ▪ Write an SQL statement that increases the salaries of all employees working on projects in the ‘R&D’ category by 15%
#### ▪ List the department ID, name, number of employees, average salary, and total salary for each department

<pre>
  Employee (empID, firstName, lastName, jobTitle, salary, address, gender,
  hireDate, managerID, deptID)
  Department (deptID, deptName, managerID)
  Project (projNo, projName, projLocation, category, deptID)
  Works_On (empID, projNo, hours
</pre>

<details>
  <summary>Show Answer</summary>  <br>

  ```sql
  update Employee
  set salary = salary*1.15
  where empID IN (
  	select empID
  	from Works_On
  	where projNo IN (
  		select projNo
  		from Project
  		where category = 'R&D'
  	)
  );
  
  /*------------------------------------*/
  
  
  SELECT deptID, deptName,
   (SELECT COUNT(*) FROM Employee e WHERE e.deptID = d.deptID) AS numEmployees,
   (SELECT AVG(salary) FROM Employee e WHERE e.deptID = d.deptID) AS avgSalary,
   (SELECT SUM(salary) FROM Employee e WHERE e.deptID = d.deptID) AS totalSalary
  FROM Department d;

  ```
  
  <br> </details>

----

## Exercise - 3
#### ▪  List the project no, project name, and number of employees for each project with more than 10 employees
#### ▪ List all company employees, including their first name, last name, and the first and last names of their managers (if any)...

<pre>
Employee (empID, firstName, lastName, jobTitle, salary, address, gender,
hireDate, managerID, deptID)
Department (deptID, deptName, managerID)
Project (projNo, projName, projLocation, category, deptID)
Works_On (empID, projNo, hours)
</pre>

<details>
  <summary>Show Answer</summary>  <br>

    ```sql
    
    
    ```

	
  <br> </details>

----


## Exercise - 4
#### ▪ 
#### ▪ 

<pre>
  
</pre>

<details>
  <summary>Show Answer</summary>  <br>

      ```sql

    
      ```

	
  <br> </details>

----



## Exercise - 5
#### ▪ 
#### ▪ 

<pre>
</pre>

<details>
  <summary>Show Answer</summary>  <br>

	  ```sql

    ```

	
  <br> </details>

----



## Exercise - 6
#### ▪ 

```

```

<details>
  <summary>Show Answer</summary>  <br>
    
    ```sql
    
    ```
	
  <br> </details>

----
