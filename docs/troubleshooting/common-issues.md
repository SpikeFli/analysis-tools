# Common Issues and Solutions

## File and Path Issues

### ❌ "No such file or directory"

**Symptoms**:
```
FileNotFoundError: [Errno 2] No such file or directory: 'inputs/Synovus/ActiveDirectory_input/CenvusAD_SANITIZED.csv'
```

**Causes**:
- File hasn't been placed in expected location
- Filename doesn't match expected pattern
- Directory structure is incorrect

**Solutions**:
1. **Check file location**:
   ```bash
   ls -la inputs/Synovus/ActiveDirectory_input/
   ```

2. **Verify filename pattern**:
   - Expected: `*_SANITIZED.csv` or raw AD export
   - Actual: Check what files exist

3. **Create missing directories**:
   ```bash
   mkdir -p inputs/Synovus/ActiveDirectory_input
   mkdir -p inputs/Synovus/user_management
   mkdir -p inputs/Synovus/people_database
   ```

4. **Copy files to correct location**:
   ```bash
   cp /path/to/your/ad_export.csv inputs/Synovus/ActiveDirectory_input/
   ```

### ❌ "Permission denied"

**Symptoms**:
```
PermissionError: [Errno 13] Permission denied: 'output/analysis_report.csv'
```

**Solutions**:
1. **Fix file permissions**:
   ```bash
   chmod 755 analysis-tools/
   chmod 644 inputs/**/*
   chmod 755 output/
   ```

2. **Check file ownership**:
   ```bash
   ls -la inputs/Synovus/
   chown -R $USER:$USER analysis-tools/
   ```

## Python and Script Errors

### ❌ "ModuleNotFoundError: No module named 'pandas'"

**Symptoms**:
```
ModuleNotFoundError: No module named 'pandas'
```

**Solutions**:
1. **Install required packages**:
   ```bash
   pip3 install pandas numpy
   ```

2. **Check Python version**:
   ```bash
   python3 --version  # Should be 3.6+
   ```

3. **Use virtual environment**:
   ```bash
   python3 -m venv venv
   source venv/bin/activate
   pip install -r requirements.txt
   ```

### ❌ "SyntaxError: unexpected character after line continuation"

**Symptoms**:
```
SyntaxError: unexpected character after line continuation character
```

**Causes**:
- String formatting issues in SQL generation
- Incorrect escape sequences

**Solutions**:
1. **Check string escaping**:
   ```python
   # ❌ Wrong
   f"'{user.replace("'", "''")}'"

   # ✅ Correct
   escaped_user = user.replace("'", "''")
   f"'{escaped_user}'"
   ```

2. **Validate Python syntax**:
   ```bash
   python3 -m py_compile script_name.py
   ```

### ❌ "DtypeWarning: Columns have mixed types"

**Symptoms**:
```
DtypeWarning: Columns (14) have mixed types. Specify dtype option on import or set low_memory=False.
```

**Solutions**:
1. **Suppress warning** (if data is correct):
   ```python
   pd.read_csv(file, low_memory=False)
   ```

2. **Specify data types**:
   ```python
   dtype_dict = {'phone1': 'str', 'phone2': 'str', 'userid': 'str'}
   pd.read_csv(file, dtype=dtype_dict)
   ```

## Database and SQL Issues

### ❌ "Invalid object name 'C_0000000104_People'"

**Symptoms**:
```
Msg 208, Level 16, State 1: Invalid object name 'C_0000000104_People'
```

**Causes**:
- Wrong customer ID
- Table doesn't exist
- Wrong database connection

**Solutions**:
1. **Verify customer ID**:
   ```sql
   -- List all People tables
   SELECT name FROM sys.tables WHERE name LIKE 'C_%_People';
   ```

2. **Check table existence**:
   ```sql
   SELECT COUNT(*) FROM INFORMATION_SCHEMA.TABLES
   WHERE TABLE_NAME = 'C_0000000104_People';
   ```

3. **Verify database connection**:
   - Ensure connected to correct SpikeFli database
   - Check user permissions

### ❌ "String or binary data would be truncated"

**Symptoms**:
```
Msg 8152: String or binary data would be truncated
```

**Causes**:
- Data too long for column
- Unexpected characters in data

**Solutions**:
1. **Check column lengths**:
   ```sql
   SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH
   FROM INFORMATION_SCHEMA.COLUMNS
   WHERE TABLE_NAME = 'C_0000000104_People';
   ```

2. **Truncate data in script**:
   ```python
   username = str(row['username'])[:100]  # Limit to 100 chars
   ```

3. **Clean data before insert**:
   ```python
   username = username.replace('\n', '').replace('\r', '').strip()
   ```

### ❌ "Transaction count mismatch"

**Symptoms**:
```
The transaction count after EXECUTE indicates a mismatching number of BEGIN and COMMIT statements
```

**Causes**:
- Unmatched BEGIN/COMMIT statements
- Error handling interrupting transaction

**Solutions**:
1. **Always use proper transaction structure**:
   ```sql
   BEGIN TRANSACTION;
   -- Your operations here
   IF @@ERROR = 0
       COMMIT;
   ELSE
       ROLLBACK;
   ```

2. **Check for existing transactions**:
   ```sql
   SELECT @@TRANCOUNT;  -- Should be 0 when starting
   ```

## Data Analysis Issues

### ❌ "No phone assignment issues found"

**Symptoms**:
Analysis runs but finds no issues to fix

**Causes**:
- Data is already synchronized
- Phone numbers formatted differently between systems
- DateRef filters excluding data

**Solutions**:
1. **Check phone number formats**:
   ```python
   # Verify phone cleaning is consistent
   print(f"AD phone: {ad_phone}")
   print(f"Service phone: {service_phone}")
   ```

2. **Verify DateRef values**:
   ```sql
   SELECT DISTINCT DateRef FROM C_0000000104_ServiceDetails
   ORDER BY DateRef DESC;
   ```

3. **Manual verification query**:
   ```sql
   SELECT TOP 10 AssetID, Username
   FROM C_0000000104_ServiceDetails
   WHERE DateRef = '202512';
   ```

### ❌ "Cross-reference analysis found no matches"

**Symptoms**:
No phone numbers match between AD and ServiceDetails

**Causes**:
- Phone number formatting inconsistencies
- Different phone number sources (mobile vs desk)
- Incomplete AD data

**Solutions**:
1. **Check phone number cleaning logic**:
   ```python
   def clean_phone(phone):
       if pd.isna(phone):
           return ''
       return str(phone).replace('-', '').replace('(', '').replace(')', '').replace(' ', '').strip()
   ```

2. **Verify AD phone fields**:
   ```python
   # Check which fields contain phone numbers
   ad_df[['mobile', 'telephoneNumber', 'phone1', 'phone2']].head()
   ```

## Performance Issues

### ❌ "Script takes too long to run"

**Symptoms**:
Analysis hangs or takes >30 minutes

**Causes**:
- Large datasets (>50k records)
- Inefficient pandas operations
- Memory constraints

**Solutions**:
1. **Use chunked processing**:
   ```python
   chunksize = 1000
   for chunk in pd.read_csv(file, chunksize=chunksize):
       process_chunk(chunk)
   ```

2. **Optimize memory usage**:
   ```python
   # Use categorical data for repeated strings
   df['status'] = df['status'].astype('category')
   ```

3. **Add progress indicators**:
   ```python
   from tqdm import tqdm
   for i, row in tqdm(df.iterrows(), total=len(df)):
       process_row(row)
   ```

### ❌ "Memory error during analysis"

**Symptoms**:
```
MemoryError: Unable to allocate array
```

**Solutions**:
1. **Reduce dataset size**:
   ```python
   # Process by date ranges
   df_current = df[df['DateRef'] == '202512']
   ```

2. **Use more efficient data types**:
   ```python
   df['phone'] = df['phone'].astype('string')  # Instead of object
   ```

3. **Clear unused variables**:
   ```python
   del large_dataframe
   import gc
   gc.collect()
   ```

## Email and Communication Issues

### ❌ "Invalid email addresses in AD data"

**Symptoms**:
SQL fails due to malformed email addresses

**Solutions**:
1. **Validate email format**:
   ```python
   import re
   email_pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'
   valid_email = re.match(email_pattern, email_address) is not None
   ```

2. **Clean email data**:
   ```python
   def clean_email(email):
       if pd.isna(email):
           return ''
       email = str(email).strip().lower()
       return email if '@' in email else ''
   ```

## File Format Issues

### ❌ "CSV encoding errors"

**Symptoms**:
```
UnicodeDecodeError: 'utf-8' codec can't decode byte
```

**Solutions**:
1. **Try different encodings**:
   ```python
   # Try common encodings
   encodings = ['utf-8', 'latin1', 'cp1252', 'iso-8859-1']
   for encoding in encodings:
       try:
           df = pd.read_csv(file, encoding=encoding)
           break
       except UnicodeDecodeError:
           continue
   ```

2. **Use encoding detection**:
   ```python
   import chardet
   with open(file, 'rb') as f:
       result = chardet.detect(f.read())
       encoding = result['encoding']
   df = pd.read_csv(file, encoding=encoding)
   ```

### ❌ "CSV delimiter issues"

**Symptoms**:
All data appears in single column

**Solutions**:
1. **Detect delimiter**:
   ```python
   with open(file, 'r') as f:
       first_line = f.readline()
       if '\t' in first_line:
           delimiter = '\t'
       elif ';' in first_line:
           delimiter = ';'
       else:
           delimiter = ','
   ```

2. **Use CSV sniffer**:
   ```python
   import csv
   with open(file, 'r') as f:
       dialect = csv.Sniffer().sniff(f.read(1024))
       f.seek(0)
       df = pd.read_csv(f, dialect=dialect)
   ```

---

**Last Updated**: December 18, 2025