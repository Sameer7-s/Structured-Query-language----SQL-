-- CREATE TABLE users (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(100) NOT NULL,
--     email VARCHAR(100) UNIQUE NOT NULL,
--     gender ENUM('Male', 'Female', 'other'),
--     date_of_birth DATE,
--     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

-- SELECT * FROM users;
-- SHOW TABLES;
-- DESCRIBE users;

-- DROP The database 
-- you can delete the entire database (and its all tables) using 
-- Drop databse _database_name_

-- DROP database demo1;
-- --this will delete the database that was created earlier
-- -- 

-- SElECT * From users;

-- SELECT name , email from users;

-- Renaming a Table
-- To rename an existing table:


-- RENAME TABLE users TO Student;
-- SELECT *from Student;
RENAME TABLE Student TO  users;
SELECT *from users;




















