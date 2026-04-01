## SQL Code:

```sql
use UnknownDB;

/*
select dept
from Students
where dept not like 'Computer%';
*/
/*
select student_id
from Students
order by student_id desc;
*/

/*
select student_id
from Students
order by student_id asc;
*/
/*
select student_id from Students where email is null;
*/
/*
select avg(student_id)
from Students;
*/
/*
select max(student_id)
from Students;
*/
/*
select sum(student_id)
from Students;
*/
/*
select avg(student_id) from Students as avg_student_id;
*/
/*
select count(distinct student_id) from Students where dept='Computer Engineering';
*/
/*
select count (*) from Students;
*/
/*
insert into Students(student_id, first_name, last_name, dept)
values ('106', 'Mustafa', 'tabba', 'Computer Enginnering');
*/
/*
select dept, avg(student_id) as avg_student_id
from Students
group by dept;
*/
/*
select dept, email, avg(student_id) as avg_student_id
from Students
group by dept, email;
*/
```

----

## Exercise - 1
#### ▪ Find the titles of courses in the Comp. Sci. department that have 3 credits.
#### ▪ Find the IDs of all students who were taught by an instructor named Einstein; make sure there are no duplicates in the result.

<pre>
classroom (<u>building</u>, <u>room_number</u>, capacity)
department (<u>dept_name</u>, building, budget)
course (<u>course_id</u>, title, dept_name, credits)
instructor (<u>ID</u>, name, dept_name, salary)
section (<u>course_id</u>, <u>sec_id</u>, <u>semester</u>, <u>year</u>, building, room_number, time_slot_id)
teaches (<u>ID</u>, <u>course_id</u>, <u>sec_id</u>, <u>semester</u>, <u>year</u>)
student (<u>ID</u>, name, dept_name, tot_cred)
takes (<u>ID</u>, <u>course_id</u>, <u>sec_id</u>, <u>semester</u>, <u>year</u>, grade)
advisor (<u>s_ID</u>, <u>i_ID</u>)
time_slot (<u>time_slot_id</u>, <u>day</u>, <u>start_time</u>, end_time)
prereq (<u>course_id</u>, <u>prereq_id</u>)
</pre>

> [!NOTE]
> The tables file : [DDL(creation commands).sql](https://github.com/user-attachments/files/26400085/DDL.creation.commands.sql)
<details><summary>The commands to copy:</summary>
  
  ```sql
  create table classroom
	(building		varchar(15),
	 room_number		varchar(7),
	 capacity		numeric(4,0),
	 primary key (building, room_number)
	);

create table department
	(dept_name		varchar(20), 
	 building		varchar(15), 
	 budget		        numeric(12,2) check (budget > 0),
	 primary key (dept_name)
	);

create table course
	(course_id		varchar(8), 
	 title			varchar(50), 
	 dept_name		varchar(20),
	 credits		numeric(2,0) check (credits > 0),
	 primary key (course_id),
	 foreign key (dept_name) references department (dept_name)
		on delete set null
	);

create table instructor
	(ID			varchar(5), 
	 name			varchar(20) not null, 
	 dept_name		varchar(20), 
	 salary			numeric(8,2) check (salary > 29000),
	 primary key (ID),
	 foreign key (dept_name) references department (dept_name)
		on delete set null
	);

create table section
	(course_id		varchar(8), 
         sec_id			varchar(8),
	 semester		varchar(6)
		check (semester in ('Fall', 'Winter', 'Spring', 'Summer')), 
	 year			numeric(4,0) check (year > 1701 and year < 2100), 
	 building		varchar(15),
	 room_number		varchar(7),
	 time_slot_id		varchar(4),
	 primary key (course_id, sec_id, semester, year),
	 foreign key (course_id) references course (course_id)
		on delete cascade,
	 foreign key (building, room_number) references classroom (building, room_number)
		on delete set null
	);

create table teaches
	(ID			varchar(5), 
	 course_id		varchar(8),
	 sec_id			varchar(8), 
	 semester		varchar(6), 
	 year			numeric(4,0),
	 primary key (ID, course_id, sec_id, semester, year),
	 foreign key (course_id, sec_id, semester, year) references section (course_id, sec_id, semester, year)
		on delete cascade,
	 foreign key (ID) references instructor (ID)
		on delete cascade
	);

create table student
	(ID			varchar(5), 
	 name			varchar(20) not null, 
	 dept_name		varchar(20), 
	 tot_cred		numeric(3,0) check (tot_cred >= 0),
	 primary key (ID),
	 foreign key (dept_name) references department (dept_name)
		on delete set null
	);

create table takes
	(ID			varchar(5), 
	 course_id		varchar(8),
	 sec_id			varchar(8), 
	 semester		varchar(6),
	 year			numeric(4,0),
	 grade		        varchar(2),
	 primary key (ID, course_id, sec_id, semester, year),
	 foreign key (course_id, sec_id, semester, year) references section (course_id, sec_id, semester, year)
		on delete cascade,
	 foreign key (ID) references student (ID)
		on delete cascade
	);

create table advisor
	(s_ID			varchar(5),
	 i_ID			varchar(5),
	 primary key (s_ID),
	 foreign key (i_ID) references instructor (ID)
		on delete set null,
	 foreign key (s_ID) references student (ID)
		on delete cascade
	);

create table time_slot
	(time_slot_id		varchar(4),
	 day			varchar(1),
	 start_hr		numeric(2) check (start_hr >= 0 and start_hr < 24),
	 start_min		numeric(2) check (start_min >= 0 and start_min < 60),
	 end_hr			numeric(2) check (end_hr >= 0 and end_hr < 24),
	 end_min		numeric(2) check (end_min >= 0 and end_min < 60),
	 primary key (time_slot_id, day, start_hr, start_min)
	);

create table prereq
	(course_id		varchar(8), 
	 prereq_id		varchar(8),
	 primary key (course_id, prereq_id),
	 foreign key (course_id) references course (course_id)
		on delete cascade,
	 foreign key (prereq_id) references course (course_id)
	);
  ```
</details>

> [!NOTE]
> The info. inserted : [smallRelationsInsertFile.sql](https://github.com/user-attachments/files/26400522/smallRelationsInsertFile.sql)
 <details><summary>The commands to copy:</summary>
  
    ```sql
    delete from prereq;
    delete from time_slot;
    delete from advisor;
    delete from takes;
    delete from student;
    delete from teaches;
    delete from section;
    delete from instructor;
    delete from course;
    delete from department;
    delete from classroom;
    insert into classroom values ('Packard', '101', '500');
    insert into classroom values ('Painter', '514', '10');
    insert into classroom values ('Taylor', '3128', '70');
    insert into classroom values ('Watson', '100', '30');
    insert into classroom values ('Watson', '120', '50');
    insert into department values ('Biology', 'Watson', '90000');
    insert into department values ('Comp. Sci.', 'Taylor', '100000');
    insert into department values ('Elec. Eng.', 'Taylor', '85000');
    insert into department values ('Finance', 'Painter', '120000');
    insert into department values ('History', 'Painter', '50000');
    insert into department values ('Music', 'Packard', '80000');
    insert into department values ('Physics', 'Watson', '70000');
    insert into course values ('BIO-101', 'Intro. to Biology', 'Biology', '4');
    insert into course values ('BIO-301', 'Genetics', 'Biology', '4');
    insert into course values ('BIO-399', 'Computational Biology', 'Biology', '3');
    insert into course values ('CS-101', 'Intro. to Computer Science', 'Comp. Sci.', '4');
    insert into course values ('CS-190', 'Game Design', 'Comp. Sci.', '4');
    insert into course values ('CS-315', 'Robotics', 'Comp. Sci.', '3');
    insert into course values ('CS-319', 'Image Processing', 'Comp. Sci.', '3');
    insert into course values ('CS-347', 'Database System Concepts', 'Comp. Sci.', '3');
    insert into course values ('EE-181', 'Intro. to Digital Systems', 'Elec. Eng.', '3');
    insert into course values ('FIN-201', 'Investment Banking', 'Finance', '3');
    insert into course values ('HIS-351', 'World History', 'History', '3');
    insert into course values ('MU-199', 'Music Video Production', 'Music', '3');
    insert into course values ('PHY-101', 'Physical Principles', 'Physics', '4');
    insert into instructor values ('10101', 'Srinivasan', 'Comp. Sci.', '65000');
    insert into instructor values ('12121', 'Wu', 'Finance', '90000');
    insert into instructor values ('15151', 'Mozart', 'Music', '40000');
    insert into instructor values ('22222', 'Einstein', 'Physics', '95000');
    insert into instructor values ('32343', 'El Said', 'History', '60000');
    insert into instructor values ('33456', 'Gold', 'Physics', '87000');
    insert into instructor values ('45565', 'Katz', 'Comp. Sci.', '75000');
    insert into instructor values ('58583', 'Califieri', 'History', '62000');
    insert into instructor values ('76543', 'Singh', 'Finance', '80000');
    insert into instructor values ('76766', 'Crick', 'Biology', '72000');
    insert into instructor values ('83821', 'Brandt', 'Comp. Sci.', '92000');
    insert into instructor values ('98345', 'Kim', 'Elec. Eng.', '80000');
    insert into section values ('BIO-101', '1', 'Summer', '2017', 'Painter', '514', 'B');
    insert into section values ('BIO-301', '1', 'Summer', '2018', 'Painter', '514', 'A');
    insert into section values ('CS-101', '1', 'Fall', '2017', 'Packard', '101', 'H');
    insert into section values ('CS-101', '1', 'Spring', '2018', 'Packard', '101', 'F');
    insert into section values ('CS-190', '1', 'Spring', '2017', 'Taylor', '3128', 'E');
    insert into section values ('CS-190', '2', 'Spring', '2017', 'Taylor', '3128', 'A');
    insert into section values ('CS-315', '1', 'Spring', '2018', 'Watson', '120', 'D');
    insert into section values ('CS-319', '1', 'Spring', '2018', 'Watson', '100', 'B');
    insert into section values ('CS-319', '2', 'Spring', '2018', 'Taylor', '3128', 'C');
    insert into section values ('CS-347', '1', 'Fall', '2017', 'Taylor', '3128', 'A');
    insert into section values ('EE-181', '1', 'Spring', '2017', 'Taylor', '3128', 'C');
    insert into section values ('FIN-201', '1', 'Spring', '2018', 'Packard', '101', 'B');
    insert into section values ('HIS-351', '1', 'Spring', '2018', 'Painter', '514', 'C');
    insert into section values ('MU-199', '1', 'Spring', '2018', 'Packard', '101', 'D');
    insert into section values ('PHY-101', '1', 'Fall', '2017', 'Watson', '100', 'A');
    insert into teaches values ('10101', 'CS-101', '1', 'Fall', '2017');
    insert into teaches values ('10101', 'CS-315', '1', 'Spring', '2018');
    insert into teaches values ('10101', 'CS-347', '1', 'Fall', '2017');
    insert into teaches values ('12121', 'FIN-201', '1', 'Spring', '2018');
    insert into teaches values ('15151', 'MU-199', '1', 'Spring', '2018');
    insert into teaches values ('22222', 'PHY-101', '1', 'Fall', '2017');
    insert into teaches values ('32343', 'HIS-351', '1', 'Spring', '2018');
    insert into teaches values ('45565', 'CS-101', '1', 'Spring', '2018');
    insert into teaches values ('45565', 'CS-319', '1', 'Spring', '2018');
    insert into teaches values ('76766', 'BIO-101', '1', 'Summer', '2017');
    insert into teaches values ('76766', 'BIO-301', '1', 'Summer', '2018');
    insert into teaches values ('83821', 'CS-190', '1', 'Spring', '2017');
    insert into teaches values ('83821', 'CS-190', '2', 'Spring', '2017');
    insert into teaches values ('83821', 'CS-319', '2', 'Spring', '2018');
    insert into teaches values ('98345', 'EE-181', '1', 'Spring', '2017');
    insert into student values ('00128', 'Zhang', 'Comp. Sci.', '102');
    insert into student values ('12345', 'Shankar', 'Comp. Sci.', '32');
    insert into student values ('19991', 'Brandt', 'History', '80');
    insert into student values ('23121', 'Chavez', 'Finance', '110');
    insert into student values ('44553', 'Peltier', 'Physics', '56');
    insert into student values ('45678', 'Levy', 'Physics', '46');
    insert into student values ('54321', 'Williams', 'Comp. Sci.', '54');
    insert into student values ('55739', 'Sanchez', 'Music', '38');
    insert into student values ('70557', 'Snow', 'Physics', '0');
    insert into student values ('76543', 'Brown', 'Comp. Sci.', '58');
    insert into student values ('76653', 'Aoi', 'Elec. Eng.', '60');
    insert into student values ('98765', 'Bourikas', 'Elec. Eng.', '98');
    insert into student values ('98988', 'Tanaka', 'Biology', '120');
    insert into takes values ('00128', 'CS-101', '1', 'Fall', '2017', 'A');
    insert into takes values ('00128', 'CS-347', '1', 'Fall', '2017', 'A-');
    insert into takes values ('12345', 'CS-101', '1', 'Fall', '2017', 'C');
    insert into takes values ('12345', 'CS-190', '2', 'Spring', '2017', 'A');
    insert into takes values ('12345', 'CS-315', '1', 'Spring', '2018', 'A');
    insert into takes values ('12345', 'CS-347', '1', 'Fall', '2017', 'A');
    insert into takes values ('19991', 'HIS-351', '1', 'Spring', '2018', 'B');
    insert into takes values ('23121', 'FIN-201', '1', 'Spring', '2018', 'C+');
    insert into takes values ('44553', 'PHY-101', '1', 'Fall', '2017', 'B-');
    insert into takes values ('45678', 'CS-101', '1', 'Fall', '2017', 'F');
    insert into takes values ('45678', 'CS-101', '1', 'Spring', '2018', 'B+');
    insert into takes values ('45678', 'CS-319', '1', 'Spring', '2018', 'B');
    insert into takes values ('54321', 'CS-101', '1', 'Fall', '2017', 'A-');
    insert into takes values ('54321', 'CS-190', '2', 'Spring', '2017', 'B+');
    insert into takes values ('55739', 'MU-199', '1', 'Spring', '2018', 'A-');
    insert into takes values ('76543', 'CS-101', '1', 'Fall', '2017', 'A');
    insert into takes values ('76543', 'CS-319', '2', 'Spring', '2018', 'A');
    insert into takes values ('76653', 'EE-181', '1', 'Spring', '2017', 'C');
    insert into takes values ('98765', 'CS-101', '1', 'Fall', '2017', 'C-');
    insert into takes values ('98765', 'CS-315', '1', 'Spring', '2018', 'B');
    insert into takes values ('98988', 'BIO-101', '1', 'Summer', '2017', 'A');
    insert into takes values ('98988', 'BIO-301', '1', 'Summer', '2018', null);
    insert into advisor values ('00128', '45565');
    insert into advisor values ('12345', '10101');
    insert into advisor values ('23121', '76543');
    insert into advisor values ('44553', '22222');
    insert into advisor values ('45678', '22222');
    insert into advisor values ('76543', '45565');
    insert into advisor values ('76653', '98345');
    insert into advisor values ('98765', '98345');
    insert into advisor values ('98988', '76766');
    insert into time_slot values ('A', 'M', '8', '0', '8', '50');
    insert into time_slot values ('A', 'W', '8', '0', '8', '50');
    insert into time_slot values ('A', 'F', '8', '0', '8', '50');
    insert into time_slot values ('B', 'M', '9', '0', '9', '50');
    insert into time_slot values ('B', 'W', '9', '0', '9', '50');
    insert into time_slot values ('B', 'F', '9', '0', '9', '50');
    insert into time_slot values ('C', 'M', '11', '0', '11', '50');
    insert into time_slot values ('C', 'W', '11', '0', '11', '50');
    insert into time_slot values ('C', 'F', '11', '0', '11', '50');
    insert into time_slot values ('D', 'M', '13', '0', '13', '50');
    insert into time_slot values ('D', 'W', '13', '0', '13', '50');
    insert into time_slot values ('D', 'F', '13', '0', '13', '50');
    insert into time_slot values ('E', 'T', '10', '30', '11', '45 ');
    insert into time_slot values ('E', 'R', '10', '30', '11', '45 ');
    insert into time_slot values ('F', 'T', '14', '30', '15', '45 ');
    insert into time_slot values ('F', 'R', '14', '30', '15', '45 ');
    insert into time_slot values ('G', 'M', '16', '0', '16', '50');
    insert into time_slot values ('G', 'W', '16', '0', '16', '50');
    insert into time_slot values ('G', 'F', '16', '0', '16', '50');
    insert into time_slot values ('H', 'W', '10', '0', '12', '30');
    insert into prereq values ('BIO-301', 'BIO-101');
    insert into prereq values ('BIO-399', 'BIO-101');
    insert into prereq values ('CS-190', 'CS-101');
    insert into prereq values ('CS-315', 'CS-101');
    insert into prereq values ('CS-319', 'CS-101');
    insert into prereq values ('CS-347', 'CS-101');
    insert into prereq values ('EE-181', 'PHY-101');
    ```
  </details>



<details>
  <summary>Show Answer</summary>  <br>

	use UnknownDB;
  
    /*
    select title 
    from course
    where dept_name='Comp. Sci.'
    and credits = '3';
    */
    
    select distinct tk.id
    from Student s, takes tk, instructor i, teaches t
    where s.id = tk.id
    and t.id=i.id
    and t.sec_id = tk.sec_id
    and t.year=tk.year
    and t.course_id=tk.course_id
    and t.semester=tk.semester
    and i.name = 'Einstein';
  
  <br> </details>

----
<br>

## Exercise - 2
#### ▪ Increase the salary of each instructor in the Comp. Sci. department by 20%.
#### ▪ Delete all courses that have never been offered (i.e., do not occur in the section relation).
#### ▪ Insert every student whose tot cred attribute is greater than 100 as an instructor in the same department, with a salary of $10,000.

<pre>
classroom (<u>building</u>, <u>room_number</u>, capacity)
department (<u>dept_name</u>, building, budget)
course (<u>course_id</u>, title, dept_name, credits)
instructor (<u>ID</u>, name, dept_name, salary)
section (<u>course_id</u>, <u>sec_id</u>, <u>semester</u>, <u>year</u>, building, room_number, time_slot_id)
teaches (<u>ID</u>, <u>course_id</u>, <u>sec_id</u>, <u>semester</u>, <u>year</u>)
student (<u>ID</u>, name, dept_name, tot_cred)
takes (<u>ID</u>, <u>course_id</u>, <u>sec_id</u>, <u>semester</u>, <u>year</u>, grade)
advisor (<u>s_ID</u>, <u>i_ID</u>)
time_slot (<u>time_slot_id</u>, <u>day</u>, <u>start_time</u>, end_time)
prereq (<u>course_id</u>, <u>prereq_id</u>)
</pre>

<details>
  <summary>Show Answer</summary>  <br>

	use UnknownDB;
    /*
    select salary from instructor;
    
    update instructor
    set salary = salary*1.2
    where dept_name = 'Comp. Sci.';
    
    select salary from instructor;
    */
    /*
    delete from course
    where course_id not in (
    	select course_id
    	from section
    );
    */
    
    
    insert into instructor (ID, name, dept_name, salary)
    select ID, name, dept_name, 1000
    from student
    where tot_cred > 100;

	
  <br> </details>

----

## Exercise - 3
#### ▪ List the names and departments of students whose names contain the syllable ‘an’.
#### ▪ List the courses taken by the students, including student name, course name, year taken, semester, and passing grade.

<pre>
classroom (<u>building</u>, <u>room_number</u>, capacity)
department (<u>dept_name</u>, building, budget)
course (<u>course_id</u>, title, dept_name, credits)
instructor (<u>ID</u>, name, dept_name, salary)
section (<u>course_id</u>, <u>sec_id</u>, <u>semester</u>, <u>year</u>, building, room_number, time_slot_id)
teaches (<u>ID</u>, <u>course_id</u>, <u>sec_id</u>, <u>semester</u>, <u>year</u>)
student (<u>ID</u>, name, dept_name, tot_cred)
takes (<u>ID</u>, <u>course_id</u>, <u>sec_id</u>, <u>semester</u>, <u>year</u>, grade)
advisor (<u>s_ID</u>, <u>i_ID</u>)
time_slot (<u>time_slot_id</u>, <u>day</u>, <u>start_time</u>, end_time)
prereq (<u>course_id</u>, <u>prereq_id</u>)
</pre>

<details>
  <summary>Show Answer</summary>  <br>

    use UnknownDB;
    /*
    select name, dept_name
    from student
    where name like '%an%';
    */
    select student.name, course.title, takes.semester, takes.year, takes.grade
    from student, takes, course
    where student.ID = takes.ID 
    and takes.course_id = course.course_id;

	
  <br> </details>

----


## Exercise - 4
#### ▪ Find all the instructors who earn the highest salaries (there may be more than one person earning the same salary).
#### ▪ Find the number of courses offered in each department.

<pre>
classroom (<u>building</u>, <u>room_number</u>, capacity)
department (<u>dept_name</u>, building, budget)
course (<u>course_id</u>, title, dept_name, credits)
instructor (<u>ID</u>, name, dept_name, salary)
section (<u>course_id</u>, <u>sec_id</u>, <u>semester</u>, <u>year</u>, building, room_number, time_slot_id)
teaches (<u>ID</u>, <u>course_id</u>, <u>sec_id</u>, <u>semester</u>, <u>year</u>)
student (<u>ID</u>, name, dept_name, tot_cred)
takes (<u>ID</u>, <u>course_id</u>, <u>sec_id</u>, <u>semester</u>, <u>year</u>, grade)
advisor (<u>s_ID</u>, <u>i_ID</u>)
time_slot (<u>time_slot_id</u>, <u>day</u>, <u>start_time</u>, end_time)
prereq (<u>course_id</u>, <u>prereq_id</u>)
</pre>

<details>
  <summary>Show Answer</summary>  <br>

	use UnknownDB;

    /*
    select name
    from instructor
    where salary = (
    	select max(salary)
    	from instructor
    );
    */

select course.dept_name, count(course.course_id)
from section,course
where course.course_id = section.course_id
group by course.dept_name

	
  <br> </details>

----



## Exercise - 5
#### ▪ Find the ID and name of each student who has not taken any course offered before 2017.
#### ▪ For each department, find the maximum salary of instructors in that department. You may assume that every department has at least one instructor.

<pre>
classroom (<u>building</u>, <u>room_number</u>, capacity)
department (<u>dept_name</u>, building, budget)
course (<u>course_id</u>, title, dept_name, credits)
instructor (<u>ID</u>, name, dept_name, salary)
section (<u>course_id</u>, <u>sec_id</u>, <u>semester</u>, <u>year</u>, building, room_number, time_slot_id)
teaches (<u>ID</u>, <u>course_id</u>, <u>sec_id</u>, <u>semester</u>, <u>year</u>)
student (<u>ID</u>, name, dept_name, tot_cred)
takes (<u>ID</u>, <u>course_id</u>, <u>sec_id</u>, <u>semester</u>, <u>year</u>, grade)
advisor (<u>s_ID</u>, <u>i_ID</u>)
time_slot (<u>time_slot_id</u>, <u>day</u>, <u>start_time</u>, end_time)
prereq (<u>course_id</u>, <u>prereq_id</u>)
</pre>

<details>
  <summary>Show Answer</summary>  <br>

	use UnknownDB;
    /*
    SELECT ID, name
    FROM student
    EXCEPT
    SELECT S.ID, S.name
    FROM student S, takes T
    WHERE S.ID = T.ID AND T.year < 2017;
    */
    SELECT dept_name, MAX(salary)
    FROM instructor
    GROUP BY dept_name

	
  <br> </details>

----



## Exercise - 6
#### ▪ Find the ID and name of each employee who does not work for “BigBank”.

```
employee (ID,person_name, street, city)
works (ID, company_name, salary)
company (company_name, city) 
```

<details>
  <summary>Show Answer</summary>  <br>

	use UnknownDB;
    /*
    SELECT ID, person_name
    FROM Employee
    EXCEPT
    SELECT E.ID, E.person_name
    FROM Employee E, Works W
    WHERE E.ID = W.ID AND W.company_name = 'BigBank';
    */
    SELECT ID, person_name
    FROM Employee
    WHERE ID NOT IN (
     SELECT ID
     FROM Works
     WHERE company_name = 'BigBank'
    )

	
  <br> </details>

----
