#!/usr/bin/env python3
"""
SpikeFli Client-Specific AD Sanitizer Router

Routes to the appropriate Active Directory sanitizer based on client:
- Northview: sanitize_ad_csv.py
- Synovus/Cenovus: sanitize_synovus_ad.py

Now supports organized folder structure:
ActiveDirectory_input/
├── Northview/
├── Synovus/
├── Gateway/
└── Other/
"""

import os
import sys
import glob
import pandas as pd
from datetime import datetime
from pathlib import Path

def detect_client_from_filename(filename):
    """Detect client from filename patterns"""
    name = filename.lower()

    if any(pattern in name for pattern in ['cenovus', 'synovus']):
        return 'synovus'
    elif any(pattern in name for pattern in ['northview']):
        return 'northview'

    return 'unknown'

def detect_client_from_content(filepath):
    """Detect client from file content/columns"""
    try:
        df = pd.read_csv(filepath, nrows=0)  # Just read headers
        columns = [col.lower() for col in df.columns]

        # Synovus indicators
        synovus_indicators = ['personstatus', 'tele', 'userid', 'cost center', 'managerdn']
        synovus_matches = sum(1 for ind in synovus_indicators if ind in columns)

        # Northview indicators
        northview_indicators = ['displayname', 'enabled', 'telephonenumber']
        northview_matches = sum(1 for ind in northview_indicators if ind in columns)

        if synovus_matches >= 4:
            return 'synovus'
        elif northview_matches >= 3:
            return 'northview'

    except Exception as e:
        print(f"⚠️  Could not analyze file content: {e}")

    return 'unknown'

def find_ad_files():
    """Find all AD files in client-specific input directories"""
    base_input_dir = "ActiveDirectory_input"
    if not os.path.exists(base_input_dir):
        return []

    files = []
    client_folders = ['Northview', 'Synovus', 'Gateway', 'Other']

    # Check client-specific folders first
    for client_folder in client_folders:
        client_dir = os.path.join(base_input_dir, client_folder)
        if os.path.exists(client_dir):
            patterns = ["*.csv", "*.CSV"]
            for pattern in patterns:
                client_files = glob.glob(os.path.join(client_dir, pattern))
                # Exclude already sanitized files
                client_files = [f for f in client_files if not f.endswith('_SANITIZED.csv')]
                files.extend([(f, client_folder) for f in client_files])

    # Also check root input directory for backward compatibility
    patterns = ["*.csv", "*.CSV"]
    root_files = glob.glob(os.path.join(base_input_dir, pattern))
    root_files = [f for f in root_files if not f.endswith('_SANITIZED.csv')]
    files.extend([(f, 'root') for f in root_files])
    return files

def main():
    """Interactive router to appropriate sanitizer"""
    print("🚀 SPIKEFLI AD SANITIZER ROUTER")
    print("=" * 50)
    print()

    # Find available files
    ad_files = find_ad_files()

    if not ad_files:
        print("❌ No CSV files found in ActiveDirectory_input/")
        print("   Please place your AD export files in the ActiveDirectory_input/ folder")
        return

    print("📂 Available AD files:")
    for i, (file_path, client_folder) in enumerate(ad_files, 1):
        filename = os.path.basename(file_path)
        client_hint = detect_client_from_filename(filename) if client_folder == 'root' else client_folder.lower()
        folder_info = f"📁 {client_folder}" if client_folder != 'root' else "📁 root"
        print(f"   {i}. {filename} ({client_hint}) - {folder_info}")

    # File selection
    if len(ad_files) == 1:
        selected_file, selected_folder = ad_files[0]
        print(f"\n✅ Auto-selected: {os.path.basename(selected_file)} from {selected_folder}")
    else:
        try:
            choice = int(input(f"\nSelect file (1-{len(ad_files)}): ")) - 1
            selected_file, selected_folder = ad_files[choice]
        except (ValueError, IndexError):
            print("❌ Invalid selection")
            return

    print()
    print("🔍 ANALYZING FILE...")
    print(f"📁 File: {os.path.basename(selected_file)}")
    print(f"📂 Folder: {selected_folder}")

    # Detect client (prioritize folder name if not root)
    if selected_folder != 'root':
        detected_client = selected_folder.lower()
        print(f"🎯 Using folder-based detection: {detected_client.upper()}")
    else:
        client_from_name = detect_client_from_filename(selected_file)
        client_from_content = detect_client_from_content(selected_file)

        # Determine final client
        if client_from_content != 'unknown':
            detected_client = client_from_content
            print(f"🎯 Detected from content: {detected_client.upper()}")
        elif client_from_name != 'unknown':
            detected_client = client_from_name
            print(f"🎯 Detected from filename: {detected_client.upper()}")
        else:
            print("⚠️  Could not auto-detect client type")
            print("   1. Northview")
            print("   2. Synovus/Cenovus")
            try:
                choice = int(input("Manual selection (1-2): "))
                detected_client = 'northview' if choice == 1 else 'synovus'
            except ValueError:
                print("❌ Invalid selection")
                return

    # Route to appropriate sanitizer
    print()
    print(f"🚀 ROUTING TO {detected_client.upper()} SANITIZER...")
    print("=" * 50)

    if detected_client == 'synovus':
        # Import and run Synovus sanitizer
        try:
            from sanitize_synovus_ad import sanitize_synovus_ad
            success = sanitize_synovus_ad(selected_file)
        except ImportError as e:
            print(f"❌ Could not import Synovus sanitizer: {e}")
            print("   Make sure sanitize_synovus_ad.py exists")
            return
    else:  # northview or fallback
        # Import and run Northview sanitizer
        try:
            from sanitize_ad_csv import process_ad_file
            success = process_ad_file(selected_file)
        except ImportError as e:
            print(f"❌ Could not import Northview sanitizer: {e}")
            print("   Make sure sanitize_ad_csv.py exists")
            return

    print()
    if success:
        print("🎉 SANITIZATION COMPLETED SUCCESSFULLY!")
        print("   The sanitized file is ready for analysis")
    else:
        print("❌ SANITIZATION FAILED!")
        print("   Check the error messages above")

if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        print("\n🛑 Operation cancelled by user")
    except Exception as e:
        print(f"\n❌ Unexpected error: {e}")