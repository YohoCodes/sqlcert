# Processed Datasets

This folder contains cleaned versions of the original CSV datasets with empty quoted strings (`""`) replaced with blank cells.

## Files

- **`films_processed.csv`** - Cleaned film data (original: `films.csv`)
- **`people_processed.csv`** - Cleaned people data (original: `people.csv`) 
- **`reviews_processed.csv`** - Cleaned review data (original: `reviews.csv`)
- **`roles_processed.csv`** - Cleaned role data (original: `roles.csv`)

## Changes Made

- All instances of `""` (empty quoted strings) have been replaced with blank cells
- File sizes reduced due to removal of unnecessary quotes
- Data integrity maintained - same structure and content
- Cleaner formatting for database imports and data analysis

## Original Files

The original CSV files remain unchanged in the parent `Datasets/` folder.

## Processing Script

Use `process_csv_files.py` in the root directory to reprocess files or add new ones.
