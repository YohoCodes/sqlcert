
SELECT COUNT(birthdate) AS count_birthdates
FROM people;

SELECT * FROM people;

SELECT COUNT(name) AS count_names,
COUNT(birthdate) AS count_birthdates
FROM people;

SELECT COUNT(*) AS total_records
FROM people;