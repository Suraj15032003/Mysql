Use school_management;

#FULL JOIN:Returns all rows from both tables, with NULLs where there’s no match (MySQL doesn’t support FULL JOIN directly; use LEFT JOIN and RIGHT JOIN with UNION).

SELECT s.student_id,CONCAT(s.first_name, ' ', s.last_name) AS student_name,c.course_name,c.instructor FROM students s LEFT JOIN courses c ON s.student_id = c.student_id
UNION
SELECT s.student_id,CONCAT(s.first_name, ' ', s.last_name) AS student_name,c.course_name,c.instructor FROM students s RIGHT JOIN courses c ON s.student_id = c.student_id WHERE s.student_id IS NULL;

SELECT COUNT(*) AS total_records FROM ( SELECT s.student_id, c.course_id FROM students s LEFT JOIN courses c ON s.student_id = c.student_id
    UNION
    SELECT s.student_id, c.course_id FROM students s RIGHT JOIN courses c ON s.student_id = c.student_id WHERE s.student_id IS NULL
) AS combined;

