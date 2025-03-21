Use views;
SHOW TABLES;
SELECT * FROM student;


CREATE TABLE courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100),
    std_id INT,  -- Foreign key referencing `student.std_id`
    FOREIGN KEY (std_id) REFERENCES student(std_id)
);


DESCRIBE student;
DESCRIBE courses;

CREATE VIEW student_courses AS
SELECT 
    s.std_id, 
    CONCAT(s.first_name, ' ', s.last_name) AS student_name,
    s.grade, 
    c.course_name
FROM student s
JOIN courses c ON s.std_id = c.std_id;

SELECT * FROM student_courses;

SHOW INDEXES FROM student;



