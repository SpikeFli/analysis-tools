# Database Schema Documentation

## Overview

SpikeFli uses a customer-specific database schema where each client has their own set of tables prefixed with their customer ID. This document outlines the core table structures and relationships.

## Customer ID Pattern

All table names follow the pattern: `C_{customer_id}_{table_name}`

Examples:
- Customer ID `0000000104` (Synovus): `C_0000000104_People`
- Customer ID `0000000096` (Northview): `C_0000000096_ServiceDetails`

## Core Tables

### C_{customer_id}_People

**Purpose**: Central user repository linking Active Directory users to SpikeFli system

| Column | Type | Description | Example |
|--------|------|-------------|---------|
| `id` | int, PK, identity | Primary key | 12345 |
| `status` | varchar(50) | User status | 'Active', 'Expired' |
| `isPerson` | bit | Human vs system account flag | 1 |
| `lastdate` | varchar(10) | Last activity date | '202512' |
| `userid` | varchar(100) | AD user ID or system ID | 'JDOE1', 'nan' |
| `username` | varchar(100) | Display name | 'John Doe' |
| `email` | varchar(255) | Email address | 'john.doe@company.com' |
| `phone1` | varchar(20) | Primary phone | '4031234567' |
| `phone2` | varchar(20) | Secondary phone | '4037654321' |
| `OU` | varchar(500) | Organizational Unit | 'IT Department' |
| `isMgr` | bit | Manager flag | 0 |
| `isExec` | bit | Executive flag | 0 |
| `mgrlevel` | varchar(50) | Management level | 'Senior Manager' |
| `mgr` | varchar(255) | Manager name | 'Jane Smith' |
| `LinkType` | varchar(10) | Record source | 'AD', 'Manual' |
| `TS` | datetime | Timestamp | GETDATE() |
| `Modified` | varchar(10) | Modification date | '202512' |

**Key Indexes**:
- `username` (for user lookups)
- `email` (for email searches)
- `status` (for active/expired filtering)

### C_{customer_id}_ServiceDetails

**Purpose**: Phone service assignments and billing details

| Column | Type | Description | Example |
|--------|------|-------------|---------|
| `id` | int, PK, identity | Primary key | 98765 |
| `AssetID` | varchar(50) | Phone number/asset ID | '4031234567' |
| `DateRef` | varchar(10) | Billing period | '202512' |
| `Username` | varchar(100) | Assigned user name | 'John Doe' |
| `UserRef` | int | FK to People.id | 12345 |
| `UserRef_Type` | varchar(50) | Assignment type | 'AD Fix', 'Manual' |
| `Status` | varchar(20) | Service status | 'Active', 'Expired' |
| `ServiceType` | varchar(100) | Type of service | 'Mobile', 'Landline' |
| `Cost` | decimal(10,2) | Monthly cost | 45.99 |
| `Carrier` | varchar(100) | Service provider | 'Verizon', 'Bell' |

**Key Indexes**:
- `AssetID, DateRef` (composite for phone/month lookups)
- `UserRef` (for user service queries)
- `DateRef` (for period-based reporting)

**Key Relationships**:
- `UserRef` → `C_{customer_id}_People.id`

### UserManagement Tables

**Purpose**: System-level user management (spans all customers)

#### UserList
| Column | Type | Description |
|--------|------|-------------|
| `UserID` | int, PK | System user ID |
| `Username` | varchar(255) | System username |
| `Status` | varchar(50) | Account status |
| `CustomerID` | varchar(20) | Associated customer |
| `LinkType` | varchar(10) | Source system |

## Data Flow Architecture

```
Active Directory Export
         ↓
  Sanitization Process
         ↓
   People Table Updates
         ↓
ServiceDetails Assignment
         ↓
   Cross-Reference Analysis
```

## Common Query Patterns

### Find User's Current Services
```sql
SELECT sd.AssetID, sd.Username, sd.DateRef, sd.Cost
FROM C_0000000104_ServiceDetails sd
INNER JOIN C_0000000104_People p ON sd.UserRef = p.id
WHERE p.username = 'John Doe'
  AND sd.DateRef = '202512'
  AND sd.Status = 'Active';
```

### Phone Assignment History
```sql
SELECT AssetID, Username, DateRef, UserRef_Type
FROM C_0000000104_ServiceDetails
WHERE AssetID = '4031234567'
ORDER BY DateRef DESC;
```

### Active Users Without Phone Services
```sql
SELECT p.username, p.email, p.status
FROM C_0000000104_People p
LEFT JOIN C_0000000104_ServiceDetails sd ON p.id = sd.UserRef
    AND sd.DateRef = '202512'
    AND sd.Status = 'Active'
WHERE p.status = 'Active'
  AND sd.UserRef IS NULL;
```

### Duplicate Phone Assignments
```sql
SELECT AssetID, COUNT(*) as assignment_count
FROM C_0000000104_ServiceDetails
WHERE DateRef = '202512'
  AND Status = 'Active'
GROUP BY AssetID
HAVING COUNT(*) > 1;
```

## Data Integrity Rules

### People Table
- **username must be unique per customer**
- **email should be unique when not null**
- **status must be 'Active' or 'Expired'**
- **LinkType indicates data source reliability**

### ServiceDetails Table
- **AssetID + DateRef should be unique per assignment**
- **UserRef must exist in People table**
- **DateRef format: YYYYMM**
- **Status must match user's active/expired state**

## Historical Data Preservation

The system maintains historical data integrity:

- **Never delete old ServiceDetails records**
- **Status changes preserve audit trail**
- **DateRef allows point-in-time analysis**
- **UserRef_Type tracks change source**

## Performance Considerations

### Indexing Strategy
```sql
-- Critical indexes for performance
CREATE INDEX IX_ServiceDetails_AssetDate ON C_0000000104_ServiceDetails (AssetID, DateRef);
CREATE INDEX IX_ServiceDetails_User ON C_0000000104_ServiceDetails (UserRef);
CREATE INDEX IX_ServiceDetails_Date ON C_0000000104_ServiceDetails (DateRef);
CREATE INDEX IX_People_Username ON C_0000000104_People (username);
CREATE INDEX IX_People_Status ON C_0000000104_People (status);
```

### Query Optimization
- **Always include DateRef in ServiceDetails queries**
- **Use UserRef for joins instead of username**
- **Limit historical queries with date ranges**
- **Use EXISTS instead of IN for large datasets**

## Backup and Recovery

### Critical Tables
1. **C_{customer_id}_People** - Core user data
2. **C_{customer_id}_ServiceDetails** - Service assignments
3. **UserList** - System-wide user management

### Backup Schedule
- **Daily**: Transaction log backups
- **Weekly**: Full database backup
- **Monthly**: Archive to long-term storage

### Recovery Points
- **Before bulk updates**: Full table backup
- **After major changes**: Verification queries
- **Emergency rollback**: Transaction log restore

---

**Last Updated**: December 18, 2025
**Schema Version**: 2.1