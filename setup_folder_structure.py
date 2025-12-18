#!/usr/bin/env python3
"""
SpikeFli Directory Structure Manager

Creates and manages the organized folder structure for client-specific
Active Directory inputs and customer-specific outputs.

Structure:
ActiveDirectory_input/
├── Northview/
├── Synovus/
└── [other_clients]/

output/
├── 096/               # Customer numbers
│   ├── reports/       # MD files
│   ├── data/          # CSV files
│   └── sql/           # SQL files
└── [other_customers]/
"""

import os
import sys
from pathlib import Path

# Standard client input folders
CLIENT_INPUT_FOLDERS = [
    'Northview',
    'Synovus',
    'Gateway',  # For future use
    'Other'     # Fallback for unknown clients
]

# Standard output subfolders
OUTPUT_SUBFOLDERS = [
    'reports',  # Markdown analysis reports
    'data',     # CSV data files
    'sql'       # SQL script files
]

def create_input_structure():
    """Create client-specific input folder structure"""
    print("📁 Creating Active Directory input structure...")

    base_input = Path("ActiveDirectory_input")
    base_input.mkdir(exist_ok=True)

    created_folders = []
    for client in CLIENT_INPUT_FOLDERS:
        client_path = base_input / client
        if not client_path.exists():
            client_path.mkdir(exist_ok=True)
            created_folders.append(str(client_path))
            print(f"  ✅ Created: {client_path}")
        else:
            print(f"  📁 Exists: {client_path}")

    # Create README in input folder
    readme_path = base_input / "README.md"
    readme_content = """# Active Directory Input Structure

## Client-Specific Folders

Place your Active Directory export files in the appropriate client folder:

- **Northview/**: Place Northview AD exports here
- **Synovus/**: Place Synovus/Cenovus AD exports here
- **Gateway/**: Place Gateway AD exports here (if applicable)
- **Other/**: Place other client AD exports here

## File Naming

Use descriptive filenames that include:
- Client name
- Export date
- Version (if multiple exports same day)

Examples:
- `Northview_AD_20251216.csv`
- `Synovus_AD_Export_20251215.csv`
- `Gateway_ActiveDirectory_202512.csv`

## Processing

The sanitizer router will automatically detect which client folder to scan and process files accordingly.
"""

    with open(readme_path, 'w') as f:
        f.write(readme_content)

    return created_folders

def create_output_structure(customer_ids=None):
    """Create customer-specific output folder structure"""
    print("📂 Creating output folder structure...")

    base_output = Path("output")
    base_output.mkdir(exist_ok=True)

    # Default customer IDs if none provided
    if customer_ids is None:
        customer_ids = ['096', '057']  # Common customer IDs

    created_folders = []
    for customer_id in customer_ids:
        customer_path = base_output / customer_id
        customer_path.mkdir(exist_ok=True)

        for subfolder in OUTPUT_SUBFOLDERS:
            subfolder_path = customer_path / subfolder
            if not subfolder_path.exists():
                subfolder_path.mkdir(exist_ok=True)
                created_folders.append(str(subfolder_path))
                print(f"  ✅ Created: {subfolder_path}")
            else:
                print(f"  📁 Exists: {subfolder_path}")

    # Create README in output folder
    readme_path = base_output / "README.md"
    readme_content = """# Output Folder Structure

## Customer-Specific Organization

Output files are organized by customer ID with subfolders for different file types:

```
096/                   # Customer 096 (Northview)
├── reports/          # Markdown analysis reports (.md)
├── data/             # CSV data files (.csv)
└── sql/              # SQL script files (.sql)

057/                   # Customer 057 (Synovus)
├── reports/          # Markdown analysis reports
├── data/             # CSV data files
└── sql/              # SQL script files
```

## File Types

### Reports Folder (`reports/`)
- Comprehensive analysis reports (`.md`)
- Summary documents
- Investigation findings

### Data Folder (`data/`)
- Phone cross-reference files (`.csv`)
- Should be active/expired lists (`.csv`)
- Phone reassignment data (`.csv`)
- Worst case mismatch files (`.csv`)

### SQL Folder (`sql/`)
- Direct SQL update scripts (`.sql`)
- Worst case fix scripts (`.sql`)
- Service status fix scripts (`.sql`)
- Backup and rollback scripts (`.sql`)

## Automatic Organization

The analysis tools automatically detect the customer ID and place files in the appropriate subfolders based on file type.
"""

    with open(readme_path, 'w') as f:
        f.write(readme_content)

    return created_folders

def get_customer_output_path(customer_id, file_type='data'):
    """Get the correct output path for a customer and file type"""
    base_output = Path("output")
    customer_path = base_output / str(customer_id)

    # Ensure customer folder exists
    customer_path.mkdir(parents=True, exist_ok=True)

    # Ensure subfolder exists
    subfolder_path = customer_path / file_type
    subfolder_path.mkdir(exist_ok=True)

    return subfolder_path

def get_client_input_path(client_name):
    """Get the correct input path for a client"""
    base_input = Path("ActiveDirectory_input")
    client_path = base_input / client_name

    # Ensure client folder exists
    client_path.mkdir(parents=True, exist_ok=True)

    return client_path

def migrate_existing_files():
    """Migrate existing files to new structure"""
    print("🔄 Migrating existing files to new structure...")

    base_input = Path("ActiveDirectory_input")
    base_output = Path("output")

    migrated_files = []

    # Migrate AD input files
    if base_input.exists():
        for file_path in base_input.iterdir():
            if file_path.is_file() and file_path.suffix.lower() == '.csv':
                # Detect client from filename
                filename = file_path.name.lower()
                if 'northview' in filename:
                    target_dir = base_input / 'Northview'
                elif any(term in filename for term in ['synovus', 'cenovus']):
                    target_dir = base_input / 'Synovus'
                else:
                    target_dir = base_input / 'Other'

                target_dir.mkdir(exist_ok=True)
                target_file = target_dir / file_path.name

                if not target_file.exists():
                    file_path.rename(target_file)
                    migrated_files.append(f"{file_path} → {target_file}")
                    print(f"  📁 Moved: {file_path.name} → {target_dir.name}/")

    # Migrate output files
    if base_output.exists():
        for file_path in base_output.iterdir():
            if file_path.is_file():
                # Detect file type and move to appropriate subfolder
                filename = file_path.name.lower()

                # Extract customer ID from filename (look for pattern like _096_ or 096)
                import re
                customer_match = re.search(r'(?:_|^)(\d{3})(?:_|\.)', filename)
                customer_id = customer_match.group(1) if customer_match else '096'  # Default

                # Determine subfolder based on file extension
                if file_path.suffix.lower() == '.md':
                    subfolder = 'reports'
                elif file_path.suffix.lower() == '.csv':
                    subfolder = 'data'
                elif file_path.suffix.lower() == '.sql':
                    subfolder = 'sql'
                else:
                    continue  # Skip unknown file types

                target_dir = base_output / customer_id / subfolder
                target_dir.mkdir(parents=True, exist_ok=True)
                target_file = target_dir / file_path.name

                if not target_file.exists():
                    file_path.rename(target_file)
                    migrated_files.append(f"{file_path} → {target_file}")
                    print(f"  📁 Moved: {file_path.name} → {customer_id}/{subfolder}/")

    return migrated_files

def setup_folder_structure(customer_ids=None, migrate=True):
    """Setup complete folder structure"""
    print("🚀 SPIKEFLI FOLDER STRUCTURE SETUP")
    print("=" * 50)

    # Create input structure
    input_folders = create_input_structure()

    # Create output structure
    output_folders = create_output_structure(customer_ids)

    # Migrate existing files if requested
    migrated_files = []
    if migrate:
        migrated_files = migrate_existing_files()

    print()
    print("✅ FOLDER STRUCTURE SETUP COMPLETE!")
    print(f"  📁 Created {len(input_folders)} input folders")
    print(f"  📂 Created {len(output_folders)} output folders")
    if migrated_files:
        print(f"  🔄 Migrated {len(migrated_files)} existing files")

    print()
    print("📋 NEXT STEPS:")
    print("1. Place AD files in appropriate client folders under ActiveDirectory_input/")
    print("2. Run analysis tools - they'll automatically use the new structure")
    print("3. Check organized output in customer-specific folders")

def main():
    """Interactive setup"""
    import argparse

    parser = argparse.ArgumentParser(description="Setup SpikeFli folder structure")
    parser.add_argument('--customers', nargs='+', default=['096', '057'],
                       help='Customer IDs to create folders for (default: 096 057)')
    parser.add_argument('--no-migrate', action='store_true',
                       help='Skip migrating existing files')

    args = parser.parse_args()

    try:
        setup_folder_structure(
            customer_ids=args.customers,
            migrate=not args.no_migrate
        )
    except KeyboardInterrupt:
        print("\n🛑 Setup cancelled by user")
        sys.exit(0)
    except Exception as e:
        print(f"\n❌ Setup failed: {e}")
        sys.exit(1)

if __name__ == "__main__":
    main()