# Phone Assignment Fix Workflow

## Overview

This workflow addresses phone number assignment issues where phones are assigned to expired users but belong to active employees in Active Directory. This is one of the most common and critical data integrity issues.

## Problem Description

### Root Cause
When employees leave the company:
1. **Active Directory** gets updated with new phone assignments
2. **SpikeFli database** doesn't get updated automatically
3. **ServiceDetails** still shows expired users as phone owners
4. **Billing and reporting** become inaccurate

### Symptoms
- Phones assigned to "ghost" users (expired employees)
- Active employees not showing phone assignments
- Incorrect cost center billing
- Missing users in People table

## Solution Workflow

### Phase 1: Detection and Analysis

#### Step 1: Run Comprehensive Analysis
```bash
./spikefli_master.sh
# Choose: 3 (Run data analysis only)
# Select your client (e.g., Synovus)
```

#### Step 2: Review Analysis Results
Check generated files:
- `should_be_active_*.csv` - Cases requiring phone reassignment
- `worst_case_mismatches_*.csv` - Critical issues needing new user creation

#### Step 3: Identify Issue Types
The analysis categorizes issues:

| Issue Type | Description | Action Required |
|------------|-------------|-----------------|
| **Phone Reassignment** | User exists, needs phone transfer | Update ServiceDetails only |
| **Missing User** | User doesn't exist in People table | CREATE user + UPDATE ServiceDetails |
| **Expired Status** | User exists but marked expired | Update status + reassign phone |

### Phase 2: Testing and Validation

#### Step 4: Single User Test
```bash
./spikefli_master.sh
# Choose: 9 (Generate phone assignment fixes)
# Choose: 1 (Single user test SQL)
# Select a user to test (e.g., Riley Weinrauch)
```

**Test Process:**
1. **Run the generated test SQL** (without COMMIT)
2. **Review verification results**:
   - user_exists: 0 or 1
   - phone_updates: Number of ServiceDetails records updated
3. **If results look good**: COMMIT
4. **If results are wrong**: ROLLBACK

#### Step 5: Verification Queries
```sql
-- Check if user was created
SELECT * FROM C_0000000104_People
WHERE username = 'Riley Weinrauch';

-- Check phone reassignment
SELECT AssetID, Username, UserRef_Type, DateRef
FROM C_0000000104_ServiceDetails
WHERE AssetID = '3068204057'
  AND DateRef IN ('202512', '202511');
```

### Phase 3: Production Implementation

#### Step 6: Generate Full Fix Script
```bash
./spikefli_master.sh
# Choose: 9 (Generate phone assignment fixes)
# Choose: 2 (Generate full phone assignment fix SQL)
```

#### Step 7: Review Generated SQL
The script creates comprehensive fixes:

**User Creation Section:**
```sql
-- Insert Riley Weinrauch ONLY if they don't already exist
IF NOT EXISTS (SELECT 1 FROM C_0000000104_People WHERE username = 'Riley Weinrauch')
BEGIN
    INSERT INTO C_0000000104_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active', 1, '202511', 'nan', 'Riley Weinrauch',
        'Riley.Weinrauch@cenovus.com', '3068204057', '',
        'SCM Lloyd Procurement', 0, 0, 'nan', 'Reist, Ryan M.',
        'AD', GETDATE(), '202511'
    );
END
```

**Phone Reassignment Section:**
```sql
-- Reassign phone 3068204057: Jodi Kossey → Riley Weinrauch
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000104_ServiceDetails sd
INNER JOIN C_0000000104_People p ON p.username = 'Riley Weinrauch'
WHERE sd.AssetID = '3068204057'
  AND sd.DateRef IN ('202512', '202511');
```

#### Step 8: Execute Production Script
1. **Open SSMS** and connect to SpikeFli database
2. **Copy and paste** the entire generated SQL
3. **Execute the script** (includes BEGIN TRANSACTION)
4. **Review the results**:
   ```
   Starting phone assignment fixes...
   Inserted new user: Riley Weinrauch
   Inserted new user: Syed Wajath Ali
   User already exists: ShiRong Ye - will update phone assignments only
   (2 rows affected) -- Phone updates for Dec 2025
   (2 rows affected) -- Phone updates for Nov 2025
   ```
5. **If results are correct**: Run `COMMIT;`
6. **If something is wrong**: Run `ROLLBACK;`

### Phase 4: Validation and Verification

#### Step 9: Post-Implementation Verification
```sql
-- Count new users created
SELECT COUNT(*) as new_users_created
FROM C_0000000104_People
WHERE LinkType = 'AD' AND Modified = '202511';

-- Check phone reassignments
SELECT AssetID, Username, UserRef_Type, DateRef
FROM C_0000000104_ServiceDetails
WHERE UserRef_Type = 'AD Fix'
ORDER BY AssetID, DateRef;
```

#### Step 10: Re-run Analysis
```bash
./spikefli_master.sh
# Choose: 3 (Run data analysis only)
```

**Expected Results:**
- `should_be_active_*.csv` should show fewer or zero issues
- `worst_case_mismatches_*.csv` should be reduced
- Phone cross-reference analysis should show improved matches

## Common Scenarios

### Scenario 1: Simple Phone Reassignment
**Situation**: John Doe left, phone 4031234567 goes to Jane Smith
**Both users exist in People table**

**Solution**:
```sql
UPDATE ServiceDetails
SET UserRef = (SELECT id FROM People WHERE username = 'Jane Smith'),
    Username = 'Jane Smith',
    UserRef_Type = 'AD Fix'
WHERE AssetID = '4031234567';
```

### Scenario 2: New User Creation + Phone Assignment
**Situation**: Phone assigned to expired user, new user not in People table

**Solution**:
1. **INSERT new user** from AD data
2. **UPDATE ServiceDetails** to assign phone to new user

### Scenario 3: Multiple Phone Reassignments
**Situation**: Employee left with multiple phones (mobile + desk phone)

**Solution**: Script handles multiple AssetIDs per user automatically

## Best Practices

### Pre-Execution Checklist
- [ ] **Backup database** before major changes
- [ ] **Test with single user** first
- [ ] **Verify AD data** is current and accurate
- [ ] **Review generated SQL** for accuracy
- [ ] **Check customer ID** is correct

### During Execution
- [ ] **Use transactions** (BEGIN/COMMIT/ROLLBACK)
- [ ] **Monitor execution time** for large batches
- [ ] **Review PRINT statements** in Messages tab
- [ ] **Verify row counts** match expectations

### Post-Execution
- [ ] **Run verification queries**
- [ ] **Re-run analysis** to confirm fixes
- [ ] **Update documentation** with changes made
- [ ] **Notify stakeholders** of completed fixes

## Troubleshooting

### Common Issues

#### Phone Still Shows Old User
**Cause**: UserRef not updated properly
**Solution**: Check if People record exists for new user

#### Multiple Users Assigned Same Phone
**Cause**: Script ran multiple times without checking existing assignments
**Solution**: Add WHERE clauses to prevent duplicate assignments

#### New User Not Created
**Cause**: Missing AD data or validation errors
**Solution**: Check AD CSV for user data completeness

### Error Messages

| Error | Cause | Solution |
|-------|-------|----------|
| "User already exists" | Expected behavior | Normal - will update phone only |
| "(0 rows affected)" | No matching records | Check phone number format and DateRef |
| "Foreign key constraint" | Invalid UserRef | Verify People record exists |

## Performance Considerations

### Large Datasets (>1000 phones)
- **Batch processing**: Split into smaller chunks
- **Index optimization**: Ensure proper indexes exist
- **Transaction size**: Consider breaking into multiple transactions

### Peak Hours
- **Schedule during off-peak**: Minimize impact on production
- **Lock monitoring**: Watch for blocking queries
- **Backup timing**: Ensure backups don't conflict

---

**Last Updated**: December 18, 2025
**Workflow Version**: 2.0