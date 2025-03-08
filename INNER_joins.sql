USE school_management;

#INNER joins :Returns only the rows where there is a match in both tables based on the join condition.
SELECT * FROM students;
SELECT * FROM courses;

SELECT s.student_id,CONCAT(s.first_name, ' ', s.last_name) AS student_name,c.course_name,c.instructor FROM students s INNER JOIN courses c ON s.student_id = c.student_id;

SELECT s.student_id,CONCAT(s.first_name, ' ', s.last_name) AS student_name,c.course_name FROM students s INNER JOIN courses c ON s.student_id = c.student_id WHERE s.grade_level = 10;