
-- Counts the number of non-null birthdates in the people table
SELECT COUNT(birthdate) AS count_birthdates
FROM people;

-- Selects all columns and rows from the people table
SELECT * FROM people;

-- Counts the number of non-null names and birthdates in the people table
SELECT COUNT(name) AS count_names,
COUNT(birthdate) AS count_birthdates
FROM people;

-- Counts the total number of records in the people table
SELECT COUNT(*) AS total_records
FROM people;

-- Selects all distinct languages from the films table
SELECT DISTINCT language
FROM films;

-- Counts the number of unique birthdates in the people table
SELECT COUNT(DISTINCT birthdate) AS count_distinct_birthdates
FROM people;