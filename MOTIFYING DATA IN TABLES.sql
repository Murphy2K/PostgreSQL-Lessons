-- ============================= NORMAL INSERT ================================

CREATE TABLE customers (
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(150),
	age INT
);

INSERT INTO customers (first_name, last_name, email, age)
VALUES ('Adnan','Waheed','a@b.com',40);
  
SELECT * FROM customers;


-- ========================== MULTIBLE INSERT ===================================
  
INSERT INTO customers (first_name, last_name)
VALUES 
('ADNAN','WAHEED'),
('JOHN','ADAMS'),
('LINDA','ABE');

SELECT * FROM customers;

-- =========================== INSERT WITH QUOTES (ÜLAKOMAGA) ==================================  
  
INSERT INTO customers (first_name)
VALUES 
('Bill''O Sullivan');

SELECT * FROM customers;

-- =========================== RETURNING FUNCTION ==================================

INSERT INTO customers (first_name)
VALUES ('ADAM');

INSERT INTO customers (first_name)
VALUES ('JOSEPH') RETURNING *;

INSERT INTO customers (first_name)
VALUES ('JOSEPH1') RETURNING customer_id;

SELECT * FROM customers;

-- ============================ UPDATE FUNCTION =================================

-- Update single value in table
UPDATE customers
SET email = 'a2@b.com' 
WHERE customer_id = 1;

-- Update multible values in table
UPDATE customers
SET 
email = 'a2@b.com',
age = 30
WHERE customer_id = 1;


UPDATE customers
SET email = 'a2@b.com'
WHERE customer_id = 1
RETURNING *;

UPDATE customers
SET is_enable = 1;

-- ============================= DELETE FUNTION ================================

DELETE FROM customers 
WHERE customer_id = 9;

DELETE FROM customers;


-- ============================= UPDATE/INSERT FUNCTION (UPSERT) ================================

-- create sample table

CREATE TABLE t_tags( 
	id serial PRIMARY KEY,
	tag text UNIQUE,
	update_date TIMESTAMP DEFAULT NOW()	
);

-- insert some sample data

INSERT INTO t_tags (tag) values
('Pen'),
('Pencil');

-- Lets view the data

SELECT * FROM t_tags;

-- 2020-12-29 19:13:19.392095

-- Lets insert a record, on conflict do noting

INSERT INTO t_tags (tag) 
VALUES ('Pen')
ON CONFLICT (tag) 
DO 
	NOTHING;


SELECT * FROM t_tags;



-- Lets insert a record, on conflict set new values

INSERT INTO t_tags (tag) 
VALUES ('Pen')
ON CONFLICT (tag) 
DO 
	UPDATE SET
		tag = EXCLUDED.tag || '1',
		update_date = NOW();