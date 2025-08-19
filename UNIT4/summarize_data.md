---
title: Summarizing Data
---

# Summarizing Data

## Aggregate Functions

Aggregate functions perform a calculation on a set of values and return a single value.

**Common aggregate functions include:**

- `COUNT()`: Returns the number of rows that match a specified criterion.
- `SUM()`: Returns the total sum of a numeric column.
- `AVG()`: Returns the average value of a numeric column.
- `MIN()`: Returns the smallest value in a set.
- `MAX()`: Returns the largest value in a set.

> **Note:** Aggregate functions come after `SELECT` in your SQL queries.

### Examples

```sql
SELECT COUNT(*) FROM table_name;
SELECT AVG(column_name) FROM table_name;
SELECT MIN(column_name) FROM table_name;
SELECT MAX(column_name) FROM table_name;
```

---

## Non-numerical vs Numeric Data

### Numerical fields only

- `AVG()` — returns the average value.
- `SUM()` — returns the total sum.

### Non-numerical fields allowed

- `COUNT()` — returns the number of rows that match a specified criterion.
- `MIN()` — for text, returns the first value in alphabetical order.
- `MAX()` — for text, returns the last value in alphabetical order.

---

**Examples:**

```sql
SELECT MIN(country)
FROM films;
```

Result:

| min         |
|-------------|
| Afghanistan |

---

```sql
SELECT MAX(country)
FROM films;
```

Result:

| max          |
|--------------|
| West Germany |
