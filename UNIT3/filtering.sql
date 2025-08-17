-- Shows all titles of films where the release date is after 1960
SELECT title
FROM films
WHERE release_year > 1960;

/* This query selects the titles of films from the 'films' table where 
the country of origin is 'Japan'. */
SELECT title
FROM films
WHERE country = 'Japan';

-- VALID QUERY
SELECT title
FROM films
WHERE release_year = 1994
    OR release_year = 2000;
/* WHERE release_year = 1994 OR 2000 
    is an invalid query*/

-- Non-inclusive boundary condition
SELECT title, release_year
FROM films
WHERE release_year > 1994
    AND release_year < 2000
LIMIT 5;

/* BETWEEN is inclusive, so this has different the previous query. 
However, it should be the same as the following */
SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1994 AND 2000
LIMIT 5;

-- ... same as above
SELECT title, release_year
FROM films
WHERE release_year >= 1994
    AND release_year <= 2000
LIMIT 5;

