CREATE DATABASE MAGLLEN;
USE MAGLLEN;

CREATE TABLE students(
   rollno INT PRIMARY KEY,
   name VARCHAR(50),
   marks INT NOT NULL,
   grade VARCHAR(1),
   city VARCHAR(20)
);


INSERT INTO students(rollno, name, marks, grade, city)VALUES
(201, "Ravi", 85, "B", "Mumbai"),
(202, "Priya", 92, "A", "Bangalore"),
(203, "Suresh", 67, "D", "Hyderabad"),
(204, "Neha", 95, "A", "Chennai"),
(205, "Vikram", 73, "C", "Kolkata");

SELECT * FROM students;

SELECT AVG(marks)FROM students;

SELECT name, marks FROM students WHERE marks>75;

#ODD ROLLNO
SELECT rollno,name FROM students WHERE rollno%2!=0;

#EVEN ROOLNO
SELECT rollno,name FROM students WHERE rollno%2=0;

SELECT name FROM students WHERE rollno IN(203,67);

SELECT name, rollno FROM students WHERE rollno IN(SELECT rollno FROM students WHERE rollno% 2=0);

select * from students WHERE city="Kolkata";

SELECT MAX(marks)
FROM(SELECT * FROM students WHERE city="Bangalore") AS temp;

SELECT MAX(marks)FROM students WHERE city="Chennai";

SELECT (SELECT MAX(marks) FROM students),name FROM students;
