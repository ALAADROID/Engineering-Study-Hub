## SQL Code:

```
USE UnknownDB;

/*

CREATE TABLE Students (

    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    dept VARCHAR(100)
    
);

INSERT INTO Students 
VALUES (102, 'FirstName', 'LastName', 'FirstNameLastName@test.com', 'Computer Engineering');

INSERT INTO Students 
VALUES (202, 'TestFirstName', 'TestLastName', 'TestFirstNameTestLastName@test.com', 'Computer Engineering');


UPDATE Students
SET dept = 'Software Engineering'
WHERE student_id = 102;

SELECT * FROM Students;

SELECT * FROM Students WHERE student_id = 202;

DELETE FROM Students WHERE student_id = 102;

*/

SELECT * FROM Students;
```
