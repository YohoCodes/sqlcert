# Sorting Data in SQL

This guide covers how to sort query results in SQL using the `ORDER BY` clause, including sorting by numbers, letters, multiple columns, and specifying sort direction.

## Basic Sorting with ORDER BY

- **Sort numbers (least to greatest):**
  ```sql
  SELECT title, budget
  FROM films
  ORDER BY budget;
  ```
- **Sort letters (A to Z):**
  ```sql
  SELECT title, budget
  FROM films
  ORDER BY title;
  ```
  - Note: By default, symbols > numbers > letters in sorting order.

## Sort Direction: ASC vs DESC

- The `ORDER BY` clause sorts in ascending order (`ASC`) by default.
- To sort in descending order, use `DESC`.

  ```sql
  -- Ascending (A to Z)
  SELECT title, budget
  FROM films
  ORDER BY title ASC;

  -- Descending (Z to A)
  SELECT title, budget
  FROM films
  ORDER BY title DESC;

  -- Descending by budget
  SELECT title, budget
  FROM films
  ORDER BY budget DESC;
  ```

## Combining WHERE and ORDER BY

- The `WHERE` clause comes before `ORDER BY`.

  ```sql
  SELECT title, budget
  FROM films
  WHERE budget IS NOT NULL
  ORDER BY budget DESC;
  ```

## Sorting by Multiple Columns

- You can sort by more than one column. The second column is used to break ties in the first column.

  ```sql
  SELECT title, budget
  FROM films
  WHERE budget IS NOT NULL
  ORDER BY budget DESC, title ASC;
  ```

## Order of Syntax vs. Order of Execution

**Order of Syntax:**
1. `SELECT`
2. `FROM`
3. `WHERE`
4. `ORDER BY`
5. `LIMIT`

**Order of Execution:**
1. `FROM`
2. `WHERE`
3. `SELECT`
4. `ORDER BY`
5. `LIMIT`

---

**Summary:**
- Use `ORDER BY` to sort results.
- Default is ascending (`ASC`). Use `DESC` for descending.
- `WHERE` comes before `ORDER BY`.
- Sort by multiple columns to break ties.