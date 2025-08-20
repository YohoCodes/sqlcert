# SQL Grouping Notes

This document summarizes key concepts and examples from the `grouping.sql` script.

## Grouping by Single Fields

You can use `GROUP BY` to aggregate data by a single column:

```sql
SELECT certification, COUNT(title) AS title_count
FROM films
GROUP BY certification;
```
- Returns the count of titles for each certification.

**Example Output:**

| certification | title_count |
|---------------|-------------|
| PG            | 12          |
| PG-13         | 8           |
| R             | 15          |
| G             | 5           |

## Unique Values with GROUP BY

If you use `GROUP BY` without an aggregate function, it returns all unique values:

```sql
SELECT certification
FROM films
GROUP BY certification;
```
- Equivalent to `SELECT DISTINCT certification FROM films`.

**Example Output:**

| certification |
|---------------|
| PG            |
| PG-13         |
| R             |
| G             |

## Invalid GROUP BY Usage

This query will return an error because `title` is not aggregated or included in the `GROUP BY` clause:

```sql
SELECT certification, title
FROM films
GROUP BY certification;
```

**Example Output:**

```
ERROR: column "title" must appear in the GROUP BY clause or be used in an aggregate function
```

## Aggregate Functions with GROUP BY

You can use aggregate functions like `AVG` to summarize data for each group:

```sql
SELECT certification, AVG(budget) AS avg_budget
FROM films
WHERE certification IS NOT NULL
    AND budget IS NOT NULL
GROUP BY certification;
```
- Returns the average budget for each certification, excluding nulls.

**Example Output:**

| certification | avg_budget   |
|---------------|--------------|
| PG            | 35000000     |
| PG-13         | 42000000     |
| R             | 27000000     |
| G             | 18000000     |

## Grouping by Multiple Fields

You can group by more than one column to get summary statistics for each combination:

```sql
SELECT certification, language, COUNT(title) AS title_count
FROM films
WHERE certification IS NOT NULL
    AND language IS NOT NULL
GROUP BY certification, language
ORDER BY title_count DESC;
```
- Returns the count of titles for each certification-language pair, ordered by count descending.

**Example Output:**

| certification | language | title_count |
|---------------|----------|-------------|
| PG-13         | English  | 7           |
| R             | English  | 10          |
| PG            | French   | 3           |
| G             | English  | 5           |

## Order of Syntax vs. Order of Execution

**Order of Syntax:**
1. `SELECT`
2. `FROM`
3. `WHERE`
4. `GROUP BY`
5. `ORDER BY`
6. `LIMIT`

**Order of Execution:**
1. `FROM`
2. `WHERE`
3. `GROUP BY`
4. `SELECT`
5. `ORDER BY`
6. `LIMIT`

---

**Summary:**
- `GROUP BY` is used to aggregate data by one or more columns.
- Aggregate functions (e.g., `COUNT`, `AVG`) are typically used with `GROUP BY`.
- All non-aggregated columns in the `SELECT` clause must be included in the `GROUP BY` clause.
- You can group by multiple columns for more detailed summaries.
