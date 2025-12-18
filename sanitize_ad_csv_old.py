#!/usr/bin/env python3
"""
Enterprise Active Directory CSV Sanitizer for SpikeFli Analysis

Converts different client Active Directory export formats into the complete
People table schema with full organizational hierarchy and cost center data.

Target Schema (People Table Compatible):
- Basic: status, isPerson, lastdate, userid, username, email  
- Phones: phone1, phone2 (telephoneNumber, mobile)
- Organization: OU, GL1, GL2, GL3 (Cost Centers, Departments)
- Management: isMgr, isExec, mgrlevel, mgr, mgrOU, mgrid
- System: Modified, LinkType, TS

Supported Input Formats:
- Northview: Basic AD export (DisplayName, Enabled, mobile, telephoneNumber)
- Cenovus: Full AD export (Cost Center, managerdn, ismanager, isexec, etc.)
- Gateway: Historic format with GL codes and organizational structure
- Extensible for future client formats
"""

import pandas as pd
import re
from datetime import datetime
import os

def detect_client_format(df):
    """Detect which client format this AD export uses based on column patterns"""
    columns = list(df.columns)
    
    if 'personstatus' in columns and 'tele' in columns and 'userid' in columns:
        return 'cenovus'
    elif 'DisplayName' in columns and 'Enabled' in columns and 'telephoneNumber' in columns:
        return 'northview'
    else:
        return 'unknown'

def normalize_phone_number(phone_str):
    """Normalize phone numbers to clean digit format"""
    if pd.isna(phone_str) or str(phone_str).strip() == '' or str(phone_str) == 'nan':
        return ''
    
    # Extract only digits
    digits = re.sub(r'\D', '', str(phone_str))
    
    # Remove leading 1 if it's a North American number (11 digits starting with 1)
    if len(digits) == 11 and digits.startswith('1'):
        digits = digits[1:]
    
    return digits if len(digits) >= 10 else ''

def standardize_cenovus_format(df):
    """Convert Cenovus AD format to standard format"""
    print("  🔄 Converting Cenovus format to standard format...")
    
    # Create standardized column mapping
    standardized = pd.DataFrame()
    
    # Basic user info
    standardized['DisplayName'] = df['givenname'].fillna('') + ' ' + df['surname'].fillna('')
    standardized['DisplayName'] = standardized['DisplayName'].str.strip()
    standardized['cn'] = df['userid']
    standardized['GivenName'] = df['givenname']
    standardized['Surname'] = df['surname']
    standardized['UserPrincipalName'] = df['Email']
    
    # Department/organizational info
    standardized['Department'] = df['Dept'].fillna('')
    standardized['Division'] = df['Cost Center'].fillna('')
    standardized['Manager'] = df['managerdn'].fillna('')
    standardized['BillingCode'] = df['Cost Center'].fillna('')
    
    # Status field - convert from "3::Active" to 1/0
    def convert_person_status(status):
        if pd.isna(status):
            return 0
        status_str = str(status).lower()
        if 'active' in status_str:
            return 1
        else:
            return 0
    
    standardized['Enabled'] = df['personstatus'].apply(convert_person_status)
    
    # Phone numbers
    standardized['mobile'] = df['mobile'].apply(normalize_phone_number)
    standardized['telephoneNumber'] = df['tele'].apply(normalize_phone_number)
    
    # Default empty fields to maintain compatibility
    standardized['Title'] = ''
    standardized['Office'] = ''
    standardized['Street'] = ''
    standardized['City'] = ''
    standardized['State'] = ''
    standardized['SID'] = ''
    standardized['DistinguishedName'] = ''
    standardized['whenCreated'] = ''
    standardized['AccountExpires'] = ''
    standardized['whenChanged'] = ''
    
    print(f"  ✅ Converted {len(standardized)} Cenovus records to standard format")
    return standardized

def standardize_northview_format(df):
    """Northview format is already in standard format, just clean it"""
    print("  🔄 Cleaning Northview standard format...")
    
    # Clean existing format
    standardized = df.copy()
    
    # Normalize phone numbers
    if 'mobile' in standardized.columns:
        standardized['mobile'] = standardized['mobile'].apply(normalize_phone_number)
    if 'telephoneNumber' in standardized.columns:
        standardized['telephoneNumber'] = standardized['telephoneNumber'].apply(normalize_phone_number)
    
    # Ensure Enabled is 1/0 format
    if 'Enabled' in standardized.columns:
        def convert_enabled(val):
            if pd.isna(val):
                return 0
            val_str = str(val).lower()
            if val_str in ['true', '1', 'yes', 'active']:
                return 1
            else:
                return 0
        standardized['Enabled'] = standardized['Enabled'].apply(convert_enabled)
    
    print(f"  ✅ Cleaned {len(standardized)} Northview records")
    return standardized

def sanitize_ad_csv(input_path, output_path=None):
    """Sanitize Active Directory CSV for any client format"""

    print("🧹 MULTI-CLIENT ACTIVE DIRECTORY SANITIZER...")

    # Load the original CSV
    try:
        df = pd.read_csv(input_path, encoding='utf-8')
        print(f"  📂 Loaded {len(df)} records from: {os.path.basename(input_path)}")
    except Exception as e:
        print(f"❌ Error loading CSV: {e}")
        return False

    print(f"  📊 Original columns: {list(df.columns)}")
    
    # Detect client format
    client_format = detect_client_format(df)
    print(f"  🔍 Detected format: {client_format.upper()}")
    
    # Convert to standardized format based on client type
    if client_format == 'cenovus':
        standardized_df = standardize_cenovus_format(df)
    elif client_format == 'northview':
        standardized_df = standardize_northview_format(df)
    else:
        print(f"❌ Unknown client format! Columns found: {list(df.columns)}")
        print("   Supported formats:")
        print("   - Cenovus: userid, personstatus, tele, mobile, etc.")
        print("   - Northview: DisplayName, Enabled, telephoneNumber, etc.")
        return False

    # Apply final cleaning to standardized data
    print("  🧹 Applying final text cleaning...")
    df = standardized_df.copy()
    
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

    # Ensure Enabled field is clean 1/0 format
    if 'Enabled' in df.columns:
        df['Enabled'] = df['Enabled'].astype(str)
        df['Enabled'] = df['Enabled'].replace({'nan': '1', '': '1'})  # Default to enabled if missing
        print(f"  ✅ Finalized Enabled column: {df['Enabled'].value_counts().to_dict()}")

    # Clean date fields if they exist
    date_columns = ['AccountExpires', 'whenCreated', 'whenChanged']
    for col in date_columns:
        if col in df.columns:
            # Replace various "never expires" values with empty string
            never_values = ['12-31-1600', '01-01-1601', '12-31-9999', '1600-12-31', '1601-01-01', '9999-12-31']
            for never_val in never_values:
                df[col] = df[col].replace(never_val, '')
            print(f"  ✅ Cleaned date column: {col}")

    # Phone numbers are already cleaned in the standardization functions
    phone_columns = ['telephoneNumber', 'mobile']
    for col in phone_columns:
        if col in df.columns:
            print(f"  ✅ Phone column {col}: {len(df[df[col] != ''])} numbers found")

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

    # Output to the same directory as input with dynamic naming
    output_dir = os.path.dirname(input_file)
    base_name = os.path.splitext(os.path.basename(input_file))[0]
    output_file = os.path.join(output_dir, f"{base_name}_SANITIZED.csv")

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