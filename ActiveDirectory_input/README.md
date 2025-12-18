# Active Directory Input Structure

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
