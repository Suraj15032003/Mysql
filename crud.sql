CREATE DATABASE mydb;
use mydb;
CREATE TABLE mydb.users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE
);
select * from users;
SHOW TABLES;
INSERT INTO users (name, email) VALUES
    ('John Doe', 'john.doe@example.com'),
    ('Jane Smith', 'jane.smith@example.com'),
    ('Bob Johnson', 'bob.johnson@example.com');
    
ALTER TABLE users ADD COLUMN birth_date DATE not null;
UPDATE users SET birth_date = '1990-05-15' WHERE id = 1;
UPDATE users SET birth_date = '2000-03-23' WHERE id = 2;
UPDATE users SET birth_date = '2004-08-09' WHERE id = 3;

INSERT INTO users (name, email, birth_date) VALUES
    ('Eve White', 'eve.white@example.com', '1992-11-05');
SELECT * FROM users;

UPDATE users SET email = 'eve.white.new@example.com' WHERE id =4;
DELETE FROM users WHERE name = 'Eve White';
DELETE FROM users WHERE id=4;