-- LIKE operator is used for pattern matching and is case sensitive. 
-- It matches the search expression with the given pattern only if the entire string is covered.
SELECT
    *
FROM
    table_name
WHERE
    column_name LIKE 'pattern';

-- ILIKE operator is also used for pattern matching but is case insensitive.
SELECT
    *
FROM
    table_name
WHERE
    column_name ILIKE 'pattern';