-- Basic Arithmetic
SELECT (4+3);

SELECT (4-3);

SELECT (4 * 3);

-- Returns 1 ...
SELECT (4 / 3);

-- Returns 1.33333...
SELECT (4.0 / 3.0);

-- Row operations
SELECT title AS film_name, (gross - budget) AS profit
FROM films
WHERE (gross - budget) IS NOT NULL;

SELECT (4 / 3.0) AS division_result;