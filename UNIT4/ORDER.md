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

## Consequences of Order of Execution

- All keywords executed before `SELECT` will not recognize aliases defined in the `SELECT` clause.
    - For example, `ORDER BY` will recognize aliases, but `GROUP BY` will not.
    - This means you cannot use an alias in a `WHERE` or `GROUP BY` clause if it was defined in the `SELECT` clause.