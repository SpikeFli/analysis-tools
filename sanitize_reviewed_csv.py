#!/usr/bin/env python3
"""
SpikeFli Reviewed CSV Sanitizer

Processes manually reviewed "should_be_expired" CSV files that contain
SF Note classifications (EXPIRED vs GENERAL USE) and:
1. Splits them into separate files based on classification
2. Generates SQL to mark EXPIRED phones as expired in ServiceDetails
3. Saves results to TempExpired folder for review
"""

import os
import pandas as pd
from datetime import datetime

def sanitize_reviewed_csv():
    """Process reviewed CSV based on SF Note classifications"""

    print("=" * 60)
    print("🧹 SPIKEFLI REVIEWED CSV SANITIZER")
    print("=" * 60)

    # Find reviewed CSV files
    script_dir = os.path.dirname(os.path.abspath(__file__))

    # Check both Temp and TempExpired directories
    temp_dirs = [
        os.path.join(script_dir, "inputs", "Synovus", "Temp"),
        os.path.join(script_dir, "inputs", "Synovus", "TempExpired")
    ]

    reviewed_files = []
    for temp_dir in temp_dirs:
        if os.path.exists(temp_dir):
            for file in os.listdir(temp_dir):
                if file.endswith("reviewed.csv"):
                    reviewed_files.append((temp_dir, file))

    if not reviewed_files:
        print("❌ No reviewed CSV files found in inputs/Synovus/Temp/ or inputs/Synovus/TempExpired/")
        return False

    if len(reviewed_files) == 1:
        selected_dir, selected_file = reviewed_files[0]
        print(f"✅ Found reviewed file: {selected_file}")
    else:
        print("📋 Available reviewed files:")
        for i, (dir_path, file) in enumerate(reviewed_files, 1):
            print(f"{i}. {file} (in {os.path.basename(dir_path)})")

        while True:
            try:
                choice = int(input(f"Select file [1-{len(reviewed_files)}]: "))
                if 1 <= choice <= len(reviewed_files):
                    selected_dir, selected_file = reviewed_files[choice - 1]
                    break
                print(f"Please enter a number between 1 and {len(reviewed_files)}")
            except ValueError:
                print("Please enter a valid number")

    # Load the reviewed CSV
    input_file = os.path.join(selected_dir, selected_file)
    print(f"\n📂 Loading: {selected_file}")

    try:
        df = pd.read_csv(input_file)
        print(f"✅ Loaded {len(df)} records")
    except Exception as e:
        print(f"❌ Error loading file: {e}")
        return False

    # Check for SF Note column
    if 'SF Note:' not in df.columns:
        print("❌ 'SF Note:' column not found in CSV")
        print(f"Available columns: {list(df.columns)}")
        return False

    # Count classifications
    sf_note_counts = df['SF Note:'].value_counts()
    print(f"\n📊 Classifications found:")
    for classification, count in sf_note_counts.items():
        print(f"  {classification}: {count}")

    # Split based on SF Note classifications
    expired_df = df[df['SF Note:'] == 'EXPIRED'].copy()
    general_use_df = df[df['SF Note:'] == 'GENERAL USE'].copy()

    print(f"\n🔄 Processing results:")
    print(f"  📞 EXPIRED phones: {len(expired_df)}")
    print(f"  🏢 GENERAL USE phones: {len(general_use_df)}")

    # Create TempExpired directory
    temp_expired_dir = os.path.join(script_dir, "inputs", "Synovus", "TempExpired")
    os.makedirs(temp_expired_dir, exist_ok=True)

    # Generate timestamp for output files
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")

    # Save EXPIRED phones CSV
    expired_file = os.path.join(temp_expired_dir, f"EXPIRED_phones_{timestamp}.csv")
    expired_df.to_csv(expired_file, index=False)
    print(f"💾 Saved EXPIRED phones: {os.path.basename(expired_file)}")

    # Save GENERAL USE phones CSV
    general_use_file = os.path.join(temp_expired_dir, f"GENERAL_USE_phones_{timestamp}.csv")
    general_use_df.to_csv(general_use_file, index=False)
    print(f"💾 Saved GENERAL USE phones: {os.path.basename(general_use_file)}")

    # Generate SQL for EXPIRED phones
    if len(expired_df) > 0:
        generate_expired_sql(expired_df, temp_expired_dir, timestamp)

    print(f"\n✅ SANITIZATION COMPLETE!")
    print(f"📁 Output location: {temp_expired_dir}")
    print(f"📋 Files generated:")
    print(f"  - EXPIRED_phones_{timestamp}.csv ({len(expired_df)} records)")
    print(f"  - GENERAL_USE_phones_{timestamp}.csv ({len(general_use_df)} records)")
    if len(expired_df) > 0:
        print(f"  - Mark_EXPIRED_phones_{timestamp}.sql")

    return True

def generate_expired_sql(expired_df, output_dir, timestamp):
    """Generate SQL to mark EXPIRED phones as expired in ServiceDetails"""

    # Get customer ID
    customer_id = get_customer_id()
    if not customer_id:
        return

    # Generate SQL content
    sql_lines = [
        f"-- Mark EXPIRED Phones as Expired in ServiceDetails",
        f"-- Generated: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}",
        f"-- Customer ID: {customer_id}",
        f"-- Total EXPIRED phones to update: {len(expired_df)}",
        f"-- Based on manual review with SF Note classifications",
        "",
        "BEGIN TRANSACTION;",
        "",
        f"PRINT 'Marking {len(expired_df)} phones as EXPIRED based on manual review...';",
        "",
        "-- ===============================================================================",
        "-- UPDATE SERVICE DETAILS - Mark phones as EXPIRED",
        "-- These are phones assigned to former employees (FirstName LastName pattern)",
        "-- ===============================================================================",
        ""
    ]

    # Generate UPDATE statements for each phone
    update_count = 0
    for _, row in expired_df.iterrows():
        phone = str(row['phone_number']).strip()
        user = str(row['service_user']).strip()

        escaped_user = user.replace("'", "''")
        sql_lines.extend([
            f"-- Mark phone {phone} ({user}) as EXPIRED",
            f"UPDATE C_{customer_id}_ServiceDetails",
            f"SET Username = CASE",
            f"    WHEN Username = '{escaped_user}' THEN '{escaped_user} (EXPIRED)'",
            f"    ELSE Username + ' (EXPIRED)'",
            f"END",
            f"WHERE AssetID = '{phone}'",
            f"  AND DateRef IN ('202512', '202511');  -- Only current months",
            "",
        ])
        update_count += 1

    # Add verification queries
    sql_lines.extend([
        "-- ===============================================================================",
        "-- VERIFICATION QUERIES",
        "-- ===============================================================================",
        "",
        "-- Count phones marked as EXPIRED",
        f"SELECT COUNT(*) as phones_marked_expired",
        f"FROM C_{customer_id}_ServiceDetails",
        f"WHERE Username LIKE '%(EXPIRED)%'",
        f"  AND DateRef IN ('202512', '202511');",
        "",
        "-- Show sample of marked phones",
        f"SELECT TOP 10 AssetID, Username, DateRef",
        f"FROM C_{customer_id}_ServiceDetails",
        f"WHERE Username LIKE '%(EXPIRED)%'",
        f"  AND DateRef IN ('202512', '202511')",
        f"ORDER BY AssetID;",
        "",
        "-- ===============================================================================",
        "-- SAFETY CONTROLS",
        "-- ===============================================================================",
        "",
        "PRINT 'EXPIRED phone marking completed';",
        "PRINT 'Review results above before committing';",
        "",
        "-- COMMIT;",
        "-- ROLLBACK;",
        ""
    ])

    # Write SQL file
    sql_file = os.path.join(output_dir, f"Mark_EXPIRED_phones_{timestamp}.sql")
    with open(sql_file, 'w') as f:
        f.write('\n'.join(sql_lines))

    print(f"💾 Generated SQL: {os.path.basename(sql_file)}")
    print(f"📊 UPDATE statements: {update_count}")

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

if __name__ == "__main__":
    sanitize_reviewed_csv()