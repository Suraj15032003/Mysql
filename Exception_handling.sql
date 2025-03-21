USE MAGLLEN;

CREATE TABLE friends(
   rollno INT PRIMARY KEY,
   name VARCHAR(50),
   marks INT NOT NULL,
   grade VARCHAR(1),
   city VARCHAR(20)
);

INSERT INTO friends(rollno, name, marks, grade, city)VALUES
(201, "Vikram", 82, "B", "Mumbai"),
(202, "Sneha", 95, "A", "Bangalore"),
(203, "Rahul", 64, "D", "Hyderabad"),
(204, "Pooja", 77, "C", "Chennai"),
(205, "Karan", 89, "B", "Kolkata"),
(206, "Meena", 55, "F", "Jaipur"),
(207, "Arjun", 91, "A", "Ahmedabad"),
(208, "Deepa", 73, "C", "Lucknow"),
(209, "Rohit", 68, "D", "Surat"),
(210, "Nisha", 99, "A", "Pune");



DELIMITER //

CREATE PROCEDURE InsertFriend(
    IN p_rollno INT, 
    IN p_name VARCHAR(50), 
    IN p_marks INT, 
    IN p_grade VARCHAR(1), 
    IN p_city VARCHAR(20)
)
BEGIN
 
    DECLARE EXIT HANDLER FOR 1062 
    BEGIN
        SELECT 'Error: Duplicate roll number!' AS Message;
    END;

    INSERT INTO friends (rollno, name, marks, grade, city) 
    VALUES (p_rollno, p_name, p_marks, p_grade, p_city);

    SELECT 'Friend Inserted Successfully!' AS Message;

END //

DELIMITER ;

SELECT * FROM friends;

CALL InsertFriend(201, 'Vikram', 82, 'B', 'Mumbai');
CALL InsertFriend(202, 'Sneha', 95, 'A', 'Bangalore');

