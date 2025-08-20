
# Filtering Text

## Useful Keywords
- `LIKE`
- `NOT LIKE`
- `IN`

---

## What is a Wildcard?

> **Wildcard:** A special character used in search patterns to represent one or more unknown characters. Wildcards help match flexible or partial text values in queries.

---


### Keyword: `LIKE`
- Used to search for a pattern in a field.
- **Wildcards:**
    - `%` (percent sign): Matches any sequence of zero or more characters. Use this to find values that start, end, or contain a certain pattern.
    - `_` (underscore): Matches exactly one single character. Use this to find values with a specific character in a specific position.



---


## Examples of LIKE

### 1. Names starting with 'Jo'
```sql
SELECT name
FROM people
WHERE name LIKE 'Jo%';
```
| name        |
|-------------|
| John Smith  |
| Joanna Lee  |
| Jordan Poe  |

---

### 2. Names ending with 'son'
```sql
SELECT name
FROM people
WHERE name LIKE '%son';
```
| name         |
|--------------|
| Alison       |
| Jackson      |
| Addison Ray  |

---


### 3. Names containing 'ann' anywhere
```sql
SELECT name
FROM people
WHERE name LIKE '%ann%';
```
| name         |
|--------------|
| Joanna Lee   |
| Susanna Kim  |

---

### 4. Names with exactly 4 letters
```sql
SELECT name
FROM people
WHERE name LIKE '____';
```
| name |
|------|
| John |
| Mark |
| Anna |

---

### 5. Names where the second letter is 'a'
```sql
SELECT name
FROM people
WHERE name LIKE '_a%';
```
| name      |
|-----------|
| Mary      |
| James     |
| David     |