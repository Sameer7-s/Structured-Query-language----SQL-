
-- To retrieve, filter, sort, group, and summarize data from a relational table using the SELECT, WHERE,
-- ORDER BY, GROUP BY, and HAVING clauses.


-- PART A -- CREATE And PREPARE TABLE 
 
 -- Query 1 ----- SELECT THE DATABASE 
 
 show databases;
 
 USE collegedb;
 
 CREATE TABLE Student_Query(
	Student_ID int primary key , 
    Student_Name VARCHAR(50) NOT NULL , 
    Age INT , 
    Gender Char(1) , 
    Course Varchar(50) , 
    City varchar(50) , 
    Marks int 
    );
    
-- inserting sample records 

INSERT INTO Student_Query 
VALUES
(1001, 'Ananya', 19, 'F', 'BCA', 'Bangalore', 85),
(1002, 'Rahul', 20, 'M', 'BCA', 'Mysore', 72),
(1003, 'Priya', 18, 'F', 'BCom', 'Bangalore', 91),
(1004, 'Arjun', 21, 'M', 'BBA', 'Chennai', 68),
(1005, 'Sneha', 19, 'F', 'BCA', 'Bangalore', 88),
(1006, 'Kiran', 20, 'M', 'BCom', 'Mysore', 76),
(1007, 'Meena', 18, 'F', 'BBA', 'Chennai', 82),
(1008, 'Vijay', 22, 'M', 'BCA', 'Bangalore', 65),
(1009, 'Divya', 19, 'F', 'BCom', 'Mysore', 94),
(1010, 'Rohan', 21, 'M', 'BBA', 'Chennai', 70);


-- Query 4 --> display the records -- 

SELECT *FROM Student_Query;

-- Query 5: Select Specific Columns

SELECT Student_ID , Student_Name , Course , Marks From Student_Query;

-- Query 6: Select Distinct Values

SELECT Distinct Course From Student_Query;

-- Query 7: Find Students Scoring More Than 80 

SELECT *From Student_Query WHERE Marks>80;

-- Query 8: Find Students Belonging to BCA

SELECT *FROM Student_Query where Course = 'BCA';

-- Query 9: Use Multiple Conditions with AND  ( Both have to TRUE)

SELECT *FROM Student_Query where Course = 'BCA' AND Marks>80;

-- Query 10: Use Multiple Conditions with OR ( one must true)












    
 