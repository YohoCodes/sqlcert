# SQL Style Notes

## Formatting Queries
- Put `SELECT` and `FROM` on different lines for readability.

```sql
SELECT title, release_year, country
FROM films
LIMIT 3;
```

## Quoting Field Names
- Put non-standard field names in double-quotes.

```sql
SELECT title, "release year", country
FROM films
LIMIT 3;
```