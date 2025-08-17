---
title: SQL Filtering
description: Notes on SQL WHERE clause and Boolean operators
---

# 🗂️ Filtering in SQL

> **Tip:** Use the `WHERE` keyword to filter rows in SQL queries.

## 🔎 Using the `WHERE` Keyword

**Example 1:**

```sql
WHERE color = 'green'
```

**Example 2:**

```sql
SELECT title
FROM films
WHERE release_year > 1960;
```

---

## ⚙️ Common Boolean Operators in SQL

| Operator      | Description         |
|--------------|---------------------|
| `=`          | Equal               |
| `<>` or `!=` | Not equal           |
| `<`          | Less than           |
| `>`          | Greater than        |
| `<=`         | Less than or equal  |
| `>=`         | Greater than or equal |
| `AND`        | Logical AND         |
| `OR`         | Logical OR          |
| `NOT`        | Logical NOT         |
| `BETWEEN`    | Within a range      |
| `IN`         | Matches any value in a list |
| `LIKE`       | Pattern matching    |
| `IS NULL`    | Is NULL             |
| `IS NOT NULL`| Is NOT NULL         |



## 🧮 Filtering with Multiple Criteria

You can combine conditions in the `WHERE` clause using operators like `OR`, `AND`, and `BETWEEN`:

**Operators:**

- `OR`
- `AND`
- `BETWEEN`


**Examples:**

```sql
SELECT *
FROM coats
WHERE color = 'yellow' OR length = 'short';
```

```sql
SELECT *
FROM coats
WHERE color = 'yellow' AND length = 'short';
```

```sql
SELECT *
FROM coats
WHERE buttons BETWEEN 1 AND 5;
```

---


## 🔲 Inclusive vs Non-Inclusive Boundaries

> **Info:** The `BETWEEN` operator is inclusive, while using `>` and `<` is non-inclusive.

### 🚫 Non-Inclusive Boundary Condition

```sql
SELECT title, release_year
FROM films
WHERE release_year > 1994
	AND release_year < 2000
LIMIT 5;
```

### ✅ Inclusive Boundary Condition (BETWEEN)

```sql
SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1994 AND 2000
LIMIT 5;
```

### ✅ Inclusive Boundary Condition (>= and <=)

```sql
SELECT title, release_year
FROM films
WHERE release_year >= 1994
	AND release_year <= 2000
LIMIT 5;
```

---

## 📝 SQL Query Syntax vs. Execution Order

> **Note:** The order you write SQL keywords is not always the order in which the database executes them.

### ✍️ Syntax Order

1. `SELECT`
2. `FROM`
3. `WHERE`
4. `LIMIT`

### ⚡ Execution Order

1. `FROM`
2. `WHERE`
3. `SELECT`
4. `LIMIT`

