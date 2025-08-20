-- Using order by
-- Number: least to greatest
SELECT title, budget
FROM films
ORDER BY budget;

-- Letter: A to Z
-- symbols > numbers > letters
SELECT title, budget
FROM films
ORDER BY title;

/* The ORDER BY keyword is ASC by default, meaning it sorts in ascending order. 
To change the sort direction to descending, use DESC. */

-- Same as previous query
SELECT title, budget
FROM films
ORDER BY title ASC;

SELECT title, budget
FROM films
ORDER BY title DESC;

SELECT title, budget
FROM films
ORDER BY budget DESC;

/* WHERE comes before the ORDER BY clause */
SELECT title, budget
FROM films
WHERE budget IS NOT NULL
ORDER BY budget DESC;

/* You can sort by multiple columns. Why do this? The second column is used to 
break ties. */
SELECT title, budget
FROM films
WHERE budget IS NOT NULL
ORDER BY budget DESC, title ASC;