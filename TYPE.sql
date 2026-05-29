-- ============= Composite data TYPE ==================

-- 1. List of field names with corresponding data type
-- 2. Use in a table as a 'column'
-- 3. Used in functions or procedures
-- 4. Can return multible values, its a composite data type

-- CREATE TYPE name AS (fields columns_properties)

-- Create a address composite data type

CREATE TYPE address AS (
	city VARCHAR(50),
	country VARCHAR(20)
);


CREATE TABLE companies(
	comp_id SERIAL PRIMARY KEY, 
	address address -- This will create column what ask city and country name
);


-- SELECT-ing data from table with that TYPE
SELECT address FROM companies; -- this give you all data from address column

SELECT (address).city FROM companies; -- This give you only CITY name from companies table

-- if you have many tables use like this
SELECT (companies.address).country FROM companies; -- This will give you country names from companies table. 

-- To delete/DEOP TYPE

DROP TYPE sample_type


-- ===== ALTER DATA TYPES =====
-- ============================

CREATE TYPE myaddress AS (
	city VARCHAR(50), 
	country VARCHAR(20)
);

-- Rename a data type
-- RENAME TYPE name RENAME TO newname

ALTER TYPE myaddress RENAME TO my_address;

-- Change to owner
-- ALTER TYPE name OWNER TO username

ALTER TYPE my_address OWNER TO heiko;

-- Change the schema
-- ALTER TYPE name SET SCHEMA schemaname

ALTER TYPE my_address SET SCHEMA test_scm;


-- To add a new attribute
-- ALTER TYPE name ADD ATTRIBUTE attributes

ALTER TYPE test_scm.my_address ADD ATTRIBUTE street_address VARCHAR(150); 

-- create sample ENUM data type
-- CREATE TYPE name AS ENUM (values)

CREATE TYPE mycolors AS ENUM ('green', 'red', 'blue');

-- Update a value
-- ALTER TYPE name RENAME VALUE oldvalue TO newvalue

ALTER TYPE mycolors RENAME VALUE 'red' TO 'orange';

-- List all ENUM values
SELECT enum_range(NULL::mycolors);

-- To add a new value
-- ALTER TYPE name ADD VALUE valuename [BEFORE | AFTER] value

ALTER TYPE mycolors ADD VALUE 'red' BEFORE  'green';

