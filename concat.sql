
-- MySQL
SELECT CONCAT(first_name, ' ', last_name) AS "Full name" FROM users; 

-- PostgreSQL 
SELECT first_name || ' ' || last_name AS "Full name" FROM users;
