-- Write a SQL query to display the first name using UPPER and last name using LOWER of all students in upper case.
select StudentID, UPPER(FirstName) as FirstName, LOWER(LastName) as LastName from students;

-- Write a SQL query to display the MIN and MAX value of semester 1 and semester 2 of all students.
SELECT MIN(Semester1) as Min1, MAX(Semester1) as Max1,MIN(Semester2) as Min2, MAX(Semester2) as Max2 FROM students;