#!/usr/bin/env python3
"""
Active Directory CSV Sanitizer for SpikeFli Legacy Parser

This script cleans up the AD CSV export to prevent parsing issues:
- Removes embedded quotes and commas from field values
- Ensures proper column alignment
- Simplifies boolean values (True/False → 1/0)
- Cleans date formats
- Outputs a clean CSV that the legacy parser can handle reliably
"""

import pandas as pd
import re
from datetime import datetime
import os

def sanitize_ad_csv(input_path, output_path=None):
    """Sanitize Active Directory CSV for legacy parser compatibility"""

    print("🧹 SANITIZING ACTIVE DIRECTORY CSV...")

    # Load the original CSV
    try:
        df = pd.read_csv(input_path, encoding='utf-8')
        print(f"  📂 Loaded {len(df)} records from: {os.path.basename(input_path)}")
    except Exception as e:
        print(f"❌ Error loading CSV: {e}")
        return False

    print(f"  📊 Original columns: {list(df.columns)}")

    # Clean all text fields
    for col in df.columns:
        if df[col].dtype == 'object':  # String columns
            df[col] = df[col].astype(str)

            # Remove problematic characters
            df[col] = df[col].str.replace('"', '', regex=False)  # Remove quotes
            df[col] = df[col].str.replace(',', ' ', regex=False)  # Replace commas with spaces
            df[col] = df[col].str.replace('\n', ' ', regex=False)  # Remove newlines
            df[col] = df[col].str.replace('\r', ' ', regex=False)  # Remove carriage returns
            df[col] = df[col].str.strip()  # Remove leading/trailing whitespace

            # Replace 'nan' with empty string
            df[col] = df[col].replace('nan', '')

    # Specifically clean boolean fields
    bool_columns = ['Enabled']
    for col in bool_columns:
        if col in df.columns:
            df[col] = df[col].astype(str).str.upper()  # Ensure string type and normalize to uppercase
            df[col] = df[col].replace({'TRUE': '1', 'FALSE': '0', 'NAN': '1', '': '1'})  # Convert to 1/0, default to enabled
            print(f"  ✅ Cleaned boolean column: {col}")

    # Clean date fields
    date_columns = ['AccountExpires', 'whenCreated', 'whenChanged']
    for col in date_columns:
        if col in df.columns:
            # Replace various "never expires" values with empty string
            never_values = ['12-31-1600', '01-01-1601', '12-31-9999', '1600-12-31', '1601-01-01', '9999-12-31']
            for never_val in never_values:
                df[col] = df[col].replace(never_val, '')
            print(f"  ✅ Cleaned date column: {col}")

    # Clean phone number fields
    phone_columns = ['telephoneNumber', 'mobile']
    for col in phone_columns:
        if col in df.columns:
            # First handle numeric/decimal phone numbers - convert to int to remove decimal
            df[col] = pd.to_numeric(df[col], errors='coerce')  # Convert to numeric, NaN for invalid
            df[col] = df[col].fillna(0).astype('int64')  # Fill NaN with 0, convert to int

            # Convert to string and clean
            df[col] = df[col].astype(str)
            df[col] = df[col].str.replace(r'[^\d]', '', regex=True)  # Remove non-digits
            df[col] = df[col].replace(['nan', '0'], '')  # Replace 'nan' and '0' with empty
            print(f"  ✅ Cleaned phone column: {col}")

    # Ensure cn (Common Name) exists and is clean - this is critical for the parser
    if 'cn' in df.columns:
        df['cn'] = df['cn'].str.strip()
        df = df[df['cn'] != '']  # Remove rows with empty cn
        print(f"  ✅ Filtered out records with empty 'cn' field")

    # Generate output filename if not provided
    if output_path is None:
        base_name = os.path.splitext(input_path)[0]
        output_path = f"{base_name}_SANITIZED.csv"

    # Save sanitized CSV without quotes around fields
    try:
        df.to_csv(output_path, index=False, quoting=0)  # quoting=0 means no quotes
        print(f"  💾 Saved sanitized CSV to: {os.path.basename(output_path)}")
        print(f"  📊 Final records: {len(df)}")

        # Show sample of cleaned data
        print("\n  🔍 SAMPLE CLEANED DATA:")
        if 'cn' in df.columns and 'Enabled' in df.columns:
            sample = df[['cn', 'DisplayName', 'Enabled', 'telephoneNumber', 'mobile']].head(3)
            print(sample.to_string(index=False))

        return output_path
    except Exception as e:
        print(f"❌ Error saving sanitized CSV: {e}")
        return False

def main():
    """Main execution function"""

    # Look for AD CSV in input directory first, then fallback
    script_dir = os.path.dirname(os.path.abspath(__file__))
    ad_input_dir = os.path.join(script_dir, "ActiveDirectory_input")

    # Find the latest file in input directory
    import glob
    ad_files = glob.glob(os.path.join(ad_input_dir, "*.csv"))

    if ad_files:
        input_file = max(ad_files, key=os.path.getmtime)
        print(f"📁 Using input file: {os.path.basename(input_file)}")
    else:
        # Fallback to the known location
        input_file = "/Users/jacquesbotha/RiderProjects/Node2-Spikefli/data/NorthView/Northview ActiveDirectory.csv"
        if not os.path.exists(input_file):
            print("❌ No Active Directory CSV file found!")
            print("Place your AD CSV in the ActiveDirectory_input/ folder or ensure it exists at:")
            print(input_file)
            return

    # Output to the same directory as input
    output_dir = os.path.dirname(input_file)
    output_file = os.path.join(output_dir, "Northview_ActiveDirectory_SANITIZED.csv")

    # Sanitize the file
    result = sanitize_ad_csv(input_file, output_file)

    if result:
        print("\n✅ SANITIZATION COMPLETE!")
        print(f"📄 Use this file with the legacy parser: {os.path.basename(result)}")
        print("\n💡 TIP: The sanitized file removes all quotes, commas, and problematic characters")
        print("     that cause column misalignment in the legacy OLE DB parser.")
    else:
        print("\n❌ SANITIZATION FAILED!")

if __name__ == "__main__":
    main()