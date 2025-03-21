CREATE DATABASE employee_management;
USE employee_management;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    hire_date DATE NOT NULL
);


CREATE TABLE employee_audit_log (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    action VARCHAR(50) NOT NULL,
    changed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    old_salary DECIMAL(10, 2),
    new_salary DECIMAL(10, 2)
);

INSERT INTO employees (first_name, last_name, salary, hire_date) VALUES
('John', 'Doe', 50000.00, '2023-01-15'),
('Jane', 'Smith', 60000.00, '2023-02-10'),
('Mike', 'Johnson', 55000.00, '2023-03-05');

SELECT * FROM employees;
SELECT * FROM employee_audit_log;


CREATE TRIGGER before_employee_insert  
BEFORE INSERT ON employees  
FOR EACH ROW  
INSERT INTO employee_audit_log (employee_id, action)  
VALUES (NEW.employee_id, 'INSERT');  


CREATE TRIGGER after_employee_insert  
AFTER INSERT ON employees  
FOR EACH ROW  
INSERT INTO employee_audit_log (employee_id, action)  
VALUES (NEW.employee_id, UPPER('insert'));  

##testing

INSERT INTO employees (first_name, last_name, salary, hire_date) 
VALUES ('Alice', 'Brown', 70000.00, '2025-03-18');

SELECT * FROM employees;