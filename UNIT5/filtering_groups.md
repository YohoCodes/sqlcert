## Filtering Groups

# Order of Syntax vs. Order of Execution

**Order of Syntax**
1. `SELECT`
2. `FROM`
3. `WHERE`
4. `GROUP BY`
5. `HAVING`
6. `ORDER BY`
7. `LIMIT`

**Order of Execution**
1. `FROM`
2. `WHERE`
3. `GROUP BY`
4. `HAVING`
5. `SELECT`
6. `ORDER BY`
7. `LIMIT`

---

## SQL Script Examples

### Invalid: Filtering on Aggregate in WHERE
```sql
SELECT release_year,
    COUNT(title) AS title_count
FROM films
WHERE COUNT(title) > 10
GROUP BY release_year;
```
**Error:** Cannot use aggregate functions in WHERE clause.

### Valid: Filtering on GROUP BY Column in WHERE
```sql
SELECT release_year,
    COUNT(title) AS title_count
FROM films
WHERE release_year > 2000
GROUP BY release_year;
```
**Example Output:**
| release_year | title_count |
|--------------|-------------|
| 2001         | 12          |
| 2002         | 15          |
| 2003         | 9           |

### Why?
In the first query, `WHERE` tries to filter on an aggregate function after grouping, which is not allowed due to SQL's order of execution. In the second, `WHERE` filters on a column available before grouping, which is allowed.

### What About Filtering on Aggregates?

---

### Correct: Filtering Aggregates with HAVING
```sql
SELECT release_year,
    COUNT(title) AS title_count
FROM films
GROUP BY release_year
HAVING COUNT(title) > 10;
```
**Example Output:**
| release_year | title_count |
|--------------|-------------|
| 2001         | 12          |
| 2002         | 15          |

---