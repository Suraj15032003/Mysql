USE school_management;

#RIGHT JOIN: Returns all rows from the right table (courses) and matching rows from the left table (students); NULLs are returned where there’s no match.

SELECT s.student_id,CONCAT(s.first_name, ' ', s.last_name) AS student_name,c.course_name,c.instructor FROM students s RIGHT JOIN courses c ON s.student_id = c.student_id;

INSERT INTO courses (course_name, student_id, instructor) VALUES ('Draw', 6, 'Ms. Black');
INSERT INTO courses (course_name, student_id, instructor) 
VALUES ('Draw', 6, 'Ms. Black');

INSERT INTO students (student_id, first_name, last_name) 
VALUES (6, 'Rahul', 'Doe');

SELECT s.student_id, CONCAT(s.first_name, ' ', s.last_name) AS student_name,c.course_name,c.instructor FROM students s RIGHT JOIN courses c ON s.student_id = c.student_id;