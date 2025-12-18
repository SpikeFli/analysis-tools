#!/usr/bin/env python3
"""
SpikeFli Worst Case Mismatch SQL Generator

Generates SQL to fix the worst case mismatches - where both user and status are wrong.
These are the most critical phone reassignments that need immediate attention.
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

def find_latest_worst_case_file(client_name=None):
    """Find the most recent worst case mismatches CSV file"""
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

    # Find latest worst case file
    worst_case_files = [f for f in os.listdir(search_dir) if f.startswith('worst_case_mismatches_') and f.endswith('.csv')]

    if not worst_case_files:
        return None

    latest_file = max(worst_case_files, key=lambda x: os.path.getmtime(os.path.join(search_dir, x)))
    return os.path.join(search_dir, latest_file)

def generate_worst_case_fix_sql(client_name=None):
    """Generate SQL to fix worst case mismatches"""

    print("🔧 GENERATING WORST CASE MISMATCH FIX SQL...")

    # Get customer ID for database operations
    customer_id = get_customer_id()

    # Find latest worst case file in client folder
    worst_case_file = find_latest_worst_case_file(client_name)

    if not worst_case_file:
        print("❌ No worst case mismatches file found!")
        print("   Please run the comprehensive analysis first to generate worst case data.")
        return False

    print(f"  📂 Using worst case file: {os.path.basename(worst_case_file)}")

    # Load data
    try:
        worst_cases_df = pd.read_csv(worst_case_file)
        print(f"  📊 Worst case mismatches to fix: {len(worst_cases_df)}")
    except Exception as e:
        print(f"❌ Error loading worst case file: {e}")
        return False

    if len(worst_cases_df) == 0:
        print("✅ No worst case mismatches found - everything is working well!")
        return True

    # Generate output filename using client-organized structure
    script_dir = os.path.dirname(os.path.abspath(__file__))
    output_dir = os.path.join(script_dir, "output")

    if client_name:
        client_output_dir = os.path.join(output_dir, client_name)
        os.makedirs(client_output_dir, exist_ok=True)
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        output_path = os.path.join(client_output_dir, f"Worst_Case_Fixes_{timestamp}.sql")
    else:
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        output_path = os.path.join(output_dir, f"Worst_Case_Fixes_{timestamp}.sql")

    sql_statements = []

    # Header
    sql_statements.append("-- SpikeFli Worst Case Mismatch Fixes")
    sql_statements.append(f"-- Generated: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
    sql_statements.append(f"-- Customer ID: {customer_id}")
    sql_statements.append(f"-- Worst case mismatches to fix: {len(worst_cases_df)}")
    sql_statements.append("-- These are cases where BOTH user and status are incorrect")
    sql_statements.append("")
    sql_statements.append("BEGIN TRANSACTION;")
    sql_statements.append("")

    # Fix each worst case mismatch
    sql_statements.append("-- ================================================================================")
    sql_statements.append(f"-- FIX {len(worst_cases_df)} WORST CASE MISMATCHES")
    sql_statements.append("-- Update ServiceDetails to show correct current AD user")
    sql_statements.append("-- ================================================================================")
    sql_statements.append("")

    fix_count = 0
    for _, row in worst_cases_df.iterrows():
        phone = str(row['phone_number'])
        service_user = escape_sql_string(row['service_clean_name'])
        ad_user = escape_sql_string(row['ad_user'])

        # Use plain phone number format (no dashes for AssetID)
        if len(phone) == 10 and phone.isdigit():
            formatted_phone = phone  # Keep as plain digits
        else:
            formatted_phone = phone  # Use as-is if not standard 10-digit format

        sql_statements.append(f"-- Fix phone reassignment: {phone}")
        sql_statements.append(f"-- Old user: {service_user} → Current AD user: {ad_user}")
        sql_statements.append(f"UPDATE sd")
        sql_statements.append(f"SET sd.UserRef = p.id,")
        sql_statements.append(f"    sd.UserRef_Type = 'AD Fix',")
        sql_statements.append(f"    sd.Username = LEFT(p.username, 20)")
        sql_statements.append(f"FROM C_{customer_id}_ServiceDetails sd")
        sql_statements.append(f"INNER JOIN C_{customer_id}_People p ON p.username = '{ad_user}'")
        sql_statements.append(f"WHERE sd.AssetID = '{formatted_phone}'")
        sql_statements.append(f"  AND sd.Username = '{service_user}';  -- Only update records with the old user")
        sql_statements.append("")
        fix_count += 1    # Verification queries
    sql_statements.append("-- ================================================================================")
    sql_statements.append("-- VERIFICATION QUERIES")
    sql_statements.append("-- ================================================================================")
    sql_statements.append("")
    sql_statements.append("-- Check how many worst case fixes were applied")
    sql_statements.append(f"SELECT COUNT(*) as worst_case_fixes_applied")
    sql_statements.append(f"FROM C_{customer_id}_ServiceDetails")
    sql_statements.append("WHERE UserRef_Type = 'AD Fix';")
    sql_statements.append("")
    sql_statements.append("-- Show the fixed services")
    sql_statements.append(f"SELECT sd.AssetID, sd.Username, p.username as AD_Username")
    sql_statements.append(f"FROM C_{customer_id}_ServiceDetails sd")
    sql_statements.append(f"LEFT JOIN C_{customer_id}_People p ON sd.UserRef = p.id")
    sql_statements.append("WHERE sd.UserRef_Type = 'AD Fix'")
    sql_statements.append("ORDER BY sd.AssetID;")
    sql_statements.append("")

    sql_statements.append("COMMIT;")
    sql_statements.append("")
    sql_statements.append(f"-- Summary: Fixed {fix_count} worst case mismatches")
    sql_statements.append("-- These were the most critical phone reassignment issues!")

    # Write SQL file
    try:
        os.makedirs("output", exist_ok=True)
        with open(output_path, 'w', encoding='utf-8') as f:
            f.write('\n'.join(sql_statements))

        print(f"  💾 Generated SQL file: {os.path.basename(output_path)}")
        print(f"  📊 Total fixes: {fix_count}")

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
                # Check if this client has worst case files
                import glob
                worst_case_files = glob.glob(os.path.join(client_dir, "worst_case_mismatches_*.csv"))
                if worst_case_files:
                    available_clients.append({'name': item, 'files': worst_case_files})

    if not available_clients:
        print("❌ No client analysis results found!")
        print("Run comprehensive analysis first to generate mismatch data.")
        return None

    print("\n📋 AVAILABLE CLIENTS WITH ANALYSIS DATA:")
    print("=" * 60)

    for i, client in enumerate(available_clients, 1):
        print(f"{i}. {client['name'].upper()}")
        print(f"   📊 Analysis Files: {len(client['files'])} worst case file(s)")
        print()

    while True:
        try:
            choice = int(input(f"Select client for fixes [1-{len(available_clients)}]: ")) - 1
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

def main():
    """Main execution function"""

    print("=" * 60)
    print("🔧 SPIKEFLI WORST CASE MISMATCH FIX GENERATOR")
    print("=" * 60)

    # Select client for fixes
    client = select_client_for_fixes()
    if not client:
        return

    result = generate_worst_case_fix_sql(client)

    if result:
        print("\n✅ WORST CASE FIX SQL GENERATED!")
        print("\n📋 EXECUTION ORDER:")
        print("1. Execute this SQL in SSMS")
        print("2. Run analysis again to verify fixes")
        print("3. Check that worst case mismatches are reduced to zero")

        print(f"\n💡 TIP: This SQL fixes the most critical phone reassignment issues")
        print("     These are cases where both user and status were incorrect!")

    else:
        print("\n❌ WORST CASE FIX GENERATION FAILED!")

if __name__ == "__main__":
    main()