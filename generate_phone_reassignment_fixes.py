#!/usr/bin/env python3
"""
SpikeFli Phone Reassignment Fix SQL Generator

Generates SQL to fix phone reassignments where the same phone number
is assigned to different users in Service Overview vs Active Directory.
"""

import os
import sys
import argparse
import pandas as pd
from datetime import datetime

if hasattr(sys.stdout, "reconfigure"):
    # Avoid UnicodeEncodeError on Windows consoles using legacy encodings.
    sys.stdout.reconfigure(errors="replace")
if hasattr(sys.stderr, "reconfigure"):
    sys.stderr.reconfigure(errors="replace")

def escape_sql_string(value):
    """Escape single quotes in SQL strings"""
    if pd.isna(value) or value == '':
        return ''
    return str(value).replace("'", "''")

def get_customer_id():
    """Prompt user for the customer ID digits"""
    while True:
        customer_digits = input("Enter the last 3 digits of the customer ID (e.g., 096): ").strip()

        if len(customer_digits) == 3 and customer_digits.isdigit():
            customer_id = f"0000000{customer_digits}"
            print(f"Using customer ID: {customer_id}")
            return customer_id
        else:
            print("Please enter exactly 3 digits (e.g., 096, 057, 123)")

def _prev_month_start(dt):
    """Return the first day of the previous calendar month."""
    if dt.month == 1:
        return datetime(dt.year - 1, 12, 1)
    return datetime(dt.year, dt.month - 1, 1)

def get_default_dateref_months(include_prior=True):
    """
    DateRef months to update.

    Default behavior matches historic usage: update the previous calendar month (current billing)
    plus the month before that (prior billing).
    """
    now = datetime.now()
    current_billing_start = _prev_month_start(now)
    current_billing_month = current_billing_start.strftime("%Y%m")

    if not include_prior:
        return [current_billing_month]

    prior_billing_start = _prev_month_start(current_billing_start)
    prior_billing_month = prior_billing_start.strftime("%Y%m")
    return [current_billing_month, prior_billing_month]

def format_dateref_filter_sql(months):
    months = [m for m in (months or []) if m]
    if not months:
        raise ValueError("No DateRef months provided")
    quoted = "', '".join(months)
    return f"IN ('{quoted}')"

def find_latest_phone_reassignment_file():
    """Find the most recent phone reassignments CSV file across root and client subfolders."""
    script_dir = os.path.dirname(os.path.abspath(__file__))
    output_dir = os.path.join(script_dir, "output")

    if not os.path.exists(output_dir):
        return None

    candidates = []

    # Search root output directory
    try:
        for f in os.listdir(output_dir):
            path = os.path.join(output_dir, f)
            if os.path.isfile(path) and f.startswith('phone_reassignments_') and f.endswith('.csv'):
                candidates.append(path)
    except Exception:
        pass

    # Search client subdirectories under output/
    try:
        for item in os.listdir(output_dir):
            client_dir = os.path.join(output_dir, item)
            if os.path.isdir(client_dir) and not item.startswith('.'):
                for f in os.listdir(client_dir):
                    path = os.path.join(client_dir, f)
                    if os.path.isfile(path) and f.startswith('phone_reassignments_') and f.endswith('.csv'):
                        candidates.append(path)
    except Exception:
        pass

    if not candidates:
        return None

    return max(candidates, key=os.path.getmtime)

def generate_phone_reassignment_fix_sql(customer_id=None, dateref_months=None):
    """Generate SQL to fix phone reassignments"""

    print("GENERATING PHONE REASSIGNMENT FIX SQL...")

    if not customer_id:
        customer_id = get_customer_id()

    print(f"Using customer ID: {customer_id}")

    if not dateref_months:
        dateref_months = get_default_dateref_months(include_prior=True)
    dateref_filter_sql = format_dateref_filter_sql(dateref_months)
    print(f"Updating ServiceDetails months: {', '.join(dateref_months)}")

    # Find the latest phone reassignments file
    phone_file = find_latest_phone_reassignment_file()
    if not phone_file:
        print("No phone reassignments file found!")
        print("   Run comprehensive analysis first to generate phone_reassignments_*.csv")
        return

    print(f"Using phone reassignments file: {os.path.basename(phone_file)}")

    try:
        phone_df = pd.read_csv(phone_file)
        print(f"Phone reassignments to fix: {len(phone_df)}")

        if len(phone_df) == 0:
            print("No phone reassignments found - all phones are correctly assigned!")
            return

    except Exception as e:
        print(f"Error reading phone reassignments file: {e}")
        return

    # Generate SQL
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    script_dir = os.path.dirname(os.path.abspath(__file__))
    output_dir = os.path.join(script_dir, "output")
    os.makedirs(output_dir, exist_ok=True)

    sql_file = os.path.join(output_dir, f"Phone_Reassignment_Fixes_{timestamp}.sql")

    sql_statements = []
    sql_statements.append("-- SpikeFli Phone Reassignment Fixes")
    sql_statements.append(f"-- Generated: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
    sql_statements.append(f"-- Customer ID: {customer_id}")
    sql_statements.append(f"-- Phone reassignments to fix: {len(phone_df)}")
    sql_statements.append("-- These phones were reassigned but Service Overview wasn't updated")
    sql_statements.append(f"-- Only months {', '.join(dateref_months)} will be updated")
    sql_statements.append("")
    sql_statements.append("BEGIN TRANSACTION;")
    sql_statements.append("")

    # Ensure phone is stored on People (phone1/phone2)
    sql_statements.append("-- STEP 1: ENSURE PHONE NUMBER IS STORED ON PEOPLE (phone1/phone2)")
    sql_statements.append("-- ================================================================================")
    sql_statements.append("")

    for _, row in phone_df.iterrows():
        phone_number = str(row['phone_number'])
        new_user = escape_sql_string(row['ad_user'])
        phone_clean = ''.join(filter(str.isdigit, phone_number))

        sql_statements.append(f"-- Ensure {phone_number} is stored for {new_user}")
        sql_statements.append(f"UPDATE p")
        sql_statements.append(f"SET p.phone1 = '{phone_clean}'")
        sql_statements.append(f"FROM C_{customer_id}_People p")
        sql_statements.append(f"WHERE p.username = '{new_user}'")
        sql_statements.append(f"  AND (p.phone1 IS NULL OR LTRIM(RTRIM(p.phone1)) = '')")
        sql_statements.append(f"  AND (p.phone2 IS NULL OR LTRIM(RTRIM(p.phone2)) = '' OR p.phone2 <> '{phone_clean}');")
        sql_statements.append("")

        sql_statements.append(f"UPDATE p")
        sql_statements.append(f"SET p.phone2 = '{phone_clean}'")
        sql_statements.append(f"FROM C_{customer_id}_People p")
        sql_statements.append(f"WHERE p.username = '{new_user}'")
        sql_statements.append(f"  AND (p.phone1 IS NOT NULL AND LTRIM(RTRIM(p.phone1)) <> '' AND p.phone1 <> '{phone_clean}')")
        sql_statements.append(f"  AND (p.phone2 IS NULL OR LTRIM(RTRIM(p.phone2)) = '');")
        sql_statements.append("")

    # Fix each phone reassignment
    fix_count = 0
    sql_statements.append(f"-- FIX {len(phone_df)} PHONE REASSIGNMENTS")
    sql_statements.append("-- Update ServiceDetails to use the current Active Directory user")
    sql_statements.append("-- ================================================================================")
    sql_statements.append("")

    for _, row in phone_df.iterrows():
        phone_number = str(row['phone_number'])
        old_user = escape_sql_string(row['service_user'])
        new_user = escape_sql_string(row['ad_user'])

        # Clean phone number (remove any formatting)
        phone_clean = ''.join(filter(str.isdigit, phone_number))

        sql_statements.append(f"-- Reassign phone {phone_number}: {old_user} → {new_user}")
        sql_statements.append(f"UPDATE sd")
        sql_statements.append(f"SET sd.UserRef = p.id,")
        sql_statements.append(f"    sd.UserRef_Type = 'AD Fix',")
        sql_statements.append(f"    sd.Username = LEFT(p.username, 20)")
        sql_statements.append(f"FROM C_{customer_id}_ServiceDetails sd")
        sql_statements.append(f"INNER JOIN C_{customer_id}_People p ON p.username = '{new_user}'")
        sql_statements.append(f"WHERE sd.AssetID = '{phone_clean}'")
        sql_statements.append(f"  AND sd.DateRef {dateref_filter_sql};")
        sql_statements.append("")

        fix_count += 1

    sql_statements.append("-- ================================================================================")
    sql_statements.append("-- VERIFICATION QUERIES")
    sql_statements.append("-- ================================================================================")
    sql_statements.append("")

    # Add verification queries for each reassignment
    for _, row in phone_df.iterrows():
        phone_number = str(row['phone_number'])
        new_user = escape_sql_string(row['ad_user'])
        phone_clean = ''.join(filter(str.isdigit, phone_number))

        sql_statements.append(f"-- Verify {phone_number} is now assigned to {new_user}")
        sql_statements.append(f"SELECT 'ServiceDetails' as Table_Name, AssetID, Username")
        sql_statements.append(f"FROM C_{customer_id}_ServiceDetails")
        sql_statements.append(f"WHERE AssetID = '{phone_clean}';")
        sql_statements.append("")

        sql_statements.append(f"SELECT 'People' as Table_Name, phone1, phone2, username")
        sql_statements.append(f"FROM C_{customer_id}_People")
        sql_statements.append(f"WHERE phone1 = '{phone_clean}' OR phone2 = '{phone_clean}';")
        sql_statements.append("")

    # Add verification and transaction control
    sql_statements.append("-- ===============================================================================")
    sql_statements.append("-- FINAL VERIFICATION & TRANSACTION CONTROL")
    sql_statements.append("-- ===============================================================================")
    sql_statements.append("")
    sql_statements.append("-- Count total updates made")
    sql_statements.append(f"SELECT COUNT(*) as total_reassignments")
    sql_statements.append(f"FROM C_{customer_id}_ServiceDetails")
    sql_statements.append("WHERE UserRef_Type = 'AD Fix'")
    sql_statements.append(f"  AND DateRef {dateref_filter_sql};")
    sql_statements.append("")
    sql_statements.append("-- Show sample of reassigned phones")
    sql_statements.append(f"SELECT TOP 10 AssetID, Username, UserRef_Type, DateRef")
    sql_statements.append(f"FROM C_{customer_id}_ServiceDetails")
    sql_statements.append(f"WHERE UserRef_Type = 'AD Fix'")
    sql_statements.append(f"  AND DateRef {dateref_filter_sql}")
    sql_statements.append(f"ORDER BY AssetID;")
    sql_statements.append("")
    sql_statements.append("-- ===============================================================================")
    sql_statements.append("-- SAFETY CONTROLS")
    sql_statements.append("-- ===============================================================================")
    sql_statements.append("")
    sql_statements.append(f"PRINT 'Phone reassignment completed - {fix_count} fixes applied (UserRef_Type=AD Fix)';")
    sql_statements.append("PRINT 'Review results above before committing';")
    sql_statements.append("")
    sql_statements.append("-- COMMIT;")
    sql_statements.append("-- ROLLBACK;")
    sql_statements.append("")
    sql_statements.append(f"-- Summary: Fixed {fix_count} phone reassignments")
    sql_statements.append(f"-- Only updated months {', '.join(dateref_months)}")
    sql_statements.append("-- Services now assigned to correct Active Directory users!")

    # Write SQL file
    with open(sql_file, 'w', encoding='utf-8') as f:
        f.write('\n'.join(sql_statements))

    print(f"Generated SQL file: {sql_file}")
    print(f"Total fixes: {fix_count}")
    print("")
    print("PHONE REASSIGNMENT FIX SQL GENERATED!")
    print("")
    print("EXECUTION ORDER:")
    print("1. Execute this SQL in SSMS")
    print("2. Run analysis again to verify fixes")
    print("3. Check that phone reassignments are reduced to zero")
    print("")
    print("TIP: This SQL updates ServiceDetails and People tables")
    print("     to assign services to current Active Directory users")

def main():
    parser = argparse.ArgumentParser(description="Generate SQL to fix phone reassignments (ServiceDetails user mismatches).")
    parser.add_argument("--customer-id", dest="customer_id", help="Full customer id (e.g., 0000000096). If omitted, prompts.")
    parser.add_argument(
        "--months",
        help="Comma-separated DateRef months to update (e.g., 202601,202512). Overrides defaults.",
    )
    parser.add_argument(
        "--single-month",
        action="store_true",
        help="Only update the current billing month (defaults to current+prior). Ignored if --months is provided.",
    )
    args = parser.parse_args()

    if args.months:
        dateref_months = [m.strip() for m in args.months.split(",") if m.strip()]
    else:
        dateref_months = get_default_dateref_months(include_prior=(not args.single_month))

    print("SPIKEFLI PHONE REASSIGNMENT FIX GENERATOR")
    print("=" * 60)
    generate_phone_reassignment_fix_sql(customer_id=args.customer_id, dateref_months=dateref_months)
    print("")
    print("Execute the generated SQL file in your database.")

if __name__ == "__main__":
    main()
