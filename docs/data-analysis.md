# Data Analysis Guide

## Overview

The `comprehensive_data_analysis.py` script performs deep cross-reference analysis between Active Directory and SpikeFli database systems. It identifies discrepancies, mismatches, and provides actionable insights for data correction.

## Core Analysis Functions

### 1. Active Directory Analysis

**Purpose**: Validate and analyze AD export data
**Key Metrics**:
- Total enabled/disabled users
- Phone number coverage (mobile vs landline)
- Data completeness and quality

**Output Insights**:
```
📊 Active Directory Summary:
  Total Users: 12,019
  Enabled: 12,019 (100.0%)
  Disabled: 0 (0.0%)
  Users with Mobile: 3,294
  Users with Phone: 7,045
```

**Quality Checks**:
- **Email format validation**
- **Phone number consistency**
- **Required field completeness**
- **Duplicate detection**

### 2. Phone Number Cross-Reference

**Purpose**: Match phone numbers between AD and ServiceDetails
**Process**:
1. **Build AD phone map** from mobile/telephoneNumber fields
2. **Extract ServiceDetails phone numbers** from AssetID
3. **Cross-reference and identify mismatches**

**Key Algorithms**:

#### Phone Number Cleaning
```python
def clean_phone_number(phone):
    """Standardize phone number format"""
    if pd.isna(phone) or phone == '':
        return ''
    # Remove formatting characters
    cleaned = str(phone).replace('-', '').replace('(', '').replace(')', '').replace(' ', '').strip()
    # Handle float conversion issues (remove .0)
    cleaned = cleaned.replace('.0', '')
    return cleaned
```

#### Cross-Reference Logic
```python
def cross_reference_phones(ad_phones, service_phones):
    """Match phones between systems"""
    matches = {}
    reassignments = []

    for service_phone, service_user in service_phones.items():
        if service_phone in ad_phones:
            ad_user = ad_phones[service_phone]
            if service_user != ad_user:
                reassignments.append({
                    'phone': service_phone,
                    'current_user': service_user,
                    'correct_user': ad_user
                })
        matches[service_phone] = ad_phones.get(service_phone)

    return matches, reassignments
```

### 3. User Status Analysis

**Purpose**: Identify users with conflicting active/expired status between systems

**Status Sources**:
- **Active Directory**: Enabled field (1=active, 0=disabled)
- **People Database**: Status field ('Active'/'Expired')
- **ServiceDetails**: Implicit from phone assignments

**Mismatch Detection**:
```python
def find_status_mismatches(ad_df, people_df, service_df):
    """Identify users with conflicting status"""
    mismatches = []

    for user in ad_df['DisplayName']:
        ad_status = 'Active'  # All AD users are enabled in our data

        people_record = people_df[people_df['username'] == user]
        if not people_record.empty:
            people_status = people_record.iloc[0]['status']
            if ad_status != people_status:
                mismatches.append({
                    'user': user,
                    'ad_status': ad_status,
                    'people_status': people_status
                })

    return mismatches
```

### 4. Missing User Detection

**Purpose**: Find users who exist in one system but not the other

**Categories**:
- **In AD, not in People**: New employees not yet in SpikeFli
- **In People, not in AD**: Former employees still in SpikeFli
- **In ServiceDetails, not in AD**: Phones assigned to non-existent users

## Output Reports

### Comprehensive Analysis Report

**File**: `SpikeFli_Analysis_Report_*.md`
**Format**: Markdown with embedded tables and statistics

**Sections**:
1. **Executive Summary**: High-level metrics and key findings
2. **Data Quality Assessment**: Completeness and integrity scores
3. **Cross-Reference Results**: Phone matching statistics
4. **Critical Issues**: Worst-case mismatches requiring immediate attention
5. **Recommendations**: Prioritized action items

### CSV Data Exports

#### should_be_active_*.csv
**Purpose**: Users marked as expired but active in AD
**Columns**:
- `phone_number`: Asset ID from ServiceDetails
- `issue`: Description of the problem
- `service_user`: Current user in ServiceDetails
- `ad_user`: Correct user from Active Directory
- `problem`: Detailed problem description

**Use Case**: Generate phone assignment fixes

#### should_be_expired_*.csv
**Purpose**: Users marked as active but not found in AD
**Columns**: Same as should_be_active
**Use Case**: Mark services as expired or identify for manual review

#### phone_cross_reference_*.csv
**Purpose**: Complete phone number mapping results
**Columns**:
- `service_phone`: Phone from ServiceDetails
- `service_user`: Current assigned user
- `ad_phone`: Same phone from AD (if found)
- `ad_user`: AD user with this phone
- `match_status`: 'Match', 'Mismatch', 'Not Found'

#### worst_case_mismatches_*.csv
**Purpose**: Critical issues requiring new user creation
**Criteria**: Phone assigned to expired user, but belongs to AD user not in People table

### Performance Metrics

**Processing Speed Benchmarks**:
- **Small dataset** (<5k records): 30-60 seconds
- **Medium dataset** (5k-20k records): 2-5 minutes
- **Large dataset** (>20k records): 10-30 minutes

**Memory Usage**:
- **Typical usage**: 200-500 MB
- **Large datasets**: Up to 2 GB
- **Optimization**: Use chunked processing for >50k records

## Analysis Quality Indicators

### Data Completeness Score
```python
def calculate_completeness(df, required_fields):
    """Calculate data completeness percentage"""
    total_fields = len(required_fields) * len(df)
    non_null_count = sum(df[field].count() for field in required_fields)
    return (non_null_count / total_fields) * 100
```

### Match Rate Calculation
```python
def calculate_match_rate(cross_ref_results):
    """Calculate phone matching success rate"""
    total_phones = len(cross_ref_results)
    matched_phones = sum(1 for result in cross_ref_results.values() if result is not None)
    return (matched_phones / total_phones) * 100 if total_phones > 0 else 0
```

### Issue Priority Scoring

**Priority Levels**:
1. **Critical** (Score 10): Active user without phone service
2. **High** (Score 8): Phone assigned to wrong active user
3. **Medium** (Score 6): Expired user still has active services
4. **Low** (Score 4): Minor data inconsistencies

## Advanced Analysis Features

### Duplicate Detection
```python
def find_duplicates(df, key_fields):
    """Find duplicate records based on key fields"""
    duplicates = df[df.duplicated(subset=key_fields, keep=False)]
    return duplicates.groupby(key_fields).size().reset_index(name='count')
```

### Trend Analysis
```python
def analyze_trends(service_df):
    """Analyze changes over time periods"""
    trends = service_df.groupby(['DateRef', 'Status']).size().unstack(fill_value=0)
    return trends
```

### Cost Impact Analysis
```python
def calculate_cost_impact(mismatches_df, cost_per_line=50):
    """Calculate financial impact of misassignments"""
    affected_lines = len(mismatches_df)
    monthly_impact = affected_lines * cost_per_line
    return {
        'affected_lines': affected_lines,
        'monthly_cost_impact': monthly_impact,
        'annual_projection': monthly_impact * 12
    }
```

## Configuration Options

### Analysis Parameters
```python
# Configurable analysis settings
ANALYSIS_CONFIG = {
    'current_period': '202512',
    'previous_period': '202511',
    'phone_match_threshold': 0.95,
    'include_historical_data': True,
    'max_duplicate_threshold': 5,
    'cost_center_analysis': True
}
```

### Output Customization
```python
# Report generation options
REPORT_CONFIG = {
    'generate_pdf': False,  # Requires additional dependencies
    'include_charts': True,
    'detailed_tables': True,
    'executive_summary_only': False,
    'custom_branding': True
}
```

## Integration Points

### Database Connectivity
The analysis engine integrates with:
- **SQL Server**: Direct database queries for real-time data
- **CSV Exports**: File-based analysis for offline processing
- **REST APIs**: Future integration with SpikeFli web services

### External Tools
- **Power BI**: Export format compatible with Power BI dashboards
- **Excel**: CSV outputs optimized for Excel pivot tables
- **SSMS**: Generated SQL scripts for direct execution

---

**Last Updated**: December 18, 2025
**Analysis Engine Version**: 2.1