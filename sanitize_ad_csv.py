#!/usr/bin/env python3
"""
Northview Active Directory CSV Sanitizer for SpikeFli Analysis

Converts Northview Active Directory export formats into the complete
People table schema with full organizational hierarchy and cost center data.

Target Schema (People Table Compatible):
- Basic: status, isPerson, lastdate, userid, username, email
- Phones: phone1, phone2 (telephoneNumber, mobile)
- Organization: OU, GL1, GL2, GL3 (Cost Centers, Departments)
- Management: isMgr, isExec, mgrlevel, mgr, mgrOU, mgrid
- System: Modified, LinkType, TS

Supported Input Formats:
- Northview: Basic AD export (DisplayName, Enabled, mobile, telephoneNumber)
- Gateway: Historic format with GL codes and organizational structure (if encountered)
- Extensible for future client formats
"""

import pandas as pd
import re
from datetime import datetime
import os

def detect_client_format(df):
    """Detect which client format this AD export uses based on column patterns"""
    columns = [col.lower() for col in df.columns]

    # Northview format detection (primary format)
    northview_indicators = ['displayname', 'enabled', 'telephonenumber']
    if all(indicator in columns for indicator in northview_indicators):
        return 'northview'

    # Gateway format detection (historic format if encountered)
    gateway_indicators = ['gl1', 'gl2', 'gl3', 'costcenter']
    if any(indicator in columns for indicator in gateway_indicators):
        return 'gateway'

    return 'unknown'

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

def extract_manager_info(manager_dn):
    """Extract manager name from DN format like 'McKay, Lori' or 'CN=John Smith,OU=...'"""
    if pd.isna(manager_dn) or str(manager_dn).strip() == '':
        return '', ''

    manager_str = str(manager_dn).strip()

    # Handle "Last, First" format
    if ',' in manager_str and '=' not in manager_str:
        return manager_str, ''

    # Handle DN format "CN=John Smith,OU=Department,..."
    if manager_str.startswith('CN='):
        # Extract name from CN
        cn_match = re.search(r'CN=([^,]+)', manager_str)
        name = cn_match.group(1) if cn_match else ''

        # Extract OU
        ou_match = re.search(r'OU=([^,]+)', manager_str)
        ou = ou_match.group(1) if ou_match else ''

        return name, ou

    # Default: treat as name
    return manager_str, ''

# Note: Synovus/Cenovus format handling moved to sanitize_synovus_ad.py

def standardize_northview_format(df):
    """Convert Northview AD format to expected analysis format"""
    print("  🔄 Converting Northview format to standard analysis format...")

    # Keep the original expected column structure for analysis compatibility
    standardized = pd.DataFrame()

    # Basic user info (preserve original column names)
    standardized['DisplayName'] = df['DisplayName'].fillna('')
    standardized['cn'] = df['cn'].fillna('')
    standardized['GivenName'] = df['GivenName'].fillna('')
    standardized['Surname'] = df['Surname'].fillna('')
    standardized['UserPrincipalName'] = df['UserPrincipalName'].fillna('')

    # Department/organizational info
    standardized['Department'] = df['Department'].fillna('')
    standardized['Division'] = df['Division'].fillna('')
    standardized['Manager'] = df['Manager'].fillna('')
    standardized['BillingCode'] = df['BillingCode'].fillna('')

    # Status field (keep original Enabled column name)
    standardized['Enabled'] = df['Enabled'].fillna(0)

    # Phone numbers (keep original column names that analysis expects)
    standardized['mobile'] = df['mobile'].apply(normalize_phone_number)
    standardized['telephoneNumber'] = df['telephoneNumber'].apply(normalize_phone_number)

    # Additional fields from original format
    standardized['Title'] = df['Title'].fillna('')
    standardized['Office'] = df['Office'].fillna('')
    standardized['Street'] = df['Street'].fillna('')
    standardized['City'] = df['City'].fillna('')
    standardized['State'] = df['State'].fillna('')
    standardized['SID'] = df['SID'].fillna('')
    standardized['DistinguishedName'] = df['DistinguishedName'].fillna('')
    standardized['whenCreated'] = df['whenCreated'].fillna('')
    standardized['AccountExpires'] = df['AccountExpires'].fillna('')
    standardized['whenChanged'] = df['whenChanged'].fillna('')

    print(f"  ✅ Converted {len(standardized)} Northview records to analysis format")
    return standardized

def get_available_ad_files():
    """Get all available Active Directory CSV files"""
    script_dir = os.path.dirname(os.path.abspath(__file__))
    input_dir = os.path.join(script_dir, "ActiveDirectory_input")

    if not os.path.exists(input_dir):
        return []

    # Find CSV files in input directory (excluding sanitized files)
    csv_files = [f for f in os.listdir(input_dir) if f.endswith('.csv') and not f.endswith('_SANITIZED.csv')]
    return sorted(csv_files)

def select_ad_file(csv_files):
    """Allow user to select which AD file to process"""
    if len(csv_files) == 0:
        return None
    elif len(csv_files) == 1:
        return csv_files[0]

    print("\n📁 MULTIPLE AD FILES FOUND:")
    print("="*50)
    for i, file in enumerate(csv_files, 1):
        # Get file size and modification date
        script_dir = os.path.dirname(os.path.abspath(__file__))
        input_dir = os.path.join(script_dir, "ActiveDirectory_input")
        file_path = os.path.join(input_dir, file)

        size = os.path.getsize(file_path)
        size_mb = size / (1024 * 1024)
        mod_time = datetime.fromtimestamp(os.path.getmtime(file_path))

        print(f"{i}. {file}")
        print(f"   📊 Size: {size_mb:.1f} MB")
        print(f"   📅 Modified: {mod_time.strftime('%Y-%m-%d %H:%M')}")
        print()

    while True:
        try:
            choice = input(f"👆 Select AD file to process [1-{len(csv_files)}]: ").strip()
            file_num = int(choice)
            if 1 <= file_num <= len(csv_files):
                return csv_files[file_num - 1]
            else:
                print(f"❌ Please enter a number between 1 and {len(csv_files)}")
        except ValueError:
            print("❌ Please enter a valid number")
        except KeyboardInterrupt:
            print("\n🚫 Operation cancelled")
            return None

def find_latest_ad_file():
    """Find the most recent Active Directory CSV file (for backward compatibility)"""
    csv_files = get_available_ad_files()
    if not csv_files:
        return None

    script_dir = os.path.dirname(os.path.abspath(__file__))
    input_dir = os.path.join(script_dir, "ActiveDirectory_input")

    # Get the most recently modified file
    latest_file = max(csv_files, key=lambda x: os.path.getmtime(os.path.join(input_dir, x)))
    return os.path.join(input_dir, latest_file)

def process_ad_file(ad_file_path):
    """Process a single AD file (for use by router)"""
    try:
        print(f"📂 Processing: {os.path.basename(ad_file_path)}")

        # Load the CSV file
        dtype_dict = {
            'mobile': 'str',
            'tele': 'str',
            'telephoneNumber': 'str',
            'phone1': 'str',
            'phone2': 'str'
        }
        df = pd.read_csv(ad_file_path, encoding='utf-8-sig', dtype=dtype_dict, keep_default_na=False)
        print(f"  ✅ Loaded {len(df)} records with {len(df.columns)} columns")

        # Detect format
        client_format = detect_client_format(df)
        print(f"🔍 Detected format: {client_format.upper()}")

        # Standardize based on format
        if client_format == 'northview':
            standardized_df = standardize_northview_format(df)
        elif client_format == 'gateway':
            print("⚠️  Gateway format detected - using Northview processing")
            standardized_df = standardize_northview_format(df)
        else:
            print(f"❌ Unsupported format: {client_format}")
            return False

        # Generate output filename in same input directory
        base_name = os.path.splitext(os.path.basename(ad_file_path))[0]
        safe_base_name = base_name.replace(' ', '_')
        output_file = os.path.join(os.path.dirname(ad_file_path), f"{safe_base_name}_SANITIZED.csv")

        # Save standardized file
        print("💾 Saving sanitized data...")
        standardized_df.to_csv(output_file, index=False)

        print("✅ SANITIZATION COMPLETE!")
        return True

    except Exception as e:
        print(f"❌ Error processing file: {e}")
        return False

def main():
    print("🧹 ENTERPRISE ACTIVE DIRECTORY SANITIZER")
    print("="*60)

    # Get all available AD files
    csv_files = get_available_ad_files()
    if not csv_files:
        print("❌ No Active Directory CSV files found in ActiveDirectory_input/")
        print("   Please place your AD export CSV in the ActiveDirectory_input/ directory")
        return

    # Select which file to process
    selected_file = select_ad_file(csv_files)
    if not selected_file:
        print("🚫 No file selected. Exiting...")
        return

    script_dir = os.path.dirname(os.path.abspath(__file__))
    input_dir = os.path.join(script_dir, "ActiveDirectory_input")
    ad_file = os.path.join(input_dir, selected_file)

    print(f"📂 Processing: {selected_file}")
    print("="*60)

    try:
        # Load the CSV file with phone columns as strings to prevent .0 suffix
        print("📊 Loading Active Directory data...")
        # Force phone/mobile columns to be read as strings
        dtype_dict = {
            'mobile': 'str',
            'tele': 'str',
            'telephoneNumber': 'str',
            'phone1': 'str',
            'phone2': 'str'
        }
        df = pd.read_csv(ad_file, encoding='utf-8-sig', dtype=dtype_dict, keep_default_na=False)
        print(f"  ✅ Loaded {len(df)} records with {len(df.columns)} columns")

        # Detect format
        client_format = detect_client_format(df)
        print(f"🔍 Detected format: {client_format.upper()}")

        # Show column sample for verification
        print(f"  📋 Columns found: {', '.join(list(df.columns)[:10])}{'...' if len(df.columns) > 10 else ''}")

        # Standardize based on format
        if client_format == 'northview':
            standardized_df = standardize_northview_format(df)
        elif client_format == 'gateway':
            print("⚠️  Gateway format detected - using Northview processing")
            standardized_df = standardize_northview_format(df)
        else:
            print(f"❌ Unsupported format: {client_format}")
            print("   Supported formats: Northview")
            print("   📝 Note: For Synovus/Cenovus files, use: python3 sanitize_synovus_ad.py")
            return

        # Generate output filename in same input directory
        base_name = os.path.splitext(os.path.basename(ad_file))[0]
        safe_base_name = base_name.replace(' ', '_')
        output_file = os.path.join(os.path.dirname(ad_file), f"{safe_base_name}_SANITIZED.csv")

        # Save standardized file
        print("💾 Saving sanitized data...")
        standardized_df.to_csv(output_file, index=False)

        print(f"✅ SANITIZATION COMPLETE!")
        print(f"  📂 Input: {os.path.basename(ad_file)}")
        print(f"  📄 Output: {os.path.basename(output_file)}")
        print(f"  📊 Records: {len(standardized_df)}")
        print(f"  📋 Schema: People table compatible with {len(standardized_df.columns)} columns")
        print("")
        print("🎯 The sanitized file is now ready for comprehensive analysis!")

        # Show sample of key fields
        print("\n📋 SAMPLE OF SANITIZED DATA:")
        sample_cols = ['userid', 'username', 'status', 'phone1', 'phone2', 'OU', 'isMgr', 'mgr', 'GL1']
        available_cols = [col for col in sample_cols if col in standardized_df.columns]
        if len(standardized_df) > 0:
            print(standardized_df[available_cols].head(3).to_string(index=False))

    except Exception as e:
        print(f"❌ Error processing file: {e}")
        return

if __name__ == "__main__":
    main()