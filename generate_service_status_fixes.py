#!/usr/bin/env python3
"""
SpikeFli Service Status Fix Generator

Generates SQL to fix service status mismatches based on analysis results.
Addresses two core issues:
1. Services marked ACTIVE but phone not in AD (should be EXPIRED)
2. Services marked EXPIRED but AD user is ENABLED (should be ACTIVE)
"""

import os
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

def find_latest_analysis_files():
    """Find the most recent analysis result files"""
    script_dir = os.path.dirname(os.path.abspath(__file__))
    output_dir = os.path.join(script_dir, "output")

    if not os.path.exists(output_dir):
        return None, None

    # Find latest files
    expired_files = [f for f in os.listdir(output_dir) if f.startswith('should_be_expired_') and f.endswith('.csv')]
    active_files = [f for f in os.listdir(output_dir) if f.startswith('should_be_active_') and f.endswith('.csv')]

    if not expired_files or not active_files:
        return None, None

    latest_expired = max(expired_files, key=lambda x: os.path.getmtime(os.path.join(output_dir, x)))
    latest_active = max(active_files, key=lambda x: os.path.getmtime(os.path.join(output_dir, x)))

    return os.path.join(output_dir, latest_expired), os.path.join(output_dir, latest_active)

def generate_service_status_fixes(customer_id=None):
    """Generate SQL to fix service status mismatches"""

    print("🔧 GENERATING SERVICE STATUS FIX SQL...")

    # Get customer ID if not provided
    if customer_id is None:
        customer_id = get_customer_id()

    # Find analysis files
    expired_file, active_file = find_latest_analysis_files()

    if not expired_file or not active_file:
        print("❌ No analysis results found!")
        print("   Please run the comprehensive analysis first.")
        return False

    print(f"  📂 Using expired services: {os.path.basename(expired_file)}")
    print(f"  📂 Using active services: {os.path.basename(active_file)}")

    # Load data
    try:
        expired_df = pd.read_csv(expired_file)
        active_df = pd.read_csv(active_file)
        print(f"  📊 Services to expire: {len(expired_df)}")
        print(f"  📊 Services to activate: {len(active_df)}")
    except Exception as e:
        print(f"❌ Error loading analysis files: {e}")
        return False

    # Generate output filename
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    output_path = os.path.join("output", f"Service_Status_Fixes_{timestamp}.sql")

    sql_statements = []

    # Header
    sql_statements.append("-- SpikeFli Service Status Fixes")
    sql_statements.append(f"-- Generated: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
    sql_statements.append(f"-- Customer ID: {customer_id}")
    sql_statements.append(f"-- Services to expire: {len(expired_df)}")
    sql_statements.append(f"-- Services to activate: {len(active_df)}")
    sql_statements.append("")
    sql_statements.append("BEGIN TRANSACTION;")
    sql_statements.append("")

    # Fix services that should be expired
    sql_statements.append("-- ================================================================================")
    sql_statements.append(f"-- EXPIRE {len(expired_df)} SERVICES - Mark as EXPIRED")
    sql_statements.append("-- These services show ACTIVE but phone numbers are not found in Active Directory")
    sql_statements.append("-- ================================================================================")
    sql_statements.append("")

    expire_count = 0
    for _, row in expired_df.iterrows():
        phone = str(row['phone_number'])
        service_user = escape_sql_string(row['service_user'])

        sql_statements.append(f"-- Expire service: {phone} (User: {service_user})")
        sql_statements.append(f"UPDATE C_{customer_id}_ServiceDetails")
        sql_statements.append("SET UserRef = NULL,")
        sql_statements.append("    UserRef_Type = NULL,")
        sql_statements.append("    Username = 'EXPIRED - Not in AD',")
        sql_statements.append("    Modified = GETDATE()")
        sql_statements.append(f"WHERE AssetID = '{phone}';")
        sql_statements.append("")
        expire_count += 1

    sql_statements.append("-- ================================================================================")
    sql_statements.append(f"-- ACTIVATE {len(active_df)} SERVICES - Mark as ACTIVE with correct user")
    sql_statements.append("-- These services show EXPIRED but AD shows users as ENABLED (phone reassignments)")
    sql_statements.append("-- ================================================================================")
    sql_statements.append("")

    activate_count = 0
    for _, row in active_df.iterrows():
        phone = str(row['phone_number'])
        service_user = escape_sql_string(row['service_user'])
        ad_user = escape_sql_string(row['ad_user'])

        sql_statements.append(f"-- Activate service: {phone}")
        sql_statements.append(f"-- Old user: {service_user} → New user: {ad_user}")
        sql_statements.append(f"UPDATE sd")
        sql_statements.append(f"SET sd.UserRef = p.ID,")
        sql_statements.append(f"    sd.UserRef_Type = 'AD: Phone Reassignment',")
        sql_statements.append(f"    sd.Username = p.username,")
        sql_statements.append(f"    sd.Modified = GETDATE()")
        sql_statements.append(f"FROM C_{customer_id}_ServiceDetails sd")
        sql_statements.append(f"INNER JOIN C_{customer_id}_People p ON p.username = '{ad_user}'")
        sql_statements.append(f"WHERE sd.AssetID = '{phone}';")
        sql_statements.append("")
        activate_count += 1

    # Summary and commit
    sql_statements.append("-- ================================================================================")
    sql_statements.append("-- VERIFICATION QUERIES")
    sql_statements.append("-- ================================================================================")
    sql_statements.append("")
    sql_statements.append("-- Check expired services")
    sql_statements.append(f"SELECT COUNT(*) as expired_services")
    sql_statements.append(f"FROM C_{customer_id}_ServiceDetails")
    sql_statements.append("WHERE Username = 'EXPIRED - Not in AD';")
    sql_statements.append("")
    sql_statements.append("-- Check reassigned services")
    sql_statements.append(f"SELECT COUNT(*) as reassigned_services")
    sql_statements.append(f"FROM C_{customer_id}_ServiceDetails")
    sql_statements.append("WHERE UserRef_Type = 'AD: Phone Reassignment';")
    sql_statements.append("")
    sql_statements.append("COMMIT;")
    sql_statements.append("")
    sql_statements.append(f"-- Summary: Expired {expire_count} services, Activated {activate_count} services")
    sql_statements.append("-- Service status alignment complete!")

    # Write SQL file
    try:
        os.makedirs("output", exist_ok=True)
        with open(output_path, 'w', encoding='utf-8') as f:
            f.write('\n'.join(sql_statements))

        print(f"  💾 Generated SQL file: {os.path.basename(output_path)}")
        print(f"  📊 Total fixes: {expire_count + activate_count}")
        print(f"    - Services to expire: {expire_count}")
        print(f"    - Services to activate: {activate_count}")

        return output_path
    except Exception as e:
        print(f"❌ Error saving SQL file: {e}")
        return False

def main():
    """Main execution function"""

    print("=" * 60)
    print("🔧 SPIKEFLI SERVICE STATUS FIX GENERATOR")
    print("=" * 60)

    result = generate_service_status_fixes()

    if result:
        print("\n✅ SERVICE STATUS FIX SQL GENERATED!")
        print("\n📋 EXECUTION ORDER:")
        print("1. Execute backup SQL in SSMS first")
        print("2. Execute AD updates SQL")
        print("3. Execute this service status fix SQL")
        print("4. Run analysis again to verify results")

        print(f"\n💡 TIP: This SQL fixes the remaining {117 + 33} service status mismatches")
        print("     After running this, your phone cross-references should be near-perfect!")

    else:
        print("\n❌ SERVICE STATUS FIX GENERATION FAILED!")

if __name__ == "__main__":
    main()