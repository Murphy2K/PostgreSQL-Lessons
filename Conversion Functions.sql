-- ================= NUMBER to TEXT converting =======================

SELECT
	release_date,						 	-- regular date
	TO_CHAR(release_date, 'DD-MM-YYYY'),	-- This will give you date in format DD-MM-YYYY as text '02-02-1972'
	TO_CHAR(release_date, 'Dy, MM, YYYY')  	-- This will give you date in format Dy, MM, YYYY as text 'Wed, 02, 1972'
FROM movies;


SELECT
	revenues_domestic, 						 -- This give you this revenue value just number
	TO_CHAR (revenues_domestic, '$99999D99') -- This change numbers in to text and add $ sign in front. 
											 -- $99999D99 give you 5 number space in front of (D = .) and 2 space after D
FROM movies_revenues;


-- ================= TEXT to NUMBER converting ======================

SELECT
	TO_NUMBER(
		'$1,420.64', 	-- STRING
		'L9G999D99'		-- Format for NUMBER This will give you "1420.64"
);

-- ============= TEXT to DATE converting ============================
SELECT
	TO_DATE(
		'022799',  		-- STRING
		'MMDDYY'		-- Format for DATE This will give you "1999-02-27" as date
);

SELECT
	TO_DATE(
		'March 07, 2019',	-- STRING
		'Month DD, YYYY'	-- Format for DATE and this will give you "2019-03-07"
);


-- ================== TEXT to TIMESTAMP ============================

SELECT
	TO_TIMESTAMP (
		'2020-10-28 10:30:25',  -- STRING
		'YYYY-MM-DD HH:MI:SS'	-- Format for DATE and this will give you "2020-10-28 10:30:25+2"
								-- This +2 is TIMEZONE and it will add it automatically 
								-- if you not say specify something else
);

