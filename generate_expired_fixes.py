#!/usr/bin/env python3
"""
SpikeFli Expired Service Fix Generator
Generates SQL to mark services as EXPIRED when they're not found in AD
"""

import pandas as pd
import os
from datetime import datetime
import glob

def escape_sql_string(value):
    """Escape single quotes in SQL strings"""
    if pd.isna(value):
        return "NULL"
    return str(value).replace("'", "''")

def get_latest_should_be_expired_file():
    """Find the most recent should_be_expired CSV file"""
    pattern = "output/should_be_expired_*.csv"
    files = glob.glob(pattern)

    if not files:
        print("❌ No should_be_expired CSV files found!")
        print("   Please run analysis first to generate should_be_expired data.")
        return None

    # Sort by modification time, get most recent
    latest_file = max(files, key=os.path.getmtime)
    return latest_file

def main():
    print("=" * 60)
    print("🔧 SPIKEFLI EXPIRED SERVICE FIX GENERATOR")
    print("=" * 60)

    # Get customer ID
    while True:
        try:
            customer_suffix = input("🔢 Enter the last 3 digits of the customer ID (e.g., 096): ").strip()
            if len(customer_suffix) != 3 or not customer_suffix.isdigit():
                print("❌ Please enter exactly 3 digits")
                continue
            break
        except KeyboardInterrupt:
            print("\n👋 Goodbye!")
            return

    customer_id = f"0000000{customer_suffix}"

    print("🔧 GENERATING EXPIRED SERVICE FIX SQL...")
    print(f"  ✅ Using customer ID: {customer_id}")

    # Find latest should_be_expired file
    expired_file = get_latest_should_be_expired_file()
    if not expired_file:
        return

    print(f"  📂 Using expired file: {os.path.basename(expired_file)}")

    # Load the data
    try:
        expired_df = pd.read_csv(expired_file)
    except Exception as e:
        print(f"❌ Error loading {expired_file}: {e}")
        return

    # Filter out "Account Name:" entries
    original_count = len(expired_df)
    expired_df = expired_df[~expired_df['service_user'].str.contains('Account Name:', na=False)]
    filtered_count = len(expired_df)

    print(f"  📊 Total expired services: {original_count}")
    print(f"  📊 After filtering out 'Account Name:': {filtered_count}")

    if filtered_count == 0:
        print("  ✅ No services to mark as expired!")
        return

    # Generate SQL
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    output_file = f"output/Expired_Service_Fixes_{timestamp}.sql"

    sql_statements = []

    # Header
    sql_statements.append("-- SpikeFli Expired Service Fixes")
    sql_statements.append(f"-- Generated: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
    sql_statements.append(f"-- Customer ID: {customer_id}")
    sql_statements.append(f"-- Services to mark as expired: {filtered_count}")
    sql_statements.append("-- These services are NOT FOUND in Active Directory")
    sql_statements.append("")
    sql_statements.append("BEGIN TRANSACTION;")
    sql_statements.append("")

    # Generate UPDATE statements
    sql_statements.append("-- " + "=" * 80)
    sql_statements.append(f"-- MARK {filtered_count} SERVICES AS EXPIRED")
    sql_statements.append("-- Services not found in Active Directory")
    sql_statements.append("-- " + "=" * 80)
    sql_statements.append("")

    fix_count = 0
    for _, row in expired_df.iterrows():
        phone = str(row['phone_number'])
        service_user = escape_sql_string(row['service_user'])

        # Format phone number with dashes (XXX-XXX-XXXX format for database)
        if len(phone) == 10 and phone.isdigit():
            formatted_phone = f"{phone[:3]}-{phone[3:6]}-{phone[6:]}"
        else:
            formatted_phone = phone  # Use as-is if not standard 10-digit format

        # Remove dashes for People table phone matching (phone1/phone2 are plain numbers)
        clean_phone = phone.replace('-', '').replace('(', '').replace(')', '').replace(' ', '')

        sql_statements.append(f"-- Mark as expired: {phone} ({service_user})")
        sql_statements.append(f"UPDATE C_{customer_id}_People")
        sql_statements.append(f"SET status = 'Expired',")
        sql_statements.append(f"    Modified = GETDATE()")
        sql_statements.append(f"WHERE phone1 = '{clean_phone}' OR phone2 = '{clean_phone}';")
        sql_statements.append("")
        fix_count += 1

    # Verification queries
    sql_statements.append("-- " + "=" * 80)
    sql_statements.append("-- VERIFICATION QUERIES")
    sql_statements.append("-- " + "=" * 80)
    sql_statements.append("")
    sql_statements.append("-- Check how many people were marked as expired")
    sql_statements.append(f"SELECT COUNT(*) as people_marked_expired")
    sql_statements.append(f"FROM C_{customer_id}_People")
    sql_statements.append("WHERE status = 'Expired' AND Modified = CAST(GETDATE() AS DATE);")
    sql_statements.append("")
    sql_statements.append("-- Show the expired people")
    sql_statements.append(f"SELECT id, username, phone1, phone2, status, Modified")
    sql_statements.append(f"FROM C_{customer_id}_People")
    sql_statements.append("WHERE status = 'Expired' AND Modified = CAST(GETDATE() AS DATE)")
    sql_statements.append("ORDER BY username;")
    sql_statements.append("")
    sql_statements.append("COMMIT;")
    sql_statements.append("")
    sql_statements.append(f"-- Summary: Marked {fix_count} people as expired")
    sql_statements.append("-- These users were not found in Active Directory!")

    # Write SQL file
    try:
        with open(output_file, 'w', encoding='utf-8') as f:
            f.write('\n'.join(sql_statements))

        print(f"  💾 Generated SQL file: {os.path.basename(output_file)}")
        print(f"  📊 Total fixes: {fix_count}")
        print("")
        print("✅ EXPIRED SERVICE FIX SQL GENERATED!")
        print("")
        print("📋 EXECUTION ORDER:")
        print("1. Execute this SQL in SSMS")
        print("2. Run analysis again to verify fixes")
        print("3. Check that expired services are properly marked")
        print("")
        print("💡 TIP: This SQL marks people as expired when they're not found in AD")
        print("     Service accounts with 'Account Name:' were excluded as requested")
        print("     Updates People table (phone1/phone2 matching) not ServiceDetails")

    except Exception as e:
        print(f"❌ Error writing SQL file: {e}")

if __name__ == "__main__":
    main()