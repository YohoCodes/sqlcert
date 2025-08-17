#!/usr/bin/env python3
"""
Script to process all CSV files and replace empty quoted strings ("") with blank cells

If a csv is not properly uploading to PostgreSQL, the user should run this script and
use the processed CSV rather than the raw one
"""

import csv
import os
import glob

def process_csv(input_file, output_file):
    """
    Process a CSV file and replace "" with blank cells
    """
    with open(input_file, 'r', encoding='utf-8') as infile, \
         open(output_file, 'w', encoding='utf-8', newline='') as outfile:
        
        reader = csv.reader(infile)
        writer = csv.writer(outfile)
        
        for row in reader:
            # Replace all instances of "" with empty strings
            processed_row = [cell if cell != '""' else '' for cell in row]
            writer.writerow(processed_row)

def main():
    # Get all CSV files in the Datasets directory
    csv_files = glob.glob('Datasets/*.csv')
    
    # Filter out already processed files and the processed folder itself
    csv_files = [f for f in csv_files if not f.endswith('_processed.csv') and 'processed' not in f]
    
    # Ensure processed folder exists
    processed_dir = 'Datasets/processed'
    os.makedirs(processed_dir, exist_ok=True)
    
    print(f"Found {len(csv_files)} CSV files to process:")
    for file in csv_files:
        print(f"  - {file}")
    
    print(f"\nOutput will be saved to: {processed_dir}/")
    print("\nProcessing files...")
    
    for input_file in csv_files:
        # Create output filename in the processed folder
        filename = os.path.basename(input_file)
        name_without_ext = os.path.splitext(filename)[0]
        output_file = f'{processed_dir}/{name_without_ext}_processed.csv'
        
        try:
            process_csv(input_file, output_file)
            print(f"✓ Successfully processed {input_file}")
            print(f"  Output saved to {output_file}")
            
            # Show a few sample lines to verify the changes
            print("  Sample of processed data:")
            with open(output_file, 'r', encoding='utf-8') as f:
                for i, line in enumerate(f):
                    if i < 3:  # Show first 3 lines
                        print(f"    {line.strip()}")
                    else:
                        break
            print()
            
        except Exception as e:
            print(f"✗ Error processing {input_file}: {e}")
    
    print("Processing complete!")

if __name__ == "__main__":
    main()
