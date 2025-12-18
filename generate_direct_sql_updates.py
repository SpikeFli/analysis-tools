#!/usr/bin/env python3
"""
Direct SQL Generator for SpikeFli Active Directory Updates

This script generates SQL UPDATE statements to fix the People table directly,
bypassing the broken legacy CSV parser completely.

Generates:
1. Status updates (Active/Expired) based on clean AD data
2. Phone number updates (phone1/phone2) from AD data
3. Other field updates as needed

No more fighting with OLE DB CSV parsing - just direct SQL fixes!
"""

import pandas as pd
import os
from datetime import datetime, timedelta

def escape_sql_string(value):
    """Escape single quotes in SQL strings to prevent syntax errors"""
    if not value or pd.isna(value):
        return ""
    # Convert to string and escape single quotes by doubling them
    return str(value).replace("'", "''")

def clean_phone_number(phone_value):
    """Clean phone number by removing .0 suffix if present"""
    if not phone_value or pd.isna(phone_value):
        return ""

    phone_str = str(phone_value).strip()

    # Remove .0 suffix if it exists (pandas float conversion artifact)
    if phone_str.endswith('.0'):
        phone_str = phone_str[:-2]

    # Return empty if not a valid phone number
    if phone_str in ['', 'nan', 'None']:
        return ""

    return phone_str

def convert_boolean_field(value):
    """Convert boolean field to 1/0 format for People table compatibility"""
    if pd.isna(value) or str(value).strip() == '' or str(value).strip().lower() == 'nan':
        return 0

    value_str = str(value).strip().upper()
    if value_str in ['Y', 'YES', '1', 'TRUE']:
        return 1

    return 0

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

def generate_sql_updates(ad_csv_path, output_sql_path=None, customer_id=None):
    """Generate SQL UPDATE statements from AD CSV data"""

    # Calculate previous month (since bills are always one month behind)
    now = datetime.now()
    # Go back one month
    if now.month == 1:
        prev_month_date = datetime(now.year - 1, 12, 1)
    else:
        prev_month_date = datetime(now.year, now.month - 1, 1)

    # Format as YYYYMM (e.g., 202511 for November 2025)
    current_billing_month = prev_month_date.strftime('%Y%m')
    print(f"  📅 Using billing month: {current_billing_month} (current month - 1)")

    # Only update records from this month forward
    date_filter = f"'{current_billing_month}'"

    print("🔧 GENERATING DIRECT SQL UPDATES...")

    # Get customer ID if not provided
    if customer_id is None:
        customer_id = get_customer_id()

    # Load the sanitized AD CSV
    try:
        df = pd.read_csv(ad_csv_path)
        print(f"  📂 Loaded {len(df)} AD records from: {os.path.basename(ad_csv_path)}")
        print(f"  🎯 Target tables: C_{customer_id}_People, C_{customer_id}_Assets, C_{customer_id}_ServiceDetails")
    except Exception as e:
        print(f"❌ Error loading AD CSV: {e}")
        return False

    if output_sql_path is None:
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        output_sql_path = f"AD_Direct_Updates_{timestamp}.sql"

    sql_statements = []

    # Header comment
    sql_statements.append("-- SpikeFli Direct Active Directory Updates")
    sql_statements.append(f"-- Generated: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
    sql_statements.append(f"-- Source: {os.path.basename(ad_csv_path)}")
    sql_statements.append("-- This bypasses the broken legacy CSV parser")
    sql_statements.append("")
    sql_statements.append("-- Begin transaction for safety")
    sql_statements.append("BEGIN TRANSACTION;")
    sql_statements.append("")

    update_count = 0
    phone_count = 0

    # Process each AD record
    for index, row in df.iterrows():
        cn = str(row.get('cn', '')).strip()
        display_name = str(row.get('DisplayName', '')).strip()
        enabled = str(row.get('Enabled', '1')).strip()
        phone1 = clean_phone_number(row.get('telephoneNumber', ''))
        phone2 = clean_phone_number(row.get('mobile', ''))
        email = str(row.get('UserPrincipalName', '')).strip()

        # Get organizational fields if available (convert to 1/0 format)
        is_manager = convert_boolean_field(row.get('IsManager', ''))
        is_executive = convert_boolean_field(row.get('IsExecutive', ''))
        mgmt_level = str(row.get('ManagementLevel', '')).strip()

        if not cn or cn == 'nan':
            continue

        # Escape all string values for SQL safety
        cn_escaped = escape_sql_string(cn)
        display_name_escaped = escape_sql_string(display_name)
        phone1_escaped = escape_sql_string(phone1)
        phone2_escaped = escape_sql_string(phone2)
        mgmt_level_escaped = escape_sql_string(mgmt_level)

        # Determine status - default to Active since the legacy parser is broken
        status = "Active"
        if enabled == "0":
            status = "Expired"

        # Generate status update
        sql_statements.append(f"-- Update {cn_escaped} ({display_name_escaped})")
        sql_statements.append(f"UPDATE C_{customer_id}_People")

        # Build SET clause parts
        set_parts = [f"status = '{status}'"]

        # Add phone updates if we have phone numbers
        if phone1 and phone1 != 'nan':
            set_parts.append(f"phone1 = '{phone1_escaped}'")
            phone_count += 1
        if phone2 and phone2 != 'nan':
            set_parts.append(f"phone2 = '{phone2_escaped}'")
            phone_count += 1

        # Add organizational field updates (use 1/0 format matching People Table)
        set_parts.append(f"isMgr = {is_manager}")
        set_parts.append(f"isExec = {is_executive}")
        if mgmt_level and mgmt_level != 'nan' and mgmt_level != '':
            set_parts.append(f"mgrlevel = '{mgmt_level_escaped}'")

        # Join all SET parts
        sql_statements.append("SET " + ",\n    ".join(set_parts))
        sql_statements.append(f"WHERE userid = '{cn_escaped}';")
        sql_statements.append("")

        update_count += 1

        # Batch updates for performance (every 100 records)
        if update_count % 100 == 0:
            sql_statements.append("-- Commit batch")
            sql_statements.append("COMMIT;")
            sql_statements.append("BEGIN TRANSACTION;")
            sql_statements.append("")

    # Add insert statements for users not in People table
    sql_statements.append("-- Insert new users not found in People table")
    sql_statements.append("")

    for index, row in df.iterrows():
        cn = str(row.get('cn', '')).strip()
        display_name = str(row.get('DisplayName', '')).strip()
        enabled = str(row.get('Enabled', '1')).strip()
        phone1 = clean_phone_number(row.get('telephoneNumber', ''))
        phone2 = clean_phone_number(row.get('mobile', ''))
        email = str(row.get('UserPrincipalName', '')).strip()
        department = str(row.get('Department', '')).strip()

        if not cn or cn == 'nan':
            continue

        # Escape all string values for SQL safety
        cn_escaped = escape_sql_string(cn)
        display_name_escaped = escape_sql_string(display_name)
        phone1_escaped = escape_sql_string(phone1)
        phone2_escaped = escape_sql_string(phone2)
        email_escaped = escape_sql_string(email)
        department_escaped = escape_sql_string(department)

        status = "Active" if enabled != "0" else "Expired"

        # Insert if not exists
        sql_statements.append(f"IF NOT EXISTS (SELECT 1 FROM C_{customer_id}_People WHERE userid = '{cn_escaped}')")
        sql_statements.append("BEGIN")
        sql_statements.append(f"    INSERT INTO C_{customer_id}_People (")
        sql_statements.append(f"        status, isPerson, userid, username, email, phone1, phone2,")
        sql_statements.append(f"        OU, LinkType, Modified")
        sql_statements.append(f"    ) VALUES (")
        sql_statements.append(f"        '{status}', 1, '{cn_escaped}', '{display_name_escaped}',")

        # Handle email encryption (simplified for now)
        if email and email != 'nan':
            sql_statements.append(f"        '{email_escaped}',")  # Note: Should be encrypted in real system
        else:
            sql_statements.append(f"        '',")

        sql_statements.append(f"        '{phone1_escaped}', '{phone2_escaped}',")
        sql_statements.append(f"        '{department_escaped}', 'AD', GETDATE()")
        sql_statements.append(f"    );")
        sql_statements.append("END;")
        sql_statements.append("")

    # Add Assets table updates (based on Gateway parser logic)
    sql_statements.append("-- ================================================================================")
    sql_statements.append("-- ASSETS TABLE UPDATES - Link assets to AD users")
    sql_statements.append("-- ================================================================================")
    sql_statements.append("")
    sql_statements.append("-- Update Assets CorpRef to link to People based on name matching")
    sql_statements.append(f"UPDATE C_{customer_id}_Assets")
    sql_statements.append("SET CorpRef = P.ID,")
    sql_statements.append("    CorpMgr = P.MgrID,")
    sql_statements.append("    CorpTree = P.MgrTree,")
    sql_statements.append("    CorpRef_Type = 'AD: Name'")
    sql_statements.append(f"FROM C_{customer_id}_Assets a")
    sql_statements.append("INNER JOIN (")
    sql_statements.append("    SELECT ID, MgrID, MgrTree,")
    sql_statements.append("           SUBSTRING(username, 1, CHARINDEX(' ', username) - 1) AS firstname,")
    sql_statements.append("           SUBSTRING(username, CHARINDEX(' ', username) + 1, LEN(username)) AS lastname")
    sql_statements.append(f"    FROM C_{customer_id}_People")
    sql_statements.append("    WHERE LEN(COALESCE(username,'')) > 7 AND username LIKE '% %'")
    sql_statements.append(") AS P ON a.Username LIKE '%' + P.firstname + '%'")
    sql_statements.append("        AND a.Username LIKE '%' + P.lastname + '%'")
    sql_statements.append("        AND COALESCE(a.CorpRef,'') = ''")
    sql_statements.append("        AND COALESCE(a.username,'') <> '';")
    sql_statements.append("")

    # Add ServiceDetails table updates
    sql_statements.append("-- ================================================================================")
    sql_statements.append("-- SERVICEDETAILS TABLE UPDATES - Align service ownership to AD-linked assets")
    sql_statements.append("-- ================================================================================")
    sql_statements.append("")
    sql_statements.append("-- Step 1: Update ServiceDetails UserRef from linked Assets")
    sql_statements.append("UPDATE sd")
    sql_statements.append("SET sd.UserRef = a.CorpRef,")
    sql_statements.append("    sd.UserRef_Type = a.CorpRef_type,")
    sql_statements.append("    sd.Username = COALESCE(p.username, a.username, sd.username)")
    sql_statements.append(f"FROM C_{customer_id}_ServiceDetails sd")
    sql_statements.append(f"LEFT JOIN C_{customer_id}_Assets a")
    sql_statements.append("    ON sd.AssetID = a.AssetID")
    sql_statements.append("    AND (sd.VendorID = a.VendorID OR a.VendorID IS NULL OR sd.VendorID IS NULL)")
    sql_statements.append(f"LEFT JOIN C_{customer_id}_People p ON a.CorpRef = p.id")
    sql_statements.append(f"WHERE sd.DateRef >= {date_filter};")  # Previous month (billing is always 1 month behind)
    sql_statements.append("")

    sql_statements.append("-- Step 2: Direct phone-based ServiceDetails updates")
    sql_statements.append("WITH p_all AS (")
    sql_statements.append("    SELECT id AS person_id, username,")
    sql_statements.append("           REPLACE(REPLACE(REPLACE(phone1,'-',''),'(',''),')','') AS phone_clean")
    sql_statements.append(f"    FROM C_{customer_id}_People")
    sql_statements.append("    WHERE NULLIF(LTRIM(RTRIM(phone1)),'') IS NOT NULL")
    sql_statements.append("    UNION ALL")
    sql_statements.append("    SELECT id, username,")
    sql_statements.append("           REPLACE(REPLACE(REPLACE(phone2,'-',''),'(',''),')','') AS phone_clean")
    sql_statements.append(f"    FROM C_{customer_id}_People")
    sql_statements.append("    WHERE NULLIF(LTRIM(RTRIM(phone2)),'') IS NOT NULL")
    sql_statements.append(")")
    sql_statements.append("UPDATE sd")
    sql_statements.append("SET sd.UserRef = p_all.person_id,")
    sql_statements.append("    sd.UserRef_Type = 'AD: Phone',")
    sql_statements.append("    sd.Username = p_all.username")
    sql_statements.append(f"FROM C_{customer_id}_ServiceDetails sd")
    sql_statements.append("INNER JOIN p_all ON REPLACE(REPLACE(REPLACE(sd.AssetID,'-',''),'(',''),')','') = p_all.phone_clean")
    sql_statements.append(f"WHERE sd.DateRef >= {date_filter}")
    sql_statements.append("  AND COALESCE(sd.UserRef, 0) = 0;")
    sql_statements.append("")



    # Final commit and summary
    sql_statements.append("-- ================================================================================")
    sql_statements.append("-- FINAL COMMIT AND VERIFICATION")
    sql_statements.append("-- ================================================================================")
    sql_statements.append("COMMIT;")
    sql_statements.append("")
    sql_statements.append(f"-- Summary: Updated {update_count} users, {phone_count} phone numbers")
    sql_statements.append("-- Processed People, Assets, and ServiceDetails tables")
    sql_statements.append("-- All users defaulted to Active status due to legacy parser issues")
    sql_statements.append("")
    sql_statements.append("-- Verification queries:")
    sql_statements.append(f"SELECT 'People Status' AS table_name, status, COUNT(*) as count FROM C_{customer_id}_People GROUP BY status")
    sql_statements.append("UNION ALL")
    sql_statements.append("SELECT 'Assets Linked' AS table_name, ")
    sql_statements.append("       CASE WHEN CorpRef IS NOT NULL THEN 'Linked' ELSE 'Unlinked' END,")
    sql_statements.append(f"       COUNT(*) FROM C_{customer_id}_Assets GROUP BY CASE WHEN CorpRef IS NOT NULL THEN 'Linked' ELSE 'Unlinked' END")
    sql_statements.append("UNION ALL")
    sql_statements.append("SELECT 'ServiceDetails Linked' AS table_name,")
    sql_statements.append("       CASE WHEN UserRef IS NOT NULL AND UserRef > 0 THEN 'Linked' ELSE 'Unlinked' END,")
    sql_statements.append(f"       COUNT(*) FROM C_{customer_id}_ServiceDetails WHERE DateRef >= {date_filter}")
    sql_statements.append("GROUP BY CASE WHEN UserRef IS NOT NULL AND UserRef > 0 THEN 'Linked' ELSE 'Unlinked' END")
    sql_statements.append("ORDER BY table_name, status;")
    sql_statements.append("")
    sql_statements.append("-- Phone matching verification:")
    sql_statements.append(f"SELECT COUNT(*) as users_with_phone1 FROM C_{customer_id}_People WHERE phone1 IS NOT NULL AND phone1 <> '';")
    sql_statements.append(f"SELECT COUNT(*) as users_with_phone2 FROM C_{customer_id}_People WHERE phone2 IS NOT NULL AND phone2 <> '';")
    sql_statements.append(f"SELECT COUNT(*) as phone_matched_services FROM C_{customer_id}_ServiceDetails sd")
    sql_statements.append(f"WHERE sd.UserRef_Type IN ('AD: Phone', 'AD: Name') AND sd.DateRef >= {date_filter};")

    # Write SQL file
    try:
        with open(output_sql_path, 'w', encoding='utf-8') as f:
            f.write('\n'.join(sql_statements))

        print(f"  💾 Generated SQL file: {output_sql_path}")
        print(f"  📊 Updates: {update_count} users, {phone_count} phone numbers")
        print(f"  🎯 All users set to Active (bypassing broken parser logic)")

        return output_sql_path

    except Exception as e:
        print(f"❌ Error writing SQL file: {e}")
        return False

def find_latest_file(directory, pattern):
    """Find the latest file matching pattern in directory"""
    if not os.path.exists(directory):
        return None

    import glob
    files = glob.glob(os.path.join(directory, pattern))
    if files:
        return max(files, key=os.path.getmtime)
    return None

def select_client_for_sql():
    """Let user select which client to generate SQL for"""
    script_dir = os.path.dirname(os.path.abspath(__file__))
    ad_dir = os.path.join(script_dir, "ActiveDirectory_input")

    clients = ['Northview', 'Synovus', 'Gateway', 'Other']
    available_clients = []

    for client in clients:
        ad_client_dir = os.path.join(ad_dir, client)
        if os.path.exists(ad_client_dir):
            ad_path = find_latest_file(ad_client_dir, "*_SANITIZED.csv")
            if ad_path:
                available_clients.append({'name': client, 'ad_file': ad_path})

    if not available_clients:
        print("❌ No clients with sanitized AD data found!")
        print("Run the sanitize AD router first to create sanitized CSV files.")
        return None, None

    print("\n📋 AVAILABLE CLIENTS FOR SQL GENERATION:")
    print("=" * 60)

    for i, client in enumerate(available_clients, 1):
        print(f"{i}. {client['name'].upper()}")
        print(f"   📂 AD File: ✅ {os.path.basename(client['ad_file'])}")
        print()

    while True:
        try:
            choice = int(input(f"Select client for SQL generation [1-{len(available_clients)}]: ")) - 1
            if 0 <= choice < len(available_clients):
                selected = available_clients[choice]
                print(f"\n✅ Selected: {selected['name'].upper()}")
                print(f"📁 Using sanitized AD file: {os.path.basename(selected['ad_file'])}")
                return selected['ad_file'], selected['name']
            else:
                print(f"❌ Please enter a number between 1 and {len(available_clients)}")
        except ValueError:
            print("❌ Please enter a valid number")
        except KeyboardInterrupt:
            print("\n🛑 SQL generation cancelled by user")
            return None, None

def main():
    """Main execution function"""

    # Let user select which client to generate SQL for
    input_file, client = select_client_for_sql()

    if not input_file:
        return

    # Generate SQL in the output directory
    script_dir = os.path.dirname(os.path.abspath(__file__))
    output_dir = os.path.join(script_dir, "output")
    os.makedirs(output_dir, exist_ok=True)

    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    output_file = os.path.join(output_dir, f"AD_Direct_Updates_{timestamp}.sql")

    result = generate_sql_updates(input_file, output_file)

    if result:
        print("\n✅ SQL GENERATION COMPLETE!")
        print(f"📄 Execute this SQL file: {os.path.basename(result)}")
        print("\n💡 USAGE:")
        print("1. Review the generated SQL file")
        print("2. Execute it against your SpikeFli database")
        print("3. Bypass the broken legacy parser completely!")
        print("4. Run your analysis tool to verify the results")
    else:
        print("\n❌ SQL GENERATION FAILED!")

if __name__ == "__main__":
    main()