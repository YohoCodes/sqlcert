# Top 10 SQL Keywords

## **1. SELECT**

Description: Retrieves data from one or more tables in a database.

Example (with output):
```sql
SELECT name, age FROM users WHERE age > 25;
```
Output:
```
name    | age
--------|-----
John    | 30
Sarah   | 28
Mike    | 35
```

## **2. FROM**

Description: Specifies the table(s) from which to retrieve data in a SELECT statement.

Example (with output):
```sql
SELECT * FROM employees;
```
Output:
```
id | name     | department | salary
---|----------|------------|--------
1  | Alice    | IT         | 65000
2  | Bob      | HR         | 55000
3  | Carol    | Sales      | 60000
```

## **3. WHERE**

Description: Filters records based on specified conditions.

Example (with output):
```sql
SELECT name, salary FROM employees WHERE salary > 60000;
```
Output:
```
name  | salary
------|--------
Alice | 65000
```

## **4. INSERT**

Description: Adds new records into a table.

Example (with output):
```sql
INSERT INTO employees (name, department, salary) VALUES ('David', 'IT', 70000);
```
Output:
```
Query OK, 1 row affected
```

## **5. UPDATE**

Description: Modifies existing records in a table.

Example (with output):
```sql
UPDATE employees SET salary = 75000 WHERE name = 'Alice';
```
Output:
```
Query OK, 1 row affected
```

## **6. DELETE**

Description: Removes records from a table.

Example (with output):
```sql
DELETE FROM employees WHERE name = 'Bob';
```
Output:
```
Query OK, 1 row affected
```

## **7. JOIN**

Description: Combines rows from two or more tables based on related columns.

Example (with output):
```sql
SELECT e.name, d.department_name 
FROM employees e 
JOIN departments d ON e.department_id = d.id;
```
Output:
```
name  | department_name
------|----------------
Alice | Information Technology
Bob   | Human Resources
Carol | Sales
```

## **8. GROUP BY**

Description: Groups rows that have the same values in specified columns.

Example (with output):
```sql
SELECT department, COUNT(*) as employee_count 
FROM employees 
GROUP BY department;
```
Output:
```
department | employee_count
-----------|---------------
IT         | 2
HR         | 1
Sales      | 1
```

## **9. ORDER BY**

Description: Sorts the result set in ascending or descending order.

Example (with output):
```sql
SELECT name, salary FROM employees ORDER BY salary DESC;
```
Output:
```
name  | salary
------|--------
Alice | 75000
Carol | 60000
Bob   | 55000
```

## **10. CREATE**

Description: Creates new database objects like tables, views, or databases.

Example (with output):
```sql
CREATE TABLE customers (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(255)
);
```
Output:
```
Query OK, 0 rows affected
```
