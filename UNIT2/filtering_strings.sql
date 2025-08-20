-- Returns people's names that begin with Ade and end with anything
SELECT name
FROM people
WHERE name LIKE 'Ade%';

-- Case sensitive. Returns nothing.
SELECT name
FROM people
WHERE name LIKE 'ade%';

-- Only returns names that start with Ev and have exactly one extra letter
SELECT name
FROM people
WHERE name LIKE 'Ev_';

-- Returns people's names that do NOT start with 'A.' (A followed by a dot)
SELECT name
FROM people
WHERE name NOT LIKE 'A.%';

-- Returns all people whose name ends in r
SELECT name
FROM people
WHERE name LIKE '%r';

-- Returns all names with t as the third letter
SELECT name
FROM people
WHERE name LIKE '__t%';

