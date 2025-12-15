#!/usr/bin/env python3
"""
SpikeFli Database Backup Script

Creates a backup of the People table before running SQL updates.
This ensures you can restore if anything goes wrong.
"""

import os
import subprocess
from datetime import datetime

def create_backup():
    """Create a backup of the B_0000000057_People table"""

    print("🛡️  CREATING DATABASE BACKUP...")

    # Configuration - adjust these for your environment
    server = "your-server-name"  # Replace with your SQL Server instance
    database = "your-database-name"  # Replace with your database name
    table = "C_0000000096_People"

    # Generate backup filename with timestamp
    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    backup_file = f"People_Table_Backup_{timestamp}.bak"
    backup_path = os.path.join(os.path.dirname(__file__), "output", backup_file)

    # Ensure output directory exists
    os.makedirs(os.path.dirname(backup_path), exist_ok=True)

    print(f"  📄 Backup file: {backup_file}")
    print(f"  🎯 Table: {table}")

    # Method 1: SQL Server backup command (requires SQL Server tools)
    backup_sql = f"""
-- SpikeFli People Table Backup
-- Generated: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}
-- Table: {table}

-- Create backup table
IF OBJECT_ID('B_0000000057_People_BACKUP_{timestamp.replace(':', '').replace('-', '')}', 'U') IS NOT NULL
    DROP TABLE B_0000000057_People_BACKUP_{timestamp.replace(':', '').replace('-', '')};

SELECT *
INTO C_0000000096_People_BACKUP_{timestamp.replace(':', '').replace('-', '')}
FROM {table};-- Verify backup
SELECT COUNT(*) as backup_row_count
FROM C_0000000096_People_BACKUP_{timestamp.replace(':', '').replace('-', '')};

PRINT 'Backup table created: C_0000000096_People_BACKUP_{timestamp.replace(':', '').replace('-', '')}';
"""

    # Save backup SQL script
    backup_sql_path = os.path.join(os.path.dirname(__file__), "output", f"Create_Backup_{timestamp}.sql")

    try:
        with open(backup_sql_path, 'w', encoding='utf-8') as f:
            f.write(backup_sql)

        print(f"  💾 Backup SQL created: {os.path.basename(backup_sql_path)}")
        print(f"  🔧 Execute this SQL in SSMS to create backup table")

        return backup_sql_path

    except Exception as e:
        print(f"❌ Error creating backup SQL: {e}")
        return False

def create_restore_script():
    """Create a restore script template"""

    timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")

    restore_sql = f"""
-- SpikeFli People Table RESTORE Script
-- Generated: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}
-- EMERGENCY USE ONLY - This will overwrite current People table!

-- STEP 1: Verify backup table exists
IF OBJECT_ID('C_0000000096_People_BACKUP_XXXXXX', 'U') IS NULL
BEGIN
    PRINT 'ERROR: Backup table not found! Cannot restore.';
    RETURN;
END;

-- STEP 2: Show current vs backup row counts
SELECT 'CURRENT' as table_type, COUNT(*) as row_count FROM C_0000000096_People
UNION ALL
SELECT 'BACKUP' as table_type, COUNT(*) as row_count FROM C_0000000096_People_BACKUP_XXXXXX;

-- STEP 3: Uncomment the lines below to perform restore
-- WARNING: This will DELETE all current data and restore from backup!

/*
BEGIN TRANSACTION;

-- Clear current table
DELETE FROM C_0000000096_People;

-- Restore from backup (preserving identity if needed)
SET IDENTITY_INSERT C_0000000096_People ON;

INSERT INTO C_0000000096_People
SELECT * FROM C_0000000096_People_BACKUP_XXXXXX;SET IDENTITY_INSERT C_0000000096_People OFF;

-- Verify restore
SELECT COUNT(*) as restored_row_count FROM C_0000000096_People;

COMMIT;
PRINT 'Restore completed successfully';
*/

-- STEP 4: After successful restore, clean up backup table
-- DROP TABLE C_0000000096_People_BACKUP_XXXXXX;
"""

    restore_path = os.path.join(os.path.dirname(__file__), "output", f"Emergency_Restore_Template_{timestamp}.sql")

    try:
        with open(restore_path, 'w', encoding='utf-8') as f:
            f.write(restore_sql)

        print(f"  🚨 Emergency restore script: {os.path.basename(restore_path)}")
        print(f"  ⚠️  Only use if you need to rollback the updates!")

        return restore_path

    except Exception as e:
        print(f"❌ Error creating restore script: {e}")
        return False

def main():
    """Main execution function"""

    print("=" * 60)
    print("🛡️  SPIKEFLI DATABASE BACKUP UTILITY")
    print("=" * 60)

    # Create backup script
    backup_result = create_backup()

    # Create restore script template
    restore_result = create_restore_script()

    if backup_result and restore_result:
        print("\n✅ BACKUP SCRIPTS CREATED!")
        print("\n📋 PRE-UPDATE CHECKLIST:")
        print("1. Execute the backup SQL in SSMS first")
        print("2. Verify the backup table was created")
        print("3. Then execute your AD update SQL")
        print("4. Test the results with the analysis tool")
        print("5. Keep the restore script handy (just in case)")

        print("\n💡 TIP: The backup creates a table in the same database")
        print("   This is faster than external backups for quick rollbacks.")

    else:
        print("\n❌ BACKUP SCRIPT CREATION FAILED!")

if __name__ == "__main__":
    main()