
# Arithmetic & Aggregate Functions in SQL

---

## 1. Aggregate Functions vs Arithmetic

- **Aggregate functions** are used to summarize fields (e.g., `SUM`, `AVG`, `MAX`, `MIN`, `COUNT`).
- **Arithmetic operations** are used to perform calculations on individual records (e.g., `+`, `-`, `*`, `/`).

> **Tip:** Always alias when using functions or arithmetic for clarity.

---

## 2. Common Mistake: Aliases in WHERE

```sql
SELECT budget AS max_budget
FROM films
WHERE max_budget IS NOT NULL;
```

**Error:**

column "max_budget" does not exist
LINE 5: WHERE max_budget IS NOT NULL;
	^

> **Note:** Aliases defined in SELECT cannot be used in WHERE. Use the original column name instead.

---

## 3. Aggregate Functions: Aliasing Example

### Without Aliasing

```sql
SELECT MAX(budget), MAX(duration)
FROM films;
```

Result:

| max         | max |
|-------------|-----|
| 12215500000 | 334 |

### With Aliasing

```sql
SELECT MAX(budget) AS max_budget,
	MAX(duration) AS max_duration
FROM films;
```

Result:

| max_budget   | max_duration |
|--------------|--------------|
| 12215500000  | 334          |

