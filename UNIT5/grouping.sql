-- Group by single fields
SELECT certification, COUNT(title) AS title_count
FROM films
GROUP BY certification;

/* Without an aggregate function, it returns all unique values */
SELECT certification
FROM films
GROUP BY certification;

-- This query will return an error...
SELECT certification, title
FROM films
GROUP BY certification;

/* With an aggregate function, it returns the average value of the field values
associated with each group */
SELECT certification, AVG(budget) AS avg_budget
FROM films
WHERE certification IS NOT NULL
    AND budget IS NOT NULL
GROUP BY certification;

/* You can group by multiple fields. This essentially give summary statistics 
for each combination of values in the grouped fields */
SELECT certification, language, COUNT(title) AS title_count
FROM films
WHERE certification IS NOT NULL
    AND language IS NOT NULL
GROUP BY certification, language
ORDER BY title_count DESC;