-- This is invalid
SELECT release_year,
    COUNT(title) AS title_count
FROM films
WHERE COUNT(title) > 10
GROUP BY release_year;

-- This is valid
SELECT release_year,
    COUNT(title) AS title_count
FROM films
WHERE release_year > 2000
GROUP BY release_year;

/* Why does the first query work and the second one doesn't?
In the first, WHERE is trying to filter on an aggregate function post-grouping, 
which is not allowed due to SQL order of execution.
In the second, WHERE is filtering on GROUP BY column, which is allowed. */

-- We must use HAVING to filter the aggregated results
SELECT release_year,
    COUNT(title) AS title_count
FROM films
GROUP BY release_year
HAVING COUNT(title) > 10;