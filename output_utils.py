#!/usr/bin/env python3
"""
SpikeFli Output Path Utilities

Shared utilities for determining correct output paths based on
customer ID and file type (reports, data, sql).
"""

import os
from pathlib import Path

def get_customer_output_path(customer_id, file_type, filename):
    """
    Get the organized output path for a file

    Args:
        customer_id: Customer ID (e.g., '096', '057')
        file_type: Type of file ('reports', 'data', 'sql')
        filename: The actual filename

    Returns:
        Full path where the file should be saved
    """
    if not customer_id:
        # Fallback to root output for backward compatibility
        return os.path.join("output", filename)

    # Create customer-specific organized path
    customer_folder = f"0000000{customer_id}" if len(customer_id) == 3 else customer_id
    output_dir = Path("output") / customer_folder / file_type

    # Ensure directory exists
    output_dir.mkdir(parents=True, exist_ok=True)

    return str(output_dir / filename)

def get_sanitized_output_path(input_file_path, client_type=None):
    """
    Get the correct output path for a sanitized AD file

    Args:
        input_file_path: Path to the original input file
        client_type: Type of client (northview, synovus, etc.)

    Returns:
        Full path where the sanitized file should be saved
    """
    base_name = os.path.splitext(os.path.basename(input_file_path))[0]
    safe_base_name = base_name.replace(' ', '_')
    sanitized_filename = f"{safe_base_name}_SANITIZED.csv"

    # Try to detect customer ID from filename or path
    customer_id = extract_customer_id_from_path(input_file_path)

    if customer_id:
        # Use organized structure
        return get_customer_output_path(customer_id, 'data', sanitized_filename)
    else:
        # Fallback - save in same directory as input
        return os.path.join(os.path.dirname(input_file_path), sanitized_filename)

def extract_customer_id_from_path(file_path):
    """
    Extract customer ID from file path or filename

    Common patterns:
    - 096 (3 digits)
    - 0000000096 (full format)
    - Northview_096_AD.csv
    """
    import re

    path_str = str(file_path)

    # Look for full customer IDs first (more specific)
    match = re.search(r'0000000(\d{3})', path_str)
    if match:
        return match.group(1)

    # Look for standalone 3-digit customer IDs with underscores or in filenames
    match = re.search(r'(?:_|/)(\d{3})(?:_|\.)', path_str)
    if match:
        return match.group(1)

    # Look for 3-digit numbers that could be customer IDs (less restrictive)
    matches = re.findall(r'(\d{3})', path_str)
    if matches:
        # Return the first 3-digit number found
        return matches[0]

    return None

if __name__ == "__main__":
    # Test the functions
    test_path = "ActiveDirectory_input/Northview/Northview_096_AD_20251216.csv"
    customer_id = extract_customer_id_from_path(test_path)
    print(f"Extracted customer ID: {customer_id}")

    if customer_id:
        output_path = get_sanitized_output_path(test_path)
        print(f"Output path: {output_path}")