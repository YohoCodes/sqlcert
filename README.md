# SQLCert Project

## 1. Summary
These are my notes from two short DataCamp courses: **Introduction to SQL** and **Intermediate SQL**. The `INTRO` folder contains notes and queries for the first course. The `UNIT` folders correspond to topics from the "Intermediate SQL" course.

## 2. Setting Up the Database (PostgreSQL)
This course uses the PostgreSQL flavor of SQL. After connecting to a PostgreSQL server (e.g., using PGadmin or psql) and creating a new database, run the `creating_table_schema.sql` script. This script will create four tables in your PostgreSQL database with the appropriate field names and datatypes, following PostgreSQL conventions. Make sure you are connected to the correct database before running the script.

## 3. Uploading CSVs to PGadmin
If you encounter issues importing CSVs into PGadmin, you should preprocess the files using the provided Python script. To do this:

1. Make sure you have Python 3 installed on your system.
2. Open a terminal and navigate to the project root directory.
3. Run the following command:
   
	```bash
	python process_csv_files.py
	```

	This will process the raw CSV files in the `Datasets` folder and output cleaned versions to `Datasets/processed`.
4. In PGadmin, use the import tool to upload the processed CSVs from `Datasets/processed` into your database tables. These files are formatted to avoid common import errors.

## 4. Unit Summaries
- **INTRO**: Notes for "Introduction to SQL" course
- **UNIT1**: Intermediate SQL - Selecting Data
- **UNIT2**: Intermediate SQL - Filtering Records
- **UNIT3**: Intermediate SQL - Aggregate Functions
- **UNIT4**: Intermediate SQL - Sorting and Grouping

## 5. Appendix
The `APPENDIX` folder contains an exhaustive SQL keyword dictionary and a list of all keywords covered in the courses.
