-- step 1 --> creating the database with name student_info 
-- step 2--> using the student_info database;
-- step 3 --> create table 
create database student_info;
Use student_info;

CREATE TABLE students(
	student_id INT AUTO_INCREMENT PRIMARY KEY ,
    name varchar(100) NOT NULL,
    email varchar(100) UNIQUE, 
    age INT ,
    gender varchar(10),
    course varchar(50),
    marks INT ,
    city varchar(50),
    admission_date DATE 

);
-- check table structure 
DESCRIBE students;

-- Inserting the data 
-- data 1 
INSERT INTO students
(name , email , age , gender , course , marks ,city , admission_date)
VALUES
('Sameer', 'sameergoutam@gmail.com',19,'Male', 'BTECH', 89, 'Bengaluru' , '2025-6-12');

-- data 2 
INSERT into students
(name , email , age , gender , course ,  marks , city , admission_date)
VALUES
('Anant' , 'anant282@gmail.com ' , 19 , 'Male' , 'BTECH' , 90 , 'Rohtak', '2026-6-13');

INSERT into students
(name , email , age , gender , course ,  marks , city , admission_date)
VALUES
('Anu' , 'anant2@gmail.com ' , 19 , 'Female' , 'BCA' , 90 , 'jaipur ', '2026-6-13');

INSERT into students
(name , email , age , gender , course , marks , city , admission_date)
VALUES
('Sam' , 'sam@424gmail.com' , 29 , 'Male' , 'BTECH' , 78, 'USA' , '2025-06-18');

INSERT INTO students
(name , email , age , gender , course , marks , city , admission_date)
VALUES
('Sourabh','sourabh140981@gmail.com','20','Male','BTECH','90','Bihar','2025-09-20');

INSERT INTO students
(name , email , age , gender , course , marks , city , admission_date)
Values
('qaasim','qaasim13@gmail.com' , 19, 'Male','BCA' , 60 , 'Delhi' , '2025-9-23');


-- Display whole table with data 
SELECT * from students;

-- selecting specidfic column 
SELECT name , email , course 
FROM students;

SELECT name , marks
From students;

-- Where clause-- 
-- STUDENTS whose marks greater than 80 
SELECT *
from  students
WHERE marks>85;

SELECT *
from students
WHERE marks<80;

-- Students from banglore 
SELECT * From students
WHERE  city != 'bengaluru';
SELECT *
from students;

SELECT *
From students
WHERE  city ='bengaluru';


SELECT *
From students
WHERE course = 'BCA';

SELECT * From students;

-- AND / OR 
SElECT *
From students
where course = 'Bca'
AND marks>80;

SElECT *
From students
where course = 'Bca'
AND marks<80;


SELECT *
from students
where city = 'delhi'
or city = 'bengaluru';

-- 8th -- BETWEEN 
SELECT *from students
WHERE marks BETWEEN 70 AND 90;

-- 9th -- IN 
SELECT *FROM students
WHERE city IN ('bengaluru' , 'USA');

-- 10th --LIKE 
-- Names starting with a 

SELECT *
FROM students
WHERE name LIKE 'A%';

-- names Starting with r 
SELECT * FROM students
WHERE name LIKE '%r';

-- ORDER BY 
-- highest marks first; 
-- using DESC for decreasing the marks 

SELECT *
FROM students 
ORDER BY marks 	DESC;

SELECT * 
FROM students
ORDER BY marks ASC;


-- 12 th LIMIT 
SELECT *
FROM students
LIMIT 3; -- it is used to allow the table to take 3 row limit 

-- 13 th update 

UPDATE students 
SET marks = 100
WHERE name = 'sameer';

UPDATE students
SET marks = 87 
WHERE student_id = 9;


-- 13th delete from the table 

DELETE FROM students 
-- where name = 'sameer'; its not works here 
WHERE student_id = 1;
SELECT *from students




