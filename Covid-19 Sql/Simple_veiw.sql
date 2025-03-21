CREATE DATABASE views;
Use views;

CREATE TABLE student(std_id INT PRIMARY KEY,
	first_name varchar(50),
    last_name VARCHAR(50),
    age INT,
    grade VARCHAR(10)
    );
ALTER TABLE student ADD CONSTRAINT unique_age UNIQUE (age);

    
CREATE  VIEW student_grades AS
SELECT  std_id,CONCAT(first_name,' ', last_name
) AS full_name,grade
FROM student;

CREATE VIEW student_grades AS
SELECT student_id, CONCAT(first_name, ' ', last_name) AS full_name, grade
FROM student;

SELECT * FROM student_grades;
