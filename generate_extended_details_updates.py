#!/usr/bin/env python3
"""
SpikeFli Extended Details Update SQL Generator

Generates SQL to update People fields from a sanitized AD CSV:
- GL1 (Cost Center)
- GL2 (GLCode)
- mgr (Manager)
- UserAdress (City + Province)

Outputs SQL with UPDATE + INSERT (no MERGE).
"""

import os
import argparse
import pandas as pd
from datetime import datetime

def escape_sql_string(value):
    if pd.isna(value):
        return ''
    value_str = str(value).strip()
    if value_str == '' or value_str.lower() in ('nan', 'none'):
        return ''
    return value_str.replace("'", "''")

def get_customer_id():
    while True:
        customer_digits = input("Enter the last 3 digits of the customer ID (e.g., 096): ").strip()
        if len(customer_digits) == 3 and customer_digits.isdigit():
            customer_id = f"0000000{customer_digits}"
            print(f"  Using customer ID: {customer_id}")
            return customer_id
        print("Please enter exactly 3 digits (e.g., 096, 057, 123)")

def list_clients_with_sanitized():
    script_dir = os.path.dirname(os.path.abspath(__file__))
    ad_root = os.path.join(script_dir, "ActiveDirectory_input")
    if not os.path.exists(ad_root):
        return []

    clients = []
    for item in os.listdir(ad_root):
        client_dir = os.path.join(ad_root, item)
        if not os.path.isdir(client_dir):
            continue
        if any(f.endswith('_SANITIZED.csv') for f in os.listdir(client_dir)):
            clients.append(item)
    return sorted(clients)

def select_client():
    clients = list_clients_with_sanitized()
    if not clients:
        return None

    print("\nAVAILABLE CLIENTS WITH SANITIZED AD FILES:")
    print("=" * 60)
    for i, client in enumerate(clients, 1):
        print(f"{i}. {client}")
    print("")

    while True:
        choice = input(f"Select client [1-{len(clients)}]: ").strip()
        try:
            idx = int(choice)
            if 1 <= idx <= len(clients):
                return clients[idx - 1]
        except ValueError:
            pass
        print(f"Please enter a number between 1 and {len(clients)}")

def find_ad_sanitized_file(client_name):
    if not client_name:
        return None

    script_dir = os.path.dirname(os.path.abspath(__file__))
    ad_dir = os.path.join(script_dir, "ActiveDirectory_input", client_name)
    if not os.path.exists(ad_dir):
        return None

    candidates = [os.path.join(ad_dir, f) for f in os.listdir(ad_dir) if f.endswith('_SANITIZED.csv')]
    if not candidates:
        return None

    return max(candidates, key=os.path.getmtime)

def build_user_address(row):
    city = str(row.get('City', '')).strip()
    province = str(row.get('State', '')).strip()

    if city and province:
        return f"{city}, {province}"
    if city:
        return city
    if province:
        return province
    return ''

def generate_extended_details_update_sql(client_name=None, customer_id=None):
    print("GENERATING EXTENDED DETAILS UPDATE SQL...")

    if not client_name:
        client_name = select_client()
        if not client_name:
            print("No client folders with sanitized files found.")
            return False

    if not customer_id:
        customer_id = get_customer_id()

    ad_file = find_ad_sanitized_file(client_name)
    if not ad_file:
        print("No sanitized AD file found for client.")
        return False

    print(f"  Client: {client_name}")
    print(f"  AD file: {os.path.basename(ad_file)}")

    try:
        ad_df = pd.read_csv(ad_file)
    except Exception as e:
        print(f"Error loading AD file: {e}")
        return False

    if len(ad_df) == 0:
        print("AD file is empty - nothing to update.")
        return True

    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    script_dir = os.path.dirname(os.path.abspath(__file__))
    output_dir = os.path.join(script_dir, "output")
    os.makedirs(output_dir, exist_ok=True)
    sql_file = os.path.join(output_dir, f"Extended_Details_Updates_{timestamp}.sql")

    sql_statements = []
    sql_statements.append("-- SpikeFli Extended Details Updates")
    sql_statements.append(f"-- Generated: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
    sql_statements.append(f"-- Customer ID: {customer_id}")
    sql_statements.append(f"-- Client: {client_name}")
    sql_statements.append(f"-- Source: {os.path.basename(ad_file)}")
    sql_statements.append("")
    sql_statements.append("BEGIN TRANSACTION;")
    sql_statements.append("")

    sql_statements.append("-- UPDATE/INSERT People directly from sanitized AD data")
    sql_statements.append("-- Only fills empty fields (GL1/GL2/mgr/UserAddress)")
    sql_statements.append("")

    for _, row in ad_df.iterrows():
        userid = escape_sql_string(str(row.get('cn', '')).strip())
        username = escape_sql_string(str(row.get('DisplayName', '')).strip())
        gl1 = escape_sql_string(str(row.get('GL1', '')).strip())
        gl2 = escape_sql_string(str(row.get('GL2', '')).strip())
        mgr = escape_sql_string(str(row.get('Manager', '')).strip())
        user_address = escape_sql_string(build_user_address(row))

        if not userid and not username:
            continue

        match_clause = (
            f"((p.userid = '{userid}' AND '{userid}' <> '')"
            f" OR (p.username = '{username}' AND '{userid}' = '' AND '{username}' <> ''))"
        )

        sql_statements.append(f"-- Update: {username or userid}")
        sql_statements.append(f"UPDATE p")
        sql_statements.append("SET")
        sql_statements.append(f"    p.GL1 = CASE WHEN ISNULL(p.GL1,'') = '' AND '{gl1}' <> '' THEN '{gl1}' ELSE p.GL1 END,")
        sql_statements.append(f"    p.GL2 = CASE WHEN ISNULL(p.GL2,'') = '' AND '{gl2}' <> '' THEN '{gl2}' ELSE p.GL2 END,")
        sql_statements.append(f"    p.mgr = CASE WHEN ISNULL(p.mgr,'') = '' AND '{mgr}' <> '' THEN '{mgr}' ELSE p.mgr END,")
        sql_statements.append(f"    p.UserAddress = CASE WHEN ISNULL(p.UserAddress,'') = '' AND '{user_address}' <> '' THEN '{user_address}' ELSE p.UserAddress END")
        sql_statements.append(f"FROM C_{customer_id}_People p")
        sql_statements.append(f"WHERE {match_clause}")
        sql_statements.append("  AND (")
        sql_statements.append(f"        (ISNULL(p.GL1,'') = '' AND '{gl1}' <> '')")
        sql_statements.append(f"     OR (ISNULL(p.GL2,'') = '' AND '{gl2}' <> '')")
        sql_statements.append(f"     OR (ISNULL(p.mgr,'') = '' AND '{mgr}' <> '')")
        sql_statements.append(f"     OR (ISNULL(p.UserAddress,'') = '' AND '{user_address}' <> '')")
        sql_statements.append("  );")
        sql_statements.append("")

        sql_statements.append(f"-- Insert if missing: {username or userid}")
        sql_statements.append(f"IF NOT EXISTS (SELECT 1 FROM C_{customer_id}_People p WHERE {match_clause})")
        sql_statements.append("BEGIN")
        sql_statements.append(f"    INSERT INTO C_{customer_id}_People (")
        sql_statements.append("        status, isPerson, lastdate, userid, username,")
        sql_statements.append("        GL1, GL2, mgr, UserAddress, LinkType, TS, Modified")
        sql_statements.append("    ) VALUES (")
        sql_statements.append("        'Active', 1, CONVERT(VARCHAR(6), DATEADD(MONTH, -1, GETDATE()), 112),")
        sql_statements.append(f"        '{userid}', '{username}', '{gl1}', '{gl2}', '{mgr}', '{user_address}', 'AD', GETDATE(),")
        sql_statements.append("        CONVERT(VARCHAR(6), DATEADD(MONTH, -1, GETDATE()), 112)")
        sql_statements.append("    );")
        sql_statements.append("END;")
        sql_statements.append("")

    sql_statements.append("PRINT 'Extended details updates complete. Review before committing.';")
    sql_statements.append("-- COMMIT;")
    sql_statements.append("-- ROLLBACK;")

    with open(sql_file, 'w', encoding='utf-8') as f:
        f.write('\n'.join(sql_statements))

    print(f"  Generated SQL file: {sql_file}")
    return True

def main():
    parser = argparse.ArgumentParser(description="Generate extended details update SQL.")
    parser.add_argument("--client-name", dest="client_name", default=None)
    parser.add_argument("--customer-id", dest="customer_id", default=None)
    args = parser.parse_args()

    generate_extended_details_update_sql(client_name=args.client_name, customer_id=args.customer_id)

if __name__ == "__main__":
    main()
