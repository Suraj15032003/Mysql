

CREATE TABLE contact (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100),
    std_id INT,  -- Foreign key referencing `student.std_id`
    FOREIGN KEY (std_id) REFERENCES student(age)
);

SHOW INDEXES FROM student;