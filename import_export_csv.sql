
#This will show where MySQL allows file operations. If the value is NULL, file import/export is disabled.
SHOW VARIABLES LIKE 'secure_file_priv';

CREATE DATABASE import_testing;
USE import_testing;
CREATE TABLE teacher;

CREATE TABLE teachers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
);

SET GLOBAL local_infile = 1;
SHOW VARIABLES LIKE 'secure_file_priv';
SHOW VARIABLES LIKE 'local_infile';



LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/research-and-development-survey-2023-csv-notes.csv'  
INTO TABLE teachers  
FIELDS TERMINATED BY ','  
ENCLOSED BY '"'  
LINES TERMINATED BY '\n'  
IGNORE 1 ROWS;

