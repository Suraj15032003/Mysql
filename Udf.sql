CREATE DATABASE testdb;
USE testdb;

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO employees (name, salary) VALUES 
('John Doe', 50000.00),
('Jane Smith', 60000.00),
('Alice Brown', 70000.00);

SELECT * from employees;

SELECT name, salary, calculate_bonus(salary) AS bonus FROM employees;

SELECT name, salary, random_bonus(salary) AS bonus FROM employees;



