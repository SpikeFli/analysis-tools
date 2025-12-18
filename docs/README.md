# SpikeFli Analysis Tools Documentation

## 📋 Table of Contents

- [Overview](#overview)
- [Quick Start Guide](#quick-start-guide)
- [Tool Reference](#tool-reference)
- [Database Structure](#database-structure)
- [Workflows](#workflows)
- [Troubleshooting](#troubleshooting)
- [Advanced Usage](#advanced-usage)

## Overview

The SpikeFli Analysis Tools provide a comprehensive suite for analyzing, cleaning, and fixing data discrepancies between Active Directory and SpikeFli database systems. The tools handle phone number assignments, user status management, and data synchronization across multiple data sources.

### Core Components

| Component | Purpose | Key Files |
|-----------|---------|-----------|
| **Master Controller** | Main interface for all operations | `spikefli_master.sh` |
| **Data Analysis** | Cross-reference AD with ServiceDetails | `comprehensive_data_analysis.py` |
| **Phone Management** | Fix phone assignment issues | `generate_phone_assignment_fixes.py` |
| **CSV Sanitization** | Process reviewed data classifications | `sanitize_reviewed_csv.py` |
| **SQL Generation** | Create database update scripts | Multiple generators |

## Quick Start Guide

### 1. Initial Setup
```bash
cd /path/to/analysis-tools
./spikefli_master.sh
```

### 2. Basic Workflow
1. **Sanitize Active Directory CSV** (Option 1)
2. **Run Data Analysis** (Option 3)
3. **Review Generated Reports**
4. **Apply Fixes** (Options 8-11)
5. **Verify Changes**

### 3. Essential Files Needed
- **Active Directory Export**: `inputs/{Client}/ActiveDirectory_input/`
- **Service Overview**: `inputs/{Client}/Service_Overview_*.csv`
- **User Management**: `inputs/{Client}/user_management/UserList*.csv`
- **People Database**: `inputs/{Client}/people_database/*.csv`

## Tool Reference

See individual tool documentation:
- [Master Controller Guide](master-controller.md)
- [Data Analysis Guide](data-analysis.md)
- [Phone Management Guide](phone-management.md)
- [CSV Processing Guide](csv-processing.md)
- [SQL Generation Guide](sql-generation.md)

## Database Structure

See detailed schema documentation:
- [Database Schema Overview](database-schema.md)
- [Table Relationships](table-relationships.md)

## Workflows

Common operational workflows:
- [New Client Onboarding](workflows/new-client-onboarding.md)
- [Monthly Data Sync](workflows/monthly-sync.md)
- [Phone Assignment Fixes](workflows/phone-fixes.md)
- [User Status Updates](workflows/user-status.md)

## Troubleshooting

- [Common Issues](troubleshooting/common-issues.md)
- [Error Messages](troubleshooting/error-messages.md)
- [Performance Tips](troubleshooting/performance.md)

## Advanced Usage

- [Custom SQL Generation](advanced/custom-sql.md)
- [Batch Processing](advanced/batch-processing.md)
- [Integration Guide](advanced/integration.md)

---

**Last Updated**: December 18, 2025
**Version**: 2.0
**Maintainer**: SpikeFli Development Team