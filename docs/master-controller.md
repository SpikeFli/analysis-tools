# Master Controller Guide

## Overview

The `spikefli_master.sh` script serves as the primary interface for all SpikeFli analysis operations. It provides a menu-driven system for executing various data analysis and correction workflows.

## Menu Options

### 1. 🧹 Sanitize Active Directory CSV only
**Purpose**: Clean and standardize Active Directory export files
**Input**: Raw AD CSV files
**Output**: Sanitized CSV files with consistent formatting

**Process**:
- Removes special characters and standardizes phone number formats
- Validates user data integrity
- Creates backup of original files
- Generates sanitized version in `ActiveDirectory_input/{Client}/`

**When to Use**: First step for any new AD data import

### 2. 🔧 Generate SQL updates only
**Purpose**: Create SQL scripts for direct database updates
**Requirements**: Sanitized AD CSV files must exist
**Output**: SQL files in `output/` directory

**Generated Scripts**:
- User status updates (Active/Expired)
- Phone number corrections
- Email address updates
- Department/OU changes

### 3. 📊 Run data analysis only
**Purpose**: Comprehensive cross-reference analysis between AD and SpikeFli database
**Requirements**: All data sources (AD, Service Overview, User Management, People Database)
**Output**: Multiple analysis reports and CSV files

**Analysis Types**:
- **Phone Cross-Reference**: Matches phone numbers between systems
- **Status Mismatches**: Identifies users with conflicting active/expired status
- **Missing Users**: Finds users in one system but not the other
- **Duplicate Detection**: Identifies duplicate user records

**Generated Reports**:
- `SpikeFli_Analysis_Report_*.md` - Comprehensive markdown report
- `should_be_active_*.csv` - Users that should be marked active
- `should_be_expired_*.csv` - Users that should be marked expired
- `phone_cross_reference_*.csv` - Phone number mapping results
- `phone_reassignments_*.csv` - Required phone reassignments
- `worst_case_mismatches_*.csv` - Critical data conflicts

### 4. 🚀 COMPLETE END-TO-END WORKFLOW
**Purpose**: Automated full workflow from sanitization to analysis
**Process**:
1. Sanitizes AD CSV
2. Generates SQL updates
3. Pauses for manual SQL execution
4. Runs comprehensive analysis
5. Generates all reports

**Best For**: Monthly data sync operations

### 5. 🎯 Generate worst case mismatch fixes
**Purpose**: Create SQL fixes for critical data conflicts
**Requirements**: Analysis results must exist
**Output**: SQL scripts for resolving worst-case scenarios

### 6. 🛠️ Fix service statuses
**Purpose**: Mark services as expired or active based on AD status
**Process**: Updates ServiceDetails table status fields

### 7. 📝 Generate expired service fixes
**Purpose**: Mark services as expired when users not found in AD
**Output**: SQL to update service status to expired

### 8. 📞 Generate phone reassignment fixes
**Purpose**: Fix phone numbers assigned to wrong users
**Requirements**: Analysis results showing phone mismatches
**Process**: Updates ServiceDetails to reassign phones to correct users

### 9. 📱 Generate phone assignment fixes
**Purpose**: Create new users and assign phones to them
**Features**:
- Single user test mode (Option 1)
- Full batch processing (Option 2)
- Automatic user creation from AD data
- Safe transaction-based updates

**Process**:
1. Identifies phones assigned to expired users
2. Finds correct active users in AD
3. Creates missing People records
4. Reassigns phones in ServiceDetails
5. Provides verification queries

### 10. 📄 Generate backup scripts
**Purpose**: Create database backup SQL scripts before major changes
**Output**: Backup scripts for critical tables

### 11. 🧹 Sanitize reviewed CSV (EXPIRED/GENERAL USE)
**Purpose**: Process manually reviewed "should be expired" files
**Input**: CSV files with SF Note classifications
**Process**:
- Splits entries by EXPIRED vs GENERAL USE classification
- Generates SQL to mark EXPIRED entries appropriately
- Preserves GENERAL USE entries as active

**Output Files**:
- `EXPIRED_phones_*.csv` - Phones to mark as expired
- `GENERAL_USE_phones_*.csv` - Phones to keep active
- `Mark_EXPIRED_phones_*.sql` - SQL update script

### 12. ❌ Exit
**Purpose**: Clean exit from the application

## Usage Patterns

### New Client Setup
```bash
./spikefli_master.sh
# Choose: 1 (Sanitize AD)
# Choose: 3 (Run Analysis)
# Review generated reports
```

### Monthly Data Sync
```bash
./spikefli_master.sh
# Choose: 4 (Complete End-to-End)
# Execute generated SQL when prompted
# Review final analysis results
```

### Phone Issue Resolution
```bash
./spikefli_master.sh
# Choose: 3 (Run Analysis)
# Choose: 9 (Phone Assignment Fixes)
# Choose: 1 (Single User Test) - for testing
# Choose: 2 (Full Processing) - for production
```

## File Structure Requirements

```
analysis-tools/
├── inputs/
│   └── {ClientName}/
│       ├── ActiveDirectory_input/
│       ├── user_management/
│       ├── people_database/
│       └── Service_Overview_*.csv
├── output/
│   └── {ClientName}/
├── processed/
└── logs/
```

## Environment Setup

### Prerequisites
- Python 3.x with pandas
- Bash shell (macOS/Linux)
- Access to SpikeFli database
- Proper file permissions

### Configuration
The script automatically detects and handles:
- Client names from directory structure
- File naming patterns
- Output directory creation
- Error logging

## Security Considerations

- **Database Credentials**: Never hardcode in scripts
- **File Permissions**: Ensure proper read/write access
- **Backup Strategy**: Always backup before major changes
- **Transaction Safety**: All SQL operations use transactions

## Error Handling

The master controller includes comprehensive error handling:
- **File Missing**: Clear error messages with expected file locations
- **Permission Issues**: Guidance on fixing file permissions
- **Python Errors**: Detailed stack traces for debugging
- **SQL Errors**: Transaction rollback capabilities

## Performance Tips

- **Large Datasets**: Use chunked processing for files >10MB
- **Memory Usage**: Monitor Python memory usage during analysis
- **Database Load**: Schedule heavy operations during off-peak hours
- **File I/O**: Use SSD storage for better performance

## Integration Points

The master controller integrates with:
- **SSMS/SQL Server**: For executing generated SQL
- **Excel/CSV Tools**: For manual data review
- **Version Control**: Git integration for tracking changes
- **Logging Systems**: Structured log output

---

**Last Updated**: December 18, 2025