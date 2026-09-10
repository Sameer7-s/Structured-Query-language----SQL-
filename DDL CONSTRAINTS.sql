show databases;
CREATE DATABASE Student_Operations;
USE Student_Operations;

CREATE TABLE Student_Operations (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Age INT,
    Gender CHAR(1),
    Course VARCHAR(50)
);

DESC Student_Operations;

INSERT INTO Student_Operations
VALUES
(1001, 'Anant', 'anantgoutam54@gmail.com', 19, 'M', 'BCA'),
(1011, 'Sam', 'sameergoutam123@gmail.com', 19, 'M', 'BCA'),
(1002, 'Rahul', 'rahul@gmail.com', 20, 'M', 'BCA'),
(1003, 'Priya', 'priya@gmail.com', 18, 'F', 'BCom'),
(1004, 'Arjun', 'arjun@gmail.com', 21, 'M', 'BBA'),
(1005, 'Sneha', 'sneha@gmail.com', 19, 'F', 'BCA'),
(1006, 'Priyansh', 'priyansh@gmail.com', 18, 'M', 'BCom');

SELECT * FROM Student_Operations;

-- Update one column
UPDATE Student_Operations
SET Age = 30
WHERE Student_ID = 1003;

-- Update multiple columns
UPDATE Student_Operations
SET Age = 20,
    Gender = 'M'
WHERE Student_ID = 1006;

-- Update using a condition-- 
UPDATE Student_Operations
SET Age = Age + 1
WHERE Age >= 20;

SELECT * FROM Student_Operations;

-- Delete students taking BBA
DELETE FROM Student_Operations
WHERE Course = 'BBA';
select *from student_operations;

-- Delete students younger than 20
DELETE FROM Student_Operations
WHERE Age < 20;

-- Update 
UPDATE Student_Operations
SET Course = 'BCA-CC'
WHERE Student_Name LIKE 'R%H';

UPDATE Student_Operations
SET Age = Age + 1
WHERE Course = 'BCA';

SELECT * FROM Student_Operations;