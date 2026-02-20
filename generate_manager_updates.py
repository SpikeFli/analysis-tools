#!/usr/bin/env python3
"""
Generate SQL to update People.mgr (manager userid) for all AD users.

Uses sanitized AD file: ActiveDirectory_input/<Client>/<*_SANITIZED.csv>
Updates only when mgr is NULL/blank or mismatched.
"""

import os
import sys
import pandas as pd
from datetime import datetime


def escape_sql_string(value):
    if pd.isna(value) or value == "":
        return ""
    return str(value).replace("'", "''")


def get_customer_id():
    while True:
        customer_digits = input("Enter the last 3 digits of the customer ID (e.g., 135): ").strip()
        if len(customer_digits) == 3 and customer_digits.isdigit():
            customer_id = f"0000000{customer_digits}"
            print(f"Using customer ID: {customer_id}")
            return customer_id
        print("Please enter exactly 3 digits.")


def find_ad_sanitized_file(client_name):
    script_dir = os.path.dirname(os.path.abspath(__file__))
    ad_dir = os.path.join(script_dir, "ActiveDirectory_input", client_name)
    if not os.path.exists(ad_dir):
        return None

    candidates = []
    for f in os.listdir(ad_dir):
        if f.endswith("_SANITIZED.csv"):
            candidates.append(os.path.join(ad_dir, f))
    if not candidates:
        return None

    return max(candidates, key=os.path.getmtime)


def main():
    client_name = input("Client folder name (e.g., Gateway Mechanical): ").strip()
    if not client_name:
        print("Client name is required.")
        sys.exit(1)

    customer_id = get_customer_id()
    ad_file = find_ad_sanitized_file(client_name)
    if not ad_file:
        print("No sanitized AD file found for this client.")
        sys.exit(1)

    try:
        ad_df = pd.read_csv(ad_file)
    except Exception as exc:
        print(f"Failed to read AD file: {exc}")
        sys.exit(1)

    rows = []
    for _, r in ad_df.iterrows():
        username = str(r.get("DisplayName", "")).strip()
        manager = str(r.get("Manager", "")).strip()
        if username and manager:
            rows.append((username, manager))

    if not rows:
        print("No DisplayName/Manager pairs found in AD file.")
        sys.exit(0)

    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    script_dir = os.path.dirname(os.path.abspath(__file__))
    output_dir = os.path.join(script_dir, "output", client_name)
    os.makedirs(output_dir, exist_ok=True)
    sql_file = os.path.join(output_dir, f"People_Manager_Updates_{timestamp}.sql")

    sql = []
    sql.append("-- People Manager Updates (mgr userid)")
    sql.append(f"-- Generated: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
    sql.append(f"-- Customer ID: {customer_id}")
    sql.append(f"-- Source AD file: {os.path.basename(ad_file)}")
    sql.append("")
    sql.append("BEGIN TRANSACTION;")
    sql.append("")
    sql.append("IF OBJECT_ID('tempdb..#ad_manager') IS NOT NULL DROP TABLE #ad_manager;")
    sql.append("CREATE TABLE #ad_manager (")
    sql.append("    username NVARCHAR(256) NOT NULL,")
    sql.append("    manager_name NVARCHAR(256) NOT NULL")
    sql.append(");")
    sql.append("")

    sql.append("-- Load AD DisplayName -> Manager DisplayName mappings")
    sql.append("INSERT INTO #ad_manager (username, manager_name) VALUES")

    for i, (username, manager) in enumerate(rows):
        u = escape_sql_string(username)
        m = escape_sql_string(manager)
        line = f"('{u}', '{m}')"
        if i < len(rows) - 1:
            line += ","
        else:
            line += ";"
        sql.append(line)

    sql.append("")
    sql.append("-- Update People.mgr to manager userid ONLY when missing/blank")
    sql.append(f"UPDATE p")
    sql.append("SET p.mgr = mgr.userid")
    sql.append(f"FROM C_{customer_id}_People p")
    sql.append("INNER JOIN #ad_manager am ON am.username = p.username")
    sql.append(f"INNER JOIN C_{customer_id}_People mgr ON mgr.username = am.manager_name")
    sql.append("WHERE (p.mgr IS NULL OR LTRIM(RTRIM(p.mgr)) = '');")
    sql.append("")
    sql.append("-- Verification")
    sql.append(f"SELECT COUNT(*) AS mgr_updates")
    sql.append(f"FROM C_{customer_id}_People p")
    sql.append("INNER JOIN #ad_manager am ON am.username = p.username")
    sql.append(f"INNER JOIN C_{customer_id}_People mgr ON mgr.username = am.manager_name")
    sql.append("WHERE p.mgr = mgr.userid;")
    sql.append("")
    sql.append("-- COMMIT;")
    sql.append("-- ROLLBACK;")

    with open(sql_file, "w", encoding="utf-8") as f:
        f.write("\n".join(sql))

    print(f"SQL generated: {sql_file}")
    print(f"Rows in AD mapping: {len(rows)}")


if __name__ == "__main__":
    main()
