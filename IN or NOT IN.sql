SELECT
        *
FROM
        movies
WHERE
        -- This will give you list of movies where age certificate is 12 OR PG
        age_certificate IN ('12',
                           'PG')
ORDER BY
        age_certificate ASC
SELECT
        *
FROM
        movies
WHERE
        -- This will give you list of movies what are NOT IN english or chinese language.
        movie_lang NOT IN ('Chinese',
                          'English')
ORDER BY
        movie_lang DESC;
		