-- This let you edit tables add, remove or edit columns in table.
ALTER TABLE table_name 
ADD COLUMN column_name INT VARCHAR(255) UNIQUE

-- Rename table
ALTER TABLE persons
RENAME TO users;

-- Rename column
ALTER TABLE users
RENAME COLUMN age to user_age;

-- Drop a column
ALTER TABLE users
DROP COLUMN	user_age;

-- Change data type of a colum
-- From VARCHAR to INT
ALTER TABLE users
ALTER COLUMN age TYPE int
USING age::integer;
-- From INT to VARCHAR
ALTER TABLE users
ALTER COLUMN age TYPE VARCHAR(20);

-- Set a default values of a colum
ALTER TABLE users
ADD COLUMN is_enable VARCHAR(1);

ALTER TABLE users
ALTER COLUMN is_enable SET DEFAULT 'Y';

