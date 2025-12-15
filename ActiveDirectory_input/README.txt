README - Place your Active Directory CSV files here

The analysis tool will automatically use the most recently modified CSV file from this directory.

Expected columns in Active Directory files:
- cn (Common Name)
- DisplayName (Full name)
- UserPrincipalName (Email)
- telephoneNumber (Primary phone)
- mobile (Mobile phone)
- Enabled (Account status)
- AccountExpires (Expiration date)

Example filenames:
- Northview_ActiveDirectory_20251213.csv
- AD_Export_Dec13.csv
- active_directory_latest.csv

The tool supports any CSV filename - it will find the newest file automatically.