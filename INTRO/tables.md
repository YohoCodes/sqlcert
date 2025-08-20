# Table and Field Naming Conventions

## Table Naming Guidelines
- Table names should be **clear** and **refer directly to the data** they contain.
- Use **lowercase letters** and **underscores** (`_`) to separate words (e.g., `membership_data`).

## Table Structure
- **Rows** represent **records** (individual entries).
- **Columns** represent **fields** (attributes of each record).

## Example: Membership Data Table

| card_num | name   | member_year | total_fine |
|----------|--------|-------------|------------|
| 54378    | Izzy   | 2012        | 9.86       |
| 94722    | Maham  | 2020        | 0.00       |
| 45783    | Jasmin | 2022        | 2.05       |
| 90123    | James  | 1989        | 0.00       |

## Field Naming Guidelines
- Field names should be **lowercase**, **singular**, and use **underscores** to separate words (e.g., `member_year`).
- Each field name must be **unique** within a table.
- Tables should include **keys** (such as primary or foreign keys) to help connect tables together.

