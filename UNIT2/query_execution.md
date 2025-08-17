# Query Execution

## Order of Execution
- SQL is **not processed in its written order**
- In reality:
    1. **Table is chosen** (`FROM`)
    2. **Columns are chosen** (`SELECT`)
    3. **Selection is reduced** (`LIMIT`)
- **Why know this?**
    - It's helpful for debugging queries

### Example: Order of Execution
```sql
SELECT name FROM people LIMIT 5;
```
- The database first looks at the `FROM people` clause, then selects the `name` column, and finally applies the `LIMIT 5`.

---

## Debugging SQL
- Some errors return an error message
    > Example: `SELECT name age FROM people;`
    > Error: syntax error at or near "age"
- **Comma Errors**
    - Usually, you must determine what the specific error is on your own
    > Example: `SELECT name age FROM people;`
    > Error: syntax error at or near "age"
    > Correct: `SELECT name, age FROM people;`
- **Most common errors:**
    - Misspelling
        > Example: `SELECT nmae FROM people;`
        > Error: column "nmae" does not exist
    - Incorrect Capitalization
        > Example: `select name from people;`
        > (May work, but some databases are case-sensitive)
    - Incorrect or missing punctuation, especially commas
        > Example: `SELECT name age FROM people;`
        > Error: syntax error at or near "age"