-- ========== CREATE DOMAIN ==================

-- CREATE DOMAIN - Create DOMAIN data type, create an address

CREATE DOMAIN addr VARCHAR(100) NOT NULL;

CREATE TABLE locations (
		address addr
);

-- CREATE DOMAIN - Create a data type for positive number

CREATE DOMAIN positive_numeric INT NOT NULL CHECK (VALUE > 0);

CREATE TABLE sample (
	sample_id SERIAL PRIMARY KEY,
	value_num positive_numeric
);

-- CRETE DOMAIN - Create a postal code validation data type

CREATE DOMAIN us_postal_code AS TEXT;
CHECK (
	VALUE ~ '\d{5}$'
	OR VALUE ~ '\d{5}-\d{4}$'
);

CREATE TABLE addresses (
	address_id SERIAL PRIMARY KEY,
	postal_code us_postal_code
);

-- CREATE DOMAIN - Create a domain data type for an email validation

CREATE DOMAIN proper_email VARCHAR(150)
CHECK (VALUE ~* '^[A-Za-z0-9.-%]+@[A-Za-z0-9.-]+[.][A-Za-z]+$');

CREATE TABLE cliendts_names (
	client_name_id SERIAL PRIMARY KEY,
	email proper_email
);

-- CREATE DOMAIN - Create a Enum or Set of values domain data type
CREATE DOMAIN valid_color VARCHAR(10)
CHECK (VALUE IN ('red', 'green', 'blue'));

CREATE TABLE colors (
	color valid_color
);


-- CREATE DOMAIN - How to drop a domain data type
-- REMINDER! You can not DROP DOMAIN if it is connected to some table.
DROP DOMAIN positive_numeric;