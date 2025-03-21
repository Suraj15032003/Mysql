CREATE DATABASE off_management;
USE off_management;


CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    city VARCHAR(50) NOT NULL
);

-- Create the courses table
CREATE TABLE courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL,
    instructor VARCHAR(50) NOT NULL,
    credits INT NOT NULL
);

-- Create the enrollments table
CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    enrollment_date DATE NOT NULL,
    grade DECIMAL(4, 2),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Insert sample data into students
INSERT INTO students (first_name, last_name, age, city) VALUES
('Alice', 'Smith', 20, 'New York'),
('Bob', 'Johnson', 22, 'Los Angeles'),
('Charlie', 'Brown', 19, 'Chicago'),
('Dana', 'White', 21, 'Houston'),
('Eve', 'Davis', 20, 'Seattle');

-- Insert sample data into courses
INSERT INTO courses (course_name, instructor, credits) VALUES
('Mathematics', 'Dr. Lee', 4),
('Physics', 'Dr. Kim', 3),
('History', 'Dr. Patel', 3),
('Computer Science', 'Dr. Singh', 4),
('Literature', 'Dr. Garcia', 3);

-- Insert sample data into enrollments
INSERT INTO enrollments (student_id, course_id, enrollment_date, grade) VALUES
(1, 1, '2023-09-01', 85.50),  
(1, 2, '2023-09-01', 90.00),  
(2, 1, '2023-09-02', 88.00),  
(2, 3, '2023-09-02', 75.50),  
(3, 4, '2023-09-03', 92.00),  
(4, 2, '2023-09-04', 87.00), 
(4, 5, '2023-09-04', 80.00), 
(5, 1, '2023-09-05', 95.00), 
(5, 3, '2023-09-05', 88.50); 


#################MySQL Clauses##############

#SELECT Clause
SELECT first_name, last_name, age FROM students;

SELECT course_name, instructor FROM courses;


#WHERE Clause
SELECT first_name, last_name, age FROM students WHERE age > 20;

SELECT course_name, credits FROM courses WHERE credits > 3;


#GROUP BY Clause

SELECT s.first_name,s.last_name, AVG(e.grade) AS average_grade FROM students s JOIN enrollments e ON s.student_id = e.student_id GROUP BY s.first_name, s.last_name;
    
SELECT s.first_name,s.last_name,AVG(e.grade) AS average_grade FROM students s JOIN enrollments e ON s.student_id = e.student_id GROUP BY s.first_name, s.last_name HAVING AVG(e.grade) > 85;

#all claues

SELECT 
    s.city,
    AVG(e.grade) AS average_city_grade
FROM 
    students s
JOIN 
    enrollments e ON s.student_id = e.student_id
WHERE 
    e.enrollment_date > '2023-09-30'
GROUP BY 
    s.city
HAVING 
    AVG(e.grade) > 85
ORDER BY 
    average_city_grade DESC;