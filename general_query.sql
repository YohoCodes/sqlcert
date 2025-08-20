SELECT *
FROM films;

SELECT DISTINCT certification
FROM films;

SELECT release_year,
    COUNT(title) AS title_count
FROM films
WHERE release_year IS NOT NULL
GROUP BY release_year;

SELECT release_year, AVG(duration / 60.0) AS avg_duration_hrs
FROM films
WHERE release_year IS NOT NULL
GROUP BY release_year
HAVING AVG(duration / 60.0) > 2;