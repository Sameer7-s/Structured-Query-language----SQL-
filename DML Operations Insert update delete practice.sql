-- PROGRAM 1 

-- SHOW DATABASES;
-- CREATE DATABASE CollegeDB;
-- SHOW DATABASES;
-- USE CollegeDB;
-- SELECT DATABASE();
-- SHOW TABLES;
-- CREATE DATABASE TestDB;
-- SHOW DATABASES;
-- DROP database TestDB;
-- Show databases;
-- CREATE DATABASE IF NOT EXISTS collegeDB;
-- DROP database IF exists TestDB;

-- Program 2 

-- Create Database info;
-- Use info;

-- CREATE TABLE Departments (
--     department_id INT PRIMARY KEY,
--     department_name VARCHAR(50) NOT NULL UNIQUE
-- );

-- CREATE TABLE Students (
--     student_id INT PRIMARY KEY,
--     student_name VARCHAR(100) NOT NULL,
--     email VARCHAR(100) UNIQUE,
--     age INT CHECK (age >= 18),
--     department_id INT,
--     FOREIGN KEY (department_id)
--         REFERENCES Departments(department_id)
-- );
-- SHOW databases;
-- Select *From info;


-- Program 3 


CREATE TABLE Student_Operations1 (
		Student_id INT PRIMARY KEY , 
        Student_name VARCHAR(100) NOT NULL , 
        Email VARCHAR(50) UNIQUE , 
        Age INT , 
        Gender Char(1), 
        Course VARCHAR(50)
        );
        -- view Table structure 
desc Student_Operations1;

-- insert single record 
Insert into Student_Operations1
Values (1001 , 'Ram' , 'ram2@gmail.com' , 20, 'F' , 'BCA');
SELECT *From Student_Operations1;
	
-- Inserting multiple record in a single time 
INSERT into Student_Operations1
VALUES(1015 , 'Anush' , 'anush12@gmail.com' , 19, 'F' , 'BCA'),
	  (1002 , 'Aman' , 'aman194@gmail.com' , 20, 'M' , 'BTECH'),
      (1003 , 'Anjali' , 'anjali242@gmail.com' , 21, 'F' , 'BCOM'),
      (1004 , 'Anurag' , 'anurag112@gmail.com' , 22, 'M' , 'BCA');
	

SELECT *From Student_Operations1;

-- insert on specify columns 
INSERT Student_Operations1
(Student_ID, Student_name,Email,Age , Gender , Course)
VALUES(1024, 'Sam' , 'sam123@gmail.com' , 19, 'M' , 'BCA');


-- update single column 
UPDATE Student_Operations1 SET Age = 25 Where Student_ID = 1001;


-- Updating multiple columns 	
UPDATE Student_Operations1 SET Age = 18 , Course = 'BTECH' Where Student_ID = 1003;

select *from Student_Operations1;

-- UPDATE using conditions 
UPDATE Student_Operations1 SET Age = Age + 1 Where Age>= 20;
select *from Student_Operations1;

-- Delete a single Record 
Delete From Student_Operations1 Where Student_ID = 1003;

SELECT *from Student_Operations1;


DELETE From Student_Operations1 where Course = 'BTECH';
SELECT *from Student_Operations1;


-- Deleting with conditions 
Delete From Student_Operations1 WHERE Age<21;
SELECT *from Student_Operations1;


--  Updating using like 
Update Student_Operations1
SET Course = 'BCA'
WHERE Student_name LIKE 'A%';

SELECT *from Student_Operations1;


UPDATE Student_Operations
SET Age = Age + 1
WHERE Course = 'BCA';

SELECT *from Student_Operations1;





