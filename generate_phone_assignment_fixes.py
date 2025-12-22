#!/usr/bin/env python3
"""
SpikeFli Phone Assignment Fix SQL Generator

Generates SQL to fix phone assignment issues where:
- Phone numbers are assigned to expired users in Service Overview
- The same phones belong to active employees in Active Directory
- Requires INSERT of new AD users + UPDATE of ServiceDetails

This handles the "should_be_active" cases that require creating new People records.
"""

import os
import glob
import pandas as pd
from datetime import datetime

def escape_sql_string(value):
    """Escape single quotes in SQL strings"""
    if pd.isna(value) or value == '':
        return ''
    return str(value).replace("'", "''")

def get_customer_id():
    """Prompt user for the customer ID digits"""
    while True:
        customer_digits = input("🔢 Enter the last 3 digits of the customer ID (e.g., 096): ").strip()

        if len(customer_digits) == 3 and customer_digits.isdigit():
            customer_id = f"0000000{customer_digits}"
            print(f"  ✅ Using customer ID: {customer_id}")
            return customer_id
        else:
            print("❌ Please enter exactly 3 digits (e.g., 096, 057, 123)")

def find_latest_should_be_active_file(client_name=None):
    """Find the most recent should_be_active CSV file"""
    script_dir = os.path.dirname(os.path.abspath(__file__))
    output_dir = os.path.join(script_dir, "output")

    if not os.path.exists(output_dir):
        return None

    # Search in client folder if specified
    if client_name:
        client_output_dir = os.path.join(output_dir, client_name)
        if not os.path.exists(client_output_dir):
            return None
        search_dir = client_output_dir
    else:
        search_dir = output_dir

    # Find latest should_be_active file
    should_be_active_files = [f for f in os.listdir(search_dir) if f.startswith('should_be_active_') and f.endswith('.csv')]

    if not should_be_active_files:
        return None

    latest_file = max(should_be_active_files, key=lambda x: os.path.getmtime(os.path.join(search_dir, x)))
    return os.path.join(search_dir, latest_file)

def find_ad_sanitized_file(client_name):
    """Find the sanitized AD file for the client"""
    script_dir = os.path.dirname(os.path.abspath(__file__))
    ad_dir = os.path.join(script_dir, "ActiveDirectory_input", client_name)

    if not os.path.exists(ad_dir):
        return None

    ad_files = glob.glob(os.path.join(ad_dir, "*_SANITIZED.csv"))
    if not ad_files:
        return None

    return max(ad_files, key=os.path.getmtime)

def generate_phone_assignment_fix_sql(client_name=None):
    """Generate SQL to fix phone assignment issues"""

    print("🔧 GENERATING PHONE ASSIGNMENT FIX SQL...")

    # Get customer ID for database operations
    customer_id = get_customer_id()

    # Find latest should_be_active file in client folder
    should_be_active_file = find_latest_should_be_active_file(client_name)

    if not should_be_active_file:
        print("❌ No should_be_active file found!")
        print("   Please run the comprehensive analysis first to generate phone assignment data.")
        return False

    print(f"  📂 Using should_be_active file: {os.path.basename(should_be_active_file)}")

    # Find AD sanitized file for full user data
    ad_file = find_ad_sanitized_file(client_name) if client_name else None

    if not ad_file:
        print("❌ No sanitized AD file found!")
        print("   Please run AD sanitization first.")
        return False

    print(f"  📂 Using AD file: {os.path.basename(ad_file)}")

    # Load data
    try:
        should_be_active_df = pd.read_csv(should_be_active_file)
        ad_df = pd.read_csv(ad_file)
        print(f"  📊 Phone assignment issues to fix: {len(should_be_active_df)}")
        print(f"  📊 AD records available: {len(ad_df)}")

        if len(should_be_active_df) == 0:
            print("✅ No phone assignment issues found - all phones correctly assigned!")
            return True

    except Exception as e:
        print(f"❌ Error loading data files: {e}")
        return False

    # Generate output filename using client-organized structure
    script_dir = os.path.dirname(os.path.abspath(__file__))
    output_dir = os.path.join(script_dir, "output")

    if client_name:
        client_output_dir = os.path.join(output_dir, client_name)
        os.makedirs(client_output_dir, exist_ok=True)
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        output_path = os.path.join(client_output_dir, f"Phone_Assignment_Fixes_{timestamp}.sql")
    else:
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        output_path = os.path.join(output_dir, f"Phone_Assignment_Fixes_{timestamp}.sql")

    # Create AD lookup dictionary FIRST (needed for safety checks)
    ad_lookup = {}
    for _, ad_row in ad_df.iterrows():
        display_name = str(ad_row.get('DisplayName', '')).strip()
        if display_name:
            ad_lookup[display_name] = ad_row

    sql_statements = []

    # Header
    sql_statements.append("-- SpikeFli Phone Assignment Fixes")
    sql_statements.append(f"-- Generated: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
    sql_statements.append(f"-- Customer ID: {customer_id}")
    sql_statements.append(f"-- Client: {client_name}")
    sql_statements.append(f"-- Phone assignment issues to fix: {len(should_be_active_df)}")
    sql_statements.append("-- These phones are assigned to expired users but belong to active AD employees")
    sql_statements.append("-- Solution: INSERT new AD users (if needed) + UPDATE ServiceDetails")
    sql_statements.append("")
    sql_statements.append("-- CRITICAL: Review this SQL before execution!")
    sql_statements.append("-- This script will create new People records and reassign phone numbers")
    sql_statements.append("")
    sql_statements.append("BEGIN TRANSACTION;")
    sql_statements.append("")
    sql_statements.append("-- ================================================================================")
    sql_statements.append("-- PRE-EXECUTION INFORMATION")
    sql_statements.append("-- ================================================================================")
    sql_statements.append("")
    sql_statements.append("PRINT 'Starting phone assignment fixes...'")
    sql_statements.append("PRINT 'This script handles both new users (INSERT) and existing users (phone reassignment only)'")

    # Get current billing month
    now = datetime.now()
    if now.month == 1:
        prev_month_date = datetime(now.year - 1, 12, 1)
    else:
        prev_month_date = datetime(now.year, now.month - 1, 1)

    current_billing_month = prev_month_date.strftime('%Y%m')

# Generate conditional INSERT statements for new People records
    sql_statements.append("-- ================================================================================")
    sql_statements.append("-- STEP 1: INSERT NEW PEOPLE RECORDS (only if they don't exist)")
    sql_statements.append("-- ================================================================================")
    sql_statements.append("")

    insert_count = 0
    for _, row in should_be_active_df.iterrows():
        ad_user = str(row['ad_user']).strip()
        phone_number = str(row['phone_number']).strip()

        # Get full AD data for this user
        if ad_user not in ad_lookup:
            sql_statements.append(f"-- WARNING: {ad_user} not found in AD data!")
            continue

        ad_data = ad_lookup[ad_user]
        ad_user_escaped = escape_sql_string(ad_user)

        # Extract and escape all relevant fields
        userid = escape_sql_string(str(ad_data.get('cn', '')))
        username = escape_sql_string(str(ad_data.get('DisplayName', '')))
        email = escape_sql_string(str(ad_data.get('UserPrincipalName', '')))
        phone1 = str(ad_data.get('telephoneNumber', '')).strip()
        phone2 = str(ad_data.get('mobile', '')).strip()
        department = escape_sql_string(str(ad_data.get('Department', '')))
        manager = escape_sql_string(str(ad_data.get('Manager', '')))
        is_mgr = str(ad_data.get('IsManager', 0))
        is_exec = str(ad_data.get('IsExecutive', 0))
        mgmt_level = escape_sql_string(str(ad_data.get('ManagementLevel', '')))

        # Clean phone numbers (match ServiceDetails format - NO EXTRA ZEROS)
        phone1_clean = phone_number if phone1 else ''  # Use exact phone from should_be_active CSV

        # Fix mobile phone - handle floats and clean formatting
        mobile = ad_data.get('mobile', '')
        if mobile and str(mobile) != 'nan':
            phone2_clean = str(mobile).replace('.0', '').replace('-', '').replace('(', '').replace(')', '').replace(' ', '').strip()
        else:
            phone2_clean = ''

        sql_statements.append(f"-- Insert {username} ONLY if they don't already exist (for phone {phone_number})")
        sql_statements.append(f"IF NOT EXISTS (SELECT 1 FROM C_{customer_id}_People WHERE username = '{ad_user_escaped}')")
        sql_statements.append(f"BEGIN")
        sql_statements.append(f"    INSERT INTO C_{customer_id}_People (")
        sql_statements.append(f"        status, isPerson, lastdate, userid, username, email,")
        sql_statements.append(f"        phone1, phone2, OU, isMgr, isExec, mgrlevel, mgr,")
        sql_statements.append(f"        LinkType, TS, Modified")
        sql_statements.append(f"    ) VALUES (")
        sql_statements.append(f"        'Active',")
        sql_statements.append(f"        1,")
        sql_statements.append(f"        '{current_billing_month}',")
        sql_statements.append(f"        '{userid}',")
        sql_statements.append(f"        LEFT('{username}', 20),")
        sql_statements.append(f"        '{email}',")
        sql_statements.append(f"        '{phone1_clean}',")
        sql_statements.append(f"        '{phone2_clean}',")
        sql_statements.append(f"        '{department}',")
        sql_statements.append(f"        {is_mgr},")
        sql_statements.append(f"        {is_exec},")
        sql_statements.append(f"        '{mgmt_level}',")
        sql_statements.append(f"        '{manager}',")
        sql_statements.append(f"        'AD',")
        sql_statements.append(f"        GETDATE(),")
        sql_statements.append(f"        '{current_billing_month}'")
        sql_statements.append(f"    );")
        sql_statements.append(f"    PRINT 'Inserted new user: {username}';")
        sql_statements.append(f"END")
        sql_statements.append(f"ELSE")
        sql_statements.append(f"BEGIN")
        sql_statements.append(f"    PRINT 'User already exists: {username} - will update phone assignments only';")
        sql_statements.append(f"END;")
        sql_statements.append("")
        insert_count += 1

    # Generate PREVIEW section first
    sql_statements.append("-- ================================================================================")
    sql_statements.append("-- PREVIEW: WHAT WILL BE CHANGED")
    sql_statements.append("-- ================================================================================")
    sql_statements.append("")
    sql_statements.append("PRINT 'PREVIEW OF CHANGES:'")
    for _, row in should_be_active_df.iterrows():
        phone_number = str(row['phone_number']).strip()
        old_user = str(row['service_user']).strip()
        new_user = str(row['ad_user']).strip()
        sql_statements.append(f"PRINT 'Phone {phone_number}: {old_user} → {new_user} (Dec 2025 & Nov 2025 only)'")
    sql_statements.append("PRINT 'Only months 202512 and 202511 will be updated'")
    sql_statements.append("PRINT 'Historical billing data will be preserved'")
    sql_statements.append("")

    # Generate UPDATE statements for ServiceDetails
    sql_statements.append("-- ================================================================================")
    sql_statements.append("-- STEP 2: REASSIGN PHONE NUMBERS IN SERVICE DETAILS")
    sql_statements.append("-- ONLY UPDATES CURRENT MONTHS (Dec 2025 & Nov 2025)")
    sql_statements.append("-- ================================================================================")
    sql_statements.append("")

    update_count = 0
    for _, row in should_be_active_df.iterrows():
        phone_number = str(row['phone_number']).strip()
        old_user = escape_sql_string(str(row['service_user']))
        new_user = escape_sql_string(str(row['ad_user']))

        # Clean phone number for AssetID matching
        phone_clean = ''.join(filter(str.isdigit, phone_number))

        sql_statements.append(f"-- Reassign phone {phone_number}: {old_user} → {new_user} (Dec 2025 & Nov 2025 only)")
        sql_statements.append(f"UPDATE sd")
        sql_statements.append(f"SET sd.UserRef = p.id,")
        sql_statements.append(f"    sd.UserRef_Type = 'AD Fix',")
        sql_statements.append(f"    sd.Username = LEFT(p.username, 20)")
        sql_statements.append(f"FROM C_{customer_id}_ServiceDetails sd")
        sql_statements.append(f"INNER JOIN C_{customer_id}_People p ON p.username = '{new_user}'")
        sql_statements.append(f"WHERE sd.AssetID = '{phone_clean}'")
        sql_statements.append(f"  AND sd.DateRef IN ('202512', '202511');  -- Only Dec 2025 & Nov 2025")
        sql_statements.append(f"-- Note: Removed Username filter since ServiceDetails.Username is often empty")
        sql_statements.append("")
        update_count += 1

    # Verification queries
    sql_statements.append("-- ================================================================================")
    sql_statements.append("-- VERIFICATION QUERIES")
    sql_statements.append("-- ================================================================================")
    sql_statements.append("")
    sql_statements.append("-- Check newly inserted People records")
    sql_statements.append(f"SELECT COUNT(*) as new_people_inserted")
    sql_statements.append(f"FROM C_{customer_id}_People")
    sql_statements.append(f"WHERE LinkType = 'AD' AND Modified = '{current_billing_month}';")
    sql_statements.append("")
    sql_statements.append("-- Check reassigned phone numbers")
    sql_statements.append(f"SELECT COUNT(*) as phones_reassigned")
    sql_statements.append(f"FROM C_{customer_id}_ServiceDetails")
    sql_statements.append("WHERE UserRef_Type = 'AD Fix';")
    sql_statements.append("")
    sql_statements.append("-- Show the phone assignment fixes applied")
    sql_statements.append(f"SELECT sd.AssetID as Phone, sd.Username as NewUser, p.status as UserStatus")
    sql_statements.append(f"FROM C_{customer_id}_ServiceDetails sd")
    sql_statements.append(f"INNER JOIN C_{customer_id}_People p ON sd.UserRef = p.id")
    sql_statements.append("WHERE sd.UserRef_Type = 'AD Fix'")
    sql_statements.append("ORDER BY sd.AssetID;")
    sql_statements.append("")
    sql_statements.append("-- ================================================================================")
    sql_statements.append("-- SAFETY CONTROLS")
    sql_statements.append("-- ================================================================================")
    sql_statements.append("")
    sql_statements.append("-- Option 1: COMMIT CHANGES (uncomment when ready to execute)")
    sql_statements.append("-- COMMIT;")
    sql_statements.append("")
    sql_statements.append("-- Option 2: ROLLBACK CHANGES (if something goes wrong)")
    sql_statements.append("-- ROLLBACK;")
    sql_statements.append("")
    sql_statements.append("-- ⚠️  SAFETY REMINDER:")
    sql_statements.append("-- 1. Test this SQL on a backup/staging database first")
    sql_statements.append("-- 2. Keep this transaction window open until you verify results")
    sql_statements.append("-- 3. If anything looks wrong, run: ROLLBACK;")
    sql_statements.append("-- 4. Only run COMMIT; when you're 100% satisfied")
    sql_statements.append("")
    sql_statements.append("-- 📋 POST-EXECUTION CHECKLIST:")
    sql_statements.append("-- □ Verification queries show expected results")
    sql_statements.append("-- □ Run comprehensive analysis again to confirm fixes")
    sql_statements.append("-- □ Check that phone assignment issues are resolved")

    # Save SQL file
    try:
        with open(output_path, 'w') as f:
            f.write('\n'.join(sql_statements))

        print(f"  💾 Generated SQL file: {os.path.basename(output_path)}")
        print(f"  📊 New People records: {insert_count}")
        print(f"  📊 Phone reassignments: {update_count}")

        return output_path

    except Exception as e:
        print(f"❌ Error saving SQL file: {e}")
        return False

def select_client_for_fixes():
    """Let user select which client to generate fixes for"""
    script_dir = os.path.dirname(os.path.abspath(__file__))
    output_dir = os.path.join(script_dir, "output")

    # Find client folders that have analysis results
    available_clients = []
    if os.path.exists(output_dir):
        for item in os.listdir(output_dir):
            client_dir = os.path.join(output_dir, item)
            if os.path.isdir(client_dir) and not item.startswith('.'):
                # Check if this client has should_be_active files
                should_be_active_files = glob.glob(os.path.join(client_dir, "should_be_active_*.csv"))
                if should_be_active_files:
                    available_clients.append({'name': item, 'files': should_be_active_files})

    if not available_clients:
        print("❌ No client analysis results found!")
        print("Run comprehensive analysis first to generate phone assignment data.")
        return None

    print("\n📋 AVAILABLE CLIENTS WITH PHONE ASSIGNMENT ISSUES:")
    print("=" * 60)

    for i, client in enumerate(available_clients, 1):
        print(f"{i}. {client['name'].upper()}")
        print(f"   📊 Analysis Files: {len(client['files'])} should_be_active file(s)")
        print()

    while True:
        try:
            choice = int(input(f"Select client for phone assignment fixes [1-{len(available_clients)}]: ")) - 1
            if 0 <= choice < len(available_clients):
                selected = available_clients[choice]
                print(f"\n✅ Selected: {selected['name'].upper()}")
                return selected['name']
            else:
                print(f"❌ Please enter a number between 1 and {len(available_clients)}")
        except ValueError:
            print("❌ Please enter a valid number")
        except KeyboardInterrupt:
            print("\n🛑 Fix generation cancelled by user")
            return None

def generate_single_user_test_sql(client):
    """Generate SQL for testing with just one user"""
    # Get should_be_active file
    should_be_active_file = find_latest_should_be_active_file(client)
    if not should_be_active_file:
        print(f"❌ No should_be_active file found for {client}")
        return False

    # Load should_be_active data
    should_be_active_df = pd.read_csv(should_be_active_file)
    if should_be_active_df.empty:
        print(f"❌ No phone assignment issues found in {should_be_active_file}")
        return False

    print(f"\n📋 AVAILABLE USERS FOR TESTING:")
    for i, (_, row) in enumerate(should_be_active_df.iterrows(), 1):
        phone = row['phone_number']
        old_user = row['service_user']
        new_user = row['ad_user']
        print(f"{i}. Phone {phone}: {old_user} → {new_user}")

    # Let user select which one to test
    while True:
        try:
            choice = int(input(f"\nSelect user to test [1-{len(should_be_active_df)}]: "))
            if 1 <= choice <= len(should_be_active_df):
                break
            print(f"Please enter a number between 1 and {len(should_be_active_df)}")
        except ValueError:
            print("Please enter a valid number")

    # Get the selected row
    selected_row = should_be_active_df.iloc[choice - 1]
    phone_number = str(selected_row['phone_number']).strip()
    old_user = str(selected_row['service_user']).strip()
    new_user = str(selected_row['ad_user']).strip()

    print(f"\n✅ Selected: Phone {phone_number} - {old_user} → {new_user}")

    # Get customer ID
    customer_id = get_customer_id()

    # Generate single user SQL
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    output_dir = os.path.join(os.path.dirname(os.path.abspath(__file__)), "output", client)
    os.makedirs(output_dir, exist_ok=True)
    output_file = os.path.join(output_dir, f"SINGLE_USER_TEST_{phone_number}_{timestamp}.sql")

    # Create minimal SQL for just this user
    sql_content = f"""-- SINGLE USER TEST - {new_user}
-- Phone: {phone_number}
-- Customer ID: {customer_id}
-- Generated: {datetime.now().strftime("%Y-%m-%d %H:%M:%S")}

BEGIN TRANSACTION;

PRINT 'SINGLE USER TEST: {new_user}';
PRINT 'Phone: {phone_number}';

-- ================================================================================
-- INSERT {new_user.upper()} (if needed)
-- ================================================================================

IF NOT EXISTS (SELECT 1 FROM C_{customer_id}_People WHERE username = '{new_user}')
BEGIN
    PRINT '{new_user} does not exist - would need to insert from AD data';
    PRINT 'For this test, we assume user exists or will be created manually';
END
ELSE
BEGIN
    PRINT '{new_user} already exists - will update phone assignment only';
END;

-- ================================================================================
-- UPDATE SERVICE DETAILS (Dec 2025 & Nov 2025 only)
-- ================================================================================

PRINT 'Updating ServiceDetails for phone {phone_number}...';

UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_{customer_id}_ServiceDetails sd
INNER JOIN C_{customer_id}_People p ON p.username = '{new_user}'
WHERE sd.AssetID = '{phone_number}'
  AND sd.DateRef IN ('202512', '202511');

PRINT 'ServiceDetails update completed';

-- ================================================================================
-- VERIFICATION
-- ================================================================================

-- Check if user exists
SELECT COUNT(*) as user_exists
FROM C_{customer_id}_People
WHERE username = '{new_user}';

-- Check phone updates (correct filter)
SELECT COUNT(*) as phone_updates
FROM C_{customer_id}_ServiceDetails
WHERE AssetID = '{phone_number}' AND UserRef_Type = 'AD Fix';

-- Show the specific results
SELECT
    sd.AssetID as Phone,
    sd.Username as AssignedTo,
    sd.UserRef_Type as Type,
    sd.DateRef as Month,
    p.username as PeopleRecord
FROM C_{customer_id}_ServiceDetails sd
LEFT JOIN C_{customer_id}_People p ON sd.UserRef = p.id
WHERE sd.AssetID = '{phone_number}' AND sd.DateRef IN ('202512', '202511')
ORDER BY sd.DateRef DESC;

PRINT 'TEST COMPLETED - Review results above';
PRINT 'If good: COMMIT;';
PRINT 'If bad: ROLLBACK;';

-- COMMIT;
-- ROLLBACK;
"""

    # Write SQL file
    with open(output_file, 'w') as f:
        f.write(sql_content)

    print(f"\n💾 Generated single user test SQL: {os.path.basename(output_file)}")
    print(f"📁 Location: {output_file}")
    return True

def main():
    """Main execution function with menu options"""

    print("=" * 60)
    print("🔧 SPIKEFLI PHONE ASSIGNMENT FIX GENERATOR")
    print("=" * 60)

    print("\n📋 CHOOSE AN OPTION:")
    print("1. 🎯 Generate single user test SQL (RECOMMENDED)")
    print("2. 🚀 Generate full phone assignment fix SQL (all users)")
    print("3. ❌ Exit")

    while True:
        try:
            choice = int(input("\nEnter your choice [1-3]: "))
            if choice in [1, 2, 3]:
                break
            print("Please enter 1, 2, or 3")
        except ValueError:
            print("Please enter a valid number")

    if choice == 3:
        print("👋 Goodbye!")
        return

    # Select client for fixes
    client = select_client_for_fixes()
    if not client:
        return

    if choice == 1:
        # Single user test
        result = generate_single_user_test_sql(client)
        if result:
            print("\n✅ SINGLE USER TEST SQL GENERATED!")
            print("\n📋 EXECUTION ORDER:")
            print("1. Review the generated SQL file")
            print("2. Execute it against your SpikeFli database")
            print("3. Check the verification results")
            print("4. If successful, run the full script")
        else:
            print("\n❌ SINGLE USER TEST GENERATION FAILED!")

    elif choice == 2:
        # Full script
        result = generate_phone_assignment_fix_sql(client)
        if result:
            print("\n✅ PHONE ASSIGNMENT FIX SQL GENERATED!")
            print("\n📋 EXECUTION ORDER:")
            print("1. Review the generated SQL file carefully")
            print("2. Execute it against your SpikeFli database")
            print("3. Run analysis again to verify fixes")
            print("4. Check that phone assignment issues are resolved")

            print(f"\n💡 TIP: This SQL creates new People records and reassigns phones")
            print("     These fixes resolve cases where phones belong to active employees")
            print("     but are still assigned to expired users in the system")
        else:
            print("\n❌ PHONE ASSIGNMENT FIX GENERATION FAILED!")

if __name__ == "__main__":
    main()