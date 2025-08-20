# SQL Keywords

This appendix provides an overview of common SQL keywords, organized by category.

## Data Definition Language (DDL)
- CREATE
- ALTER
- DROP
- TRUNCATE

## Data Manipulation Language (DML)
- SELECT
- INSERT
- UPDATE
- DELETE
- MERGE

## Data Control Language (DCL)
- GRANT
- REVOKE

## Transaction Control Language (TCL)
- COMMIT
- ROLLBACK
- SAVEPOINT
- SET TRANSACTION

## Query Clauses and Operators
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- JOIN
- UNION
- EXISTS
- IN
- BETWEEN
- LIKE

## Functions and Expressions
- COUNT
- SUM
- AVG
- MIN
- MAX
- CASE
- CAST

Refer to this list for quick access to SQL keyword categories and examples.



# SQL Keyword Descriptions and Examples

Below are descriptions and examples for each SQL keyword listed above. Each example includes a query and the expected output.

## Data Definition Language (DDL)

### CREATE
**Description:** Creates a new table, view, or other database object.
**Example:**
```sql
CREATE TABLE students (id INT, name VARCHAR(50));
```
**Expected Output:**
Table 'students' is created with columns 'id' and 'name'.

### ALTER
**Description:** Modifies an existing database object, such as a table.
**Example:**
```sql
ALTER TABLE students ADD age INT;
```
**Expected Output:**
Column 'age' is added to the 'students' table.

### DROP
**Description:** Deletes a database object, such as a table or view.
**Example:**
```sql
DROP TABLE students;
```
**Expected Output:**
Table 'students' is removed from the database.

### TRUNCATE
**Description:** Removes all rows from a table, but keeps the table structure.
**Example:**
```sql
TRUNCATE TABLE students;
```
**Expected Output:**
All rows in 'students' are deleted, but the table remains.

## Data Manipulation Language (DML)

### SELECT
**Description:** Retrieves data from one or more tables.
**Example:**
```sql
SELECT name FROM students;
```
**Expected Output:**
| name      |
|-----------|
| Alice     |
| Bob       |

### INSERT
**Description:** Adds new rows to a table.
**Example:**
```sql
INSERT INTO students (id, name) VALUES (1, 'Alice');
```
**Expected Output:**
One row is added to 'students': (1, 'Alice').

### UPDATE
**Description:** Modifies existing rows in a table.
**Example:**
```sql
UPDATE students SET name = 'Alicia' WHERE id = 1;
```
**Expected Output:**
The name for student with id 1 is changed to 'Alicia'.

### DELETE
**Description:** Removes rows from a table.
**Example:**
```sql
DELETE FROM students WHERE id = 1;
```
**Expected Output:**
The row with id 1 is deleted from 'students'.

### MERGE
**Description:** Combines insert, update, and delete operations into one statement.
**Example:**
```sql
MERGE INTO students USING new_students ON (students.id = new_students.id)
WHEN MATCHED THEN UPDATE SET students.name = new_students.name
WHEN NOT MATCHED THEN INSERT (id, name) VALUES (new_students.id, new_students.name);
```
**Expected Output:**
Rows in 'students' are updated or inserted based on 'new_students'.

## Data Control Language (DCL)

### GRANT
**Description:** Gives privileges to users.
**Example:**
```sql
GRANT SELECT ON students TO user1;
```
**Expected Output:**
User 'user1' can now SELECT from 'students'.

### REVOKE
**Description:** Removes privileges from users.
**Example:**
```sql
REVOKE SELECT ON students FROM user1;
```
**Expected Output:**
User 'user1' can no longer SELECT from 'students'.

## Transaction Control Language (TCL)

### COMMIT
**Description:** Saves all changes made in the current transaction.
**Example:**
```sql
COMMIT;
```
**Expected Output:**
All changes are saved to the database.

### ROLLBACK
**Description:** Undoes changes made in the current transaction.
**Example:**
```sql
ROLLBACK;
```
**Expected Output:**
All changes since the last COMMIT are undone.

### SAVEPOINT
**Description:** Sets a point within a transaction to which you can later roll back.
**Example:**
```sql
SAVEPOINT sp1;
```
**Expected Output:**
Savepoint 'sp1' is created in the transaction.

### SET TRANSACTION
**Description:** Sets properties for the current transaction.
**Example:**
```sql
SET TRANSACTION READ ONLY;
```
**Expected Output:**
Transaction is set to read-only mode.

## Query Clauses and Operators

### WHERE
**Description:** Filters rows based on a condition.
**Example:**
```sql
SELECT * FROM students WHERE age > 18;
```
**Expected Output:**
| id | name  | age |
|----|-------|-----|
| 2  | Bob   | 20  |

### ORDER BY
**Description:** Sorts the result set by one or more columns.
**Example:**
```sql
SELECT * FROM students ORDER BY name ASC;
```
**Expected Output:**
| id | name  | age |
|----|-------|-----|
| 1  | Alice | 19  |
| 2  | Bob   | 20  |

### GROUP BY
**Description:** Groups rows sharing a property so aggregate functions can be applied.
**Example:**
```sql
SELECT age, COUNT(*) FROM students GROUP BY age;
```
**Expected Output:**
| age | count |
|-----|-------|
| 19  | 1     |
| 20  | 1     |

### HAVING
**Description:** Filters groups created by GROUP BY.
**Example:**
```sql
SELECT age, COUNT(*) FROM students GROUP BY age HAVING COUNT(*) > 1;
```
**Expected Output:**
No rows returned if no age group has more than one student.

### JOIN
**Description:** Combines rows from two or more tables based on a related column.
**Example:**
```sql
SELECT students.name, grades.grade FROM students JOIN grades ON students.id = grades.student_id;
```
**Expected Output:**
| name  | grade |
|-------|-------|
| Alice | A     |
| Bob   | B     |

### UNION
**Description:** Combines the results of two SELECT queries.
**Example:**
```sql
SELECT name FROM students UNION SELECT name FROM alumni;
```
**Expected Output:**
| name  |
|-------|
| Alice |
| Bob   |
| Carol |

### EXISTS
**Description:** Checks if a subquery returns any rows.
**Example:**
```sql
SELECT name FROM students WHERE EXISTS (SELECT 1 FROM grades WHERE grades.student_id = students.id);
```
**Expected Output:**
Names of students who have grades.

### IN
**Description:** Checks if a value matches any value in a list or subquery.
**Example:**
```sql
SELECT name FROM students WHERE age IN (19, 20);
```
**Expected Output:**
| name  |
|-------|
| Alice |
| Bob   |

### BETWEEN
**Description:** Checks if a value is within a range.
**Example:**
```sql
SELECT name FROM students WHERE age BETWEEN 18 AND 20;
```
**Expected Output:**
| name  |
|-------|
| Alice |
| Bob   |

### LIKE
**Description:** Searches for a pattern in a column.
**Example:**
```sql
SELECT name FROM students WHERE name LIKE 'A%';
```
**Expected Output:**
| name  |
|-------|
| Alice |

## Functions and Expressions

### COUNT
**Description:** Returns the number of rows.
**Example:**
```sql
SELECT COUNT(*) FROM students;
```
**Expected Output:**
| count |
|-------|
| 2     |

### SUM
**Description:** Returns the sum of a numeric column.
**Example:**
```sql
SELECT SUM(age) FROM students;
```
**Expected Output:**
| sum |
|-----|
| 39  |

### AVG
**Description:** Returns the average value of a numeric column.
**Example:**
```sql
SELECT AVG(age) FROM students;
```
**Expected Output:**
| avg |
|-----|
| 19.5|

### MIN
**Description:** Returns the minimum value in a column.
**Example:**
```sql
SELECT MIN(age) FROM students;
```
**Expected Output:**
| min |
|-----|
| 19  |

### MAX
**Description:** Returns the maximum value in a column.
**Example:**
```sql
SELECT MAX(age) FROM students;
```
**Expected Output:**
| max |
|-----|
| 20  |

### CASE
**Description:** Returns values based on conditional logic.
**Example:**
```sql
SELECT name, CASE WHEN age >= 20 THEN 'Adult' ELSE 'Teen' END AS category FROM students;
```
**Expected Output:**
| name  | category |
|-------|----------|
| Alice | Teen     |
| Bob   | Adult    |

### CAST
**Description:** Converts a value from one data type to another.
**Example:**
```sql
SELECT CAST(age AS VARCHAR) FROM students;
```
**Expected Output:**
| age |
|-----|
| '19'|
| '20'|
