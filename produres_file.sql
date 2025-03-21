CREATE DEFINER=`root`@`localhost` PROCEDURE `get_employees_by_salary`(
    IN target_salary DECIMAL(10, 2),
    OUT employee_count INT
)
BEGIN
   SELECT * FROM employees WHERE salary = target_salary;
   SELECT COUNT(*) INTO employee_count FROM employees WHERE salary = target_salary;
END