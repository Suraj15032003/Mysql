
USE school_management;
#CROSS JOIN: Returns the Cartesian product of both tables (every row from the left table combined with every row from the right table)

SELECT CONCAT(s.first_name, ' ', s.last_name) AS student_name,c.course_name FROM students s CROSS JOIN courses c;

SELECT CONCAT(s.first_name, ' ', s.last_name) AS student_name, c.course_name FROM students s CROSS JOIN courses c;