SELECT * FROM customers;


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

