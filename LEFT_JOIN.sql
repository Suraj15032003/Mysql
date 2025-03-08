USE school_management;

#LEFT JOIN: Returns all rows from the left table (students) and matching rows from the right table (courses); NULLs are returned where there’s no match.

SELECT s.student_id,CONCAT(s.first_name, ' ', s.last_name) AS student_name,c.course_name,c.instructor FROM students s LEFT JOIN courses c ON s.student_id = c.student_id;

SELECT s.student_id,CONCAT(s.first_name, ' ', s.last_name) AS student_name,COUNT(c.course_id) AS course_count FROM students s LEFT JOIN courses c ON s.student_id = c.student_id GROUP BY s.student_id, s.first_name, s.last_name;