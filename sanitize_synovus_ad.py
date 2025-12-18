#!/usr/bin/env python3
"""
Synovus/Cenovus Active Directory CSV Sanitizer for SpikeFli Analysis

Dedicated script for processing Synovus (formerly Cenovus) Active Directory exports.
Converts Synovus AD format into the standard People table schema.

Synovus AD Export Format:
- personstatus: Status field (3::Active, etc.)
- userid: User identifier
- givenname, surname: Name components
- Email: User email address
- Dept: Department
- Cost Center: Organizational billing code
- managerdn: Manager distinguished name
- ismanager, isexec: Management flags
- mobile, tele: Phone numbers

Target Schema (People Table Compatible):
- Basic: status, isPerson, lastdate, userid, username, email
- Phones: phone1, phone2 (telephoneNumber, mobile)
- Organization: OU, GL1, GL2, GL3 (Cost Centers, Departments)
- Management: isMgr, isExec, mgrlevel, mgr, mgrOU, mgrid
- System: Modified, LinkType, TS
"""

import pandas as pd
import re
from datetime import datetime
import os
import glob

def normalize_phone_number(phone_str):
    """Normalize phone numbers to clean digit format"""
    if pd.isna(phone_str) or str(phone_str).strip() == '' or str(phone_str) == 'nan':
        return ''

    phone_string = str(phone_str).strip()

    # Handle pandas float conversion artifact (.0 suffix)
    if phone_string.endswith('.0'):
        phone_string = phone_string[:-2]

    # Extract only digits
    digits = re.sub(r'\D', '', phone_string)

    # Remove leading 1 if it's a North American number (11 digits starting with 1)
    if len(digits) == 11 and digits.startswith('1'):
        digits = digits[1:]

    # Ensure we have exactly 10 digits for North American numbers
    if len(digits) == 10:
        return digits
    elif len(digits) > 10:
        # If more than 10 digits, take the last 10
        return digits[-10:]
    else:
        # If less than 10 digits, return empty (invalid phone number)
        return ''

def extract_manager_info(managerdn):
    """Extract manager name and OU from Distinguished Name string"""
    if pd.isna(managerdn) or managerdn == '':
        return '', ''

    manager_str = str(managerdn)

    # Extract CN (Common Name) for manager name
    cn_match = re.search(r'CN=([^,]+)', manager_str)
    manager_name = cn_match.group(1) if cn_match else ''

    # Extract OU (Organizational Unit)
    ou_matches = re.findall(r'OU=([^,]+)', manager_str)
    manager_ou = ou_matches[0] if ou_matches else ''

    return manager_name, manager_ou

def detect_synovus_format(df):
    """Detect if this is a Synovus AD export based on column patterns"""
    columns = [col.lower() for col in df.columns]

    # Synovus/Cenovus format indicators
    synovus_indicators = ['personstatus', 'tele', 'userid', 'cost center', 'managerdn']
    required_count = len([ind for ind in synovus_indicators if ind in columns])

    return required_count >= 4  # Need at least 4 out of 5 key indicators

def convert_person_status(status):
    """Convert Synovus person status to enabled flag"""
    if pd.isna(status):
        return 0
    status_str = str(status).lower()
    return 1 if 'active' in status_str else 0

def standardize_synovus_format(df):
    """Convert Synovus AD format to expected analysis format"""
    print("  🔄 Converting Synovus format to standard analysis format...")

    # Create standardized column mapping that analysis expects
    standardized = pd.DataFrame()

    # Basic user info (map to expected analysis column names)
    standardized['DisplayName'] = (df['givenname'].fillna('') + ' ' + df['surname'].fillna('')).str.strip()
    standardized['cn'] = df['userid'].fillna('')
    standardized['GivenName'] = df['givenname'].fillna('')
    standardized['Surname'] = df['surname'].fillna('')
    standardized['UserPrincipalName'] = df['Email'].fillna('')

    # Department/organizational info (use .get() for optional columns)
    standardized['Department'] = df.get('Dept', pd.Series([''] * len(df))).fillna('')
    standardized['Division'] = df['Cost Center'].fillna('')
    standardized['Manager'] = df.get('managerdn', pd.Series([''] * len(df))).fillna('')
    standardized['BillingCode'] = df['Cost Center'].fillna('')

    # Status field - convert from "3::Active" to 1/0
    standardized['Enabled'] = df['personstatus'].apply(convert_person_status)

    # Phone numbers (use expected column names for analysis)
    standardized['mobile'] = df['mobile'].apply(normalize_phone_number)
    standardized['telephoneNumber'] = df['tele'].apply(normalize_phone_number)

    # Additional fields to maintain compatibility
    standardized['Title'] = df.get('title', pd.Series([''] * len(df))).fillna('')
    standardized['Office'] = ''
    standardized['Street'] = ''
    standardized['City'] = ''
    standardized['State'] = ''
    standardized['SID'] = ''
    standardized['DistinguishedName'] = df.get('managerdn', pd.Series([''] * len(df))).fillna('')
    standardized['whenCreated'] = ''
    standardized['AccountExpires'] = ''
    standardized['whenChanged'] = ''

    # 🔥 PRESERVE IMPORTANT SYNOVUS-SPECIFIC ORGANIZATIONAL DATA
    # Convert boolean values to 1/0 format (matching People Table standard)
    standardized['IsManager'] = df.get('ismanager', pd.Series([''] * len(df))).fillna('').apply(lambda x: 1 if str(x).upper() == 'Y' else 0)
    standardized['IsExecutive'] = df.get('isexec', pd.Series([''] * len(df))).fillna('').apply(lambda x: 1 if str(x).upper() == 'Y' else 0)
    standardized['ManagementLevel'] = df.get('mgrlevel', pd.Series([''] * len(df))).fillna('')
    standardized['ManagerUserID'] = df.get('manageruserid', pd.Series([''] * len(df))).fillna('')
    standardized['ActiveStatus'] = df.get('active', pd.Series([''] * len(df))).fillna('')
    standardized['MiddleName'] = df.get('middle', pd.Series([''] * len(df))).fillna('')
    standardized['GivenName2'] = df.get('givenname2', pd.Series([''] * len(df))).fillna('')

    print(f"  ✅ Converted {len(standardized)} Synovus records to analysis format")
    return standardized

def find_synovus_ad_files():
    """Find Synovus AD CSV files in the input directory"""
    files = []

    # Check organized folder structure first
    synovus_folder = "ActiveDirectory_input/Synovus"
    if os.path.exists(synovus_folder):
        for csv_file in glob.glob(os.path.join(synovus_folder, "*.csv")):
            if not csv_file.endswith('_SANITIZED.csv'):
                files.append(csv_file)

    # Fallback to root directory for backward compatibility
    input_dir = "ActiveDirectory_input"
    if os.path.exists(input_dir):
        patterns = [
            "Cenovus*.csv",
            "Synovus*.csv",
            "*cenovus*.csv",
            "*synovus*.csv"
        ]

        for pattern in patterns:
            root_files = glob.glob(os.path.join(input_dir, pattern))
            files.extend([f for f in root_files if not f.endswith('_SANITIZED.csv')])

def sanitize_synovus_ad(input_file=None):
    """Main function to sanitize Synovus AD export"""
    print("🧹 SYNOVUS ACTIVE DIRECTORY SANITIZER")
    print("=" * 60)

    # Find input file
    if input_file is None:
        synovus_files = find_synovus_ad_files()

        if not synovus_files:
            print("❌ No Synovus AD files found in ActiveDirectory_input/")
            print("   Expected patterns: Cenovus*.csv, Synovus*.csv, *cenovus*.csv, *synovus*.csv")
            return False

        if len(synovus_files) == 1:
            input_file = synovus_files[0]
        else:
            print("📂 Multiple Synovus AD files found:")
            for i, file in enumerate(synovus_files, 1):
                print(f"   {i}. {os.path.basename(file)}")

            try:
                choice = int(input("Select file number: ")) - 1
                input_file = synovus_files[choice]
            except (ValueError, IndexError):
                print("❌ Invalid selection")
                return False

    print(f"📂 Processing: {os.path.basename(input_file)}")
    print("=" * 60)

    # Load and validate data
    try:
        print("📊 Loading Synovus Active Directory data...")
        df = pd.read_csv(input_file)
        print(f"  ✅ Loaded {len(df)} records with {len(df.columns)} columns")
    except Exception as e:
        print(f"❌ Error loading file: {e}")
        return False

    # Validate it's Synovus format
    if not detect_synovus_format(df):
        print("❌ This doesn't appear to be a Synovus AD export")
        print("   Expected columns: personstatus, userid, tele, cost center, managerdn")
        print(f"   Found columns: {', '.join(df.columns[:10])}...")
        return False

    print("🔍 Detected format: SYNOVUS")
    print(f"  📋 Columns found: {', '.join(df.columns[:10])}...")

    # Convert to standard format
    try:
        standardized_df = standardize_synovus_format(df)
    except Exception as e:
        print(f"❌ Error during format conversion: {e}")
        return False

    # Save sanitized data back to input directory
    base_name = os.path.splitext(os.path.basename(input_file))[0]
    output_file = os.path.join(os.path.dirname(input_file), f"{base_name}_SANITIZED.csv")

    try:
        print("💾 Saving sanitized data...")
        standardized_df.to_csv(output_file, index=False)
    except Exception as e:
        print(f"❌ Error saving file: {e}")
        return False

    print("✅ SANITIZATION COMPLETE!")
    print(f"  📂 Input: {os.path.basename(input_file)}")
    print(f"  📄 Output: {os.path.basename(output_file)}")
    print(f"  📊 Records: {len(standardized_df)}")
    print(f"  📋 Schema: People table compatible with {len(standardized_df.columns)} columns")
    print()
    print("🎯 The sanitized file is now ready for comprehensive analysis!")

    # Show sample of sanitized data
    print()
    print("📋 SAMPLE OF SANITIZED DATA:")
    try:
        sample_cols = ['DisplayName', 'UserPrincipalName', 'Department', 'Enabled', 'mobile']
        available_cols = [col for col in sample_cols if col in standardized_df.columns]
        print(standardized_df[available_cols].head(3))
    except Exception as e:
        print(f"Error displaying sample: {e}")

    return True

def main():
    """Interactive main function"""
    try:
        success = sanitize_synovus_ad()
        if success:
            print()
            print("✅ Synovus AD sanitization completed successfully")
        else:
            print("❌ Synovus AD sanitization failed")
            exit(1)
    except KeyboardInterrupt:
        print("\n🛑 Operation cancelled by user")
        exit(0)
    except Exception as e:
        print(f"❌ Unexpected error: {e}")
        exit(1)

if __name__ == "__main__":
    main()