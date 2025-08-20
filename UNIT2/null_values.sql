-- Find all people with unknown birthdates
SELECT name
FROM people
WHERE birthdate IS NULL;

-- Count all people with unknown birthdates
-- Out: 2245
SELECT COUNT(name) AS unknown_birthdates
FROM people
WHERE birthdate IS NULL;

-- Let's only select people with known birthdates
SELECT name
FROM people
WHERE birthdate IS NOT NULL;

-- Count all people with known birthdates
SELECT COUNT(name) AS known_birthdates
FROM people
WHERE birthdate IS NOT NULL;