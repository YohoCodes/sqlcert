-- Calculate the average budget for films released in 2010 or later
SELECT AVG(budget) AS avg_budget
FROM films
WHERE release_year >= 2010;

SELECT MIN(budget) AS min_budget, COUNT(budget) AS count_budget
FROM films
WHERE release_year = 2010;

-- USING ROUND()...
-- This rounds to the nearest whole number
SELECT ROUND(AVG(budget)) AS avg_budget
FROM films
WHERE release_year = 2010;