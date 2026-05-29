-- How to convert tada type from one to other

-- Long version
CAST (expression AS target_data_type);

SELECT
	CAST('17-MAY-2023' AS DATE);

-- Short version
expression::type

SELECT 
	'17-MAY-2023'::DATE;