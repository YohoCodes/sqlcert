# SQL Queries Notes

## BASICS

### Keywords:
- **SELECT**
  - Chooses field
- **FROM**
  - Chooses the table name

### Examples:
- `SELECT name FROM patrons;`
  - This gathers the name field from the patrons table
  
  **Output:**
  ```
  name
  --------
  John Smith
  Jane Doe
  Bob Johnson
  ```

- `SELECT card_num, name FROM patrons;`
  - This gathers the card_num and name field from the patrons table
  
  **Output:**
  ```
  card_num | name
  ---------|------------
  1001     | John Smith
  1002     | Jane Doe
  1003     | Bob Johnson
  ```

- `SELECT * FROM patrons;`
  - The asterisk indicates to select all fields from the patrons table
  
  **Output:**
  ```
  id | card_num | name        | email               | join_date
  ---|----------|-------------|---------------------|------------
  1  | 1001     | John Smith  | john@email.com      | 2023-01-15
  2  | 1002     | Jane Doe    | jane@email.com      | 2023-02-20
  3  | 1003     | Bob Johnson | bob@email.com       | 2023-03-10
  ```

## WRITING QUERIES

### 1. Aliasing - Rename columns for clarity and brevity

**Keyword:** `AS`

#### Example

**Original:**
```sql
SELECT name
FROM employees;
```

**Output:**
```
name
--------
John Smith
Jane Doe
Bob Johnson
```

**With Aliasing:**
```sql
SELECT name AS first_name
FROM employees;
```

**Output:**
```
first_name
----------
John Smith
Jane Doe
Bob Johnson
```

**Explanation:**
This returns the field with an edited title

### 2. Unique Values

**Keyword:** `DISTINCT`

#### Example

**Original:**
```sql
SELECT year_hired
FROM employees;
```

**Output:**
```
year_hired
----------
2020
2021
2020
2022
2021
```

```sql
SELECT dept_id, year_hired
FROM employees;
```

**Output:**
```
dept_id | year_hired
---------|------------
101      | 2020
102      | 2021
101      | 2020
103      | 2022
102      | 2021
```

**With Unique Values:**
```sql
SELECT DISTINCT year_hired
FROM employees;
```

**Output:**
```
year_hired
----------
2020
2021
2022
```

```sql
SELECT DISTINCT dept_id, year_hired
FROM employees;
```

**Output:**
```
dept_id | year_hired
---------|------------
101      | 2020
102      | 2021
103      | 2022
```

**Explanation:**
Distinct ensures no repeat values or repeat value pairs

### 3. Views

**Definition:** A saved SQL query

**Important Notes:**
- They don't store data
- Views are stored as saved SQL queries in the database's schema, not as separate tables with their own data
- When you query a view, the database runs the underlying query each time, so the view always reflects the current data in the original tables

#### Example Query:

**Creating a View:**
```sql
CREATE VIEW employee_hire_years AS
SELECT id, name, year_hired
FROM employees;
```

**Output:** (View created successfully - no data returned)

**Querying the View:**
```sql
SELECT id, name
FROM employee_hire_years;
```

**Output:**
```
id | name
---|------------
1  | John Smith
2  | Jane Doe
3  | Bob Johnson
4  | Alice Brown
5  | Charlie Wilson
```

**Note:** The view `employee_hire_years` contains the same data as the original query, but now you can reference it by name instead of writing the full SELECT statement each time.