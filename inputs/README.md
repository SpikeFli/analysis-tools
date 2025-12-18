# Organized Inputs Structure

## Client-Specific Input Organization

Place your input files in the appropriate client folder to prevent data mixing:

```
inputs/
├── Northview/
│   ├── service_overview/
│   ├── user_management/
│   └── people_database/
├── Synovus/
│   ├── service_overview/
│   ├── user_management/
│   └── people_database/
├── Gateway/
│   ├── service_overview/
│   ├── user_management/
│   └── people_database/
└── Other/
    ├── service_overview/
    ├── user_management/
    └── people_database/
```

## File Types

### Service Overview Files
Place in: `inputs/[ClientName]/service_overview/`
- Contains service and asset information
- Examples: Service_Overview_202512.csv, Asset_Report.csv

### User Management Files
Place in: `inputs/[ClientName]/user_management/`
- Contains user lists and management data
- Examples: UserList.csv, UserManagement.csv

### People Database Files
Place in: `inputs/[ClientName]/people_database/`
- Contains people database exports (optional)
- Examples: PeopleGeneral.csv, PeopleDatabase.csv
2. **Place Input Files**: Put service overview and user management files in appropriate client folders
3. **Run Analysis**: Use `comprehensive_data_analysis.py` - it will auto-detect client based on available files

## Client Detection Priority

The analysis will scan clients in this order:
1. Northview
2. Synovus
3. Gateway
4. Other

It uses the first client folder that has both:
- Sanitized AD file in `ActiveDirectory_input/[ClientName]/`
- At least one input file (service overview OR user management)
- People database is optional but recommended for complete analysis

## Migration from Old Structure

Old files in `service_overview_input/` and `user_management_input/` should be moved to the appropriate client folders.