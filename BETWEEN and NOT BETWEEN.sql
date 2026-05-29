-- This will give you "Domestic revenues" value is BETWEEN 100 and 300
SELECT
    *
FROM
    movies_revenues
WHERE
    revenues_domestic BETWEEN 100 AND 300
ORDER BY
    revenues_domestic;

-- Same like BETWEEN
SELECT
    *
FROM
    movies_revenues
WHERE
    revenues_domestic >= 100 AND revenues_domestic <= 300
ORDER BY
    revenues_domestic;
	