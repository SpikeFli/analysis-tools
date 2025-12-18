# Installation and Setup Guide

## System Requirements

### Operating System
- **macOS** 10.15+ (Catalina or newer)
- **Linux** Ubuntu 18.04+ or equivalent
- **Windows** 10/11 with WSL2 (for bash script compatibility)

### Software Dependencies
- **Python** 3.7 or newer
- **Bash shell** (zsh compatible)
- **SQL Server Management Studio** (SSMS) or compatible SQL client
- **Git** (for version control)

### Hardware Requirements
- **RAM**: Minimum 8GB (16GB recommended for large datasets)
- **Storage**: 10GB free space (for data files and outputs)
- **CPU**: Multi-core processor recommended for analysis performance

## Installation Steps

### 1. Clone or Download Repository
```bash
# Using Git
git clone https://github.com/your-org/spikefli-analysis-tools.git
cd spikefli-analysis-tools/analysis-tools

# Or download and extract ZIP file
# Then navigate to analysis-tools directory
```

### 2. Install Python Dependencies
```bash
# Install required Python packages
pip3 install pandas numpy

# Optional: Create virtual environment
python3 -m venv spikefli-env
source spikefli-env/bin/activate  # On Windows: spikefli-env\Scripts\activate
pip install pandas numpy

# If you encounter permission issues
pip3 install --user pandas numpy
```

### 3. Set Up Directory Structure
```bash
# Create required directories
mkdir -p inputs/{ClientName}/ActiveDirectory_input
mkdir -p inputs/{ClientName}/user_management
mkdir -p inputs/{ClientName}/people_database
mkdir -p outputs/{ClientName}
mkdir -p logs
mkdir -p processed

# Set proper permissions
chmod +x spikefli_master.sh
chmod 755 *.py
```

### 4. Verify Installation
```bash
# Test Python dependencies
python3 -c "import pandas, numpy; print('Dependencies OK')"

# Test script permissions
./spikefli_master.sh --version

# Check directory structure
ls -la inputs/
```

## Configuration

### Environment Variables (Optional)
```bash
# Add to ~/.bashrc or ~/.zshrc
export SPIKEFLI_HOME="/path/to/analysis-tools"
export SPIKEFLI_LOG_LEVEL="INFO"
export SPIKEFLI_DEFAULT_CLIENT="Synovus"

# Apply changes
source ~/.bashrc  # or ~/.zshrc
```

### Database Connection Setup
The tools don't store database credentials. You'll need:
- **SSMS** installed and configured
- **Access** to SpikeFli database
- **Permissions** to read/write required tables

### File Naming Conventions
Ensure your input files follow these patterns:

```
inputs/
└── {ClientName}/
    ├── ActiveDirectory_input/
    │   ├── {ClientName}AD_SANITIZED.csv
    │   └── {raw_ad_export}.csv
    ├── user_management/
    │   └── UserList*.csv
    ├── people_database/
    │   └── {people_export}.csv
    └── Service_Overview_*.csv
```

## Initial Setup for New Client

### Step 1: Create Client Directory Structure
```bash
# Replace "NewClient" with actual client name
CLIENT_NAME="NewClient"
mkdir -p inputs/$CLIENT_NAME/{ActiveDirectory_input,user_management,people_database}
mkdir -p outputs/$CLIENT_NAME
```

### Step 2: Prepare Input Files
1. **Active Directory Export**:
   - Export from AD with required fields (see [Data Requirements](data-requirements.md))
   - Save as CSV in `inputs/{ClientName}/ActiveDirectory_input/`

2. **Service Overview Export**:
   - Export from SpikeFli ServiceDetails table
   - Include current month data (DateRef)
   - Save in `inputs/{ClientName}/`

3. **User Management Export**:
   - Export UserList table data
   - Save in `inputs/{ClientName}/user_management/`

4. **People Database Export**:
   - Export People table for the client
   - Save in `inputs/{ClientName}/people_database/`

### Step 3: Run Initial Analysis
```bash
./spikefli_master.sh
# Choose: 1 (Sanitize AD CSV)
# Choose: 3 (Run analysis)
# Review generated reports
```

## Upgrading Existing Installation

### Check Current Version
```bash
# Check script version
grep -n "Version" docs/README.md

# Check for updates
git status  # If using Git
git pull    # To get latest updates
```

### Backup Before Upgrade
```bash
# Backup current configuration and data
cp -r inputs/ inputs_backup_$(date +%Y%m%d)
cp -r outputs/ outputs_backup_$(date +%Y%m%d)

# Backup any customized scripts
cp *.py scripts_backup/
```

### Apply Updates
```bash
# If using Git
git pull origin main

# Or download new version and replace files
# Restore customized configurations if needed
```

## Security Configuration

### File Permissions
```bash
# Set secure permissions
chmod 750 analysis-tools/           # Directory access
chmod 644 inputs/**/*.csv          # Read-only data files
chmod 755 *.py                     # Executable scripts
chmod 600 logs/*.log               # Restricted log access
```

### Data Protection
- **Never commit sensitive data** to version control
- **Use .gitignore** for inputs/ and outputs/ directories
- **Encrypt sensitive files** if required by policy
- **Regular cleanup** of temporary files

### Access Control
```bash
# Create .gitignore if using version control
cat > .gitignore << EOF
inputs/*/
outputs/*/
logs/*.log
processed/
*.pyc
__pycache__/
.DS_Store
EOF
```

## Performance Optimization

### System Configuration
```bash
# Increase file descriptor limits (if needed)
ulimit -n 4096

# Set Python to use multiple cores
export OMP_NUM_THREADS=4
```

### Large Dataset Optimization
```python
# For files >1GB, consider these pandas optimizations
import pandas as pd

# Use chunked reading
chunksize = 10000
for chunk in pd.read_csv('large_file.csv', chunksize=chunksize):
    process_chunk(chunk)

# Optimize data types
dtype_dict = {
    'phone': 'string',
    'status': 'category',
    'date': 'datetime64'
}
df = pd.read_csv('file.csv', dtype=dtype_dict)
```

## Troubleshooting Installation

### Common Installation Issues

#### Python Not Found
```bash
# Check Python installation
which python3
python3 --version

# Install Python 3 if missing
# macOS: brew install python3
# Ubuntu: sudo apt-get install python3
# CentOS: sudo yum install python3
```

#### Permission Denied Errors
```bash
# Fix script permissions
chmod +x spikefli_master.sh
chmod 755 *.py

# Fix directory permissions
find . -type d -exec chmod 755 {} \;
find . -type f -name "*.py" -exec chmod 755 {} \;
```

#### Module Import Errors
```bash
# Reinstall dependencies
pip3 uninstall pandas numpy
pip3 install pandas numpy

# Check installation
python3 -c "import pandas; print(pandas.__version__)"
```

#### Path Issues
```bash
# Add current directory to PATH temporarily
export PATH=$PATH:$(pwd)

# Or use absolute paths
/full/path/to/analysis-tools/spikefli_master.sh
```

## Getting Help

### Documentation Resources
- **README.md**: Main documentation entry point
- **docs/**: Comprehensive guides and references
- **troubleshooting/**: Common issues and solutions
- **workflows/**: Step-by-step procedures

### Command Line Help
```bash
# Script help (if implemented)
./spikefli_master.sh --help

# Python script help
python3 comprehensive_data_analysis.py --help
```

### Support Contacts
- **Technical Issues**: [Create GitHub Issue](https://github.com/your-org/spikefli-analysis-tools/issues)
- **Feature Requests**: [Discussion Forum](https://github.com/your-org/spikefli-analysis-tools/discussions)
- **Emergency Support**: Contact SpikeFli development team

---

**Last Updated**: December 18, 2025
**Installation Guide Version**: 1.0