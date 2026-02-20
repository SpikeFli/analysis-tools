#!/bin/bash

# SpikeFli Master Data Processing Script
# Handles AD sanitization, SQL generation, and data analysis

set -e  # Exit on any error

echo "🚀 SPIKEFLI MASTER DATA PROCESSOR"
echo "=================================="
echo ""

# Color codes for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${GREEN}✅ $1${NC}"
}

print_warning() {
    echo -e "${YELLOW}⚠️  $1${NC}"
}

print_error() {
    echo -e "${RED}❌ $1${NC}"
}

print_info() {
    echo -e "${BLUE}ℹ️  $1${NC}"
}

# Function to get customer ID
get_customer_id() {
    while true; do
        echo -n "🔢 Enter the last 3 digits of the customer ID (e.g., 096): "
        read customer_digits

        if [[ ${#customer_digits} -eq 3 ]] && [[ $customer_digits =~ ^[0-9]+$ ]]; then
            CUSTOMER_ID="0000000${customer_digits}"
            print_status "Using customer ID: $CUSTOMER_ID"
            break
        else
            print_error "Please enter exactly 3 digits (e.g., 096, 057, 123)"
        fi
    done
}

# Function to show menu
show_menu() {
    echo ""
    echo "📋 WHAT WOULD YOU LIKE TO DO?"
    echo "1. 🧹 Sanitize Active Directory CSV only"
    echo "2. 🔧 Generate SQL updates only (requires sanitized AD)"
    echo "3. 📊 Run data analysis only"
    echo "4. 🚀 COMPLETE END-TO-END WORKFLOW (Does everything + pauses for SQL execution)"
    echo "5. 🎯 Generate worst case mismatch fixes (requires analysis results)"
    echo "6. 🛠️  Fix service statuses (mark expired/active services)"
    echo "7. 📝 Generate expired service fixes (mark services not in AD as expired)"
    echo "8. 📞 Generate phone reassignment fixes (fix mismatched users)"
    echo "9. � Generate phone assignment fixes (create new users + reassign phones)"
    echo "10. 🧾 Extended Details Update (People: GL1/GL2/Manager/UserAdress)"
    echo "11. 📄 Generate backup scripts"
    echo "12. 🧹 Sanitize reviewed CSV (EXPIRED/GENERAL USE)"
    echo "13. ❌ Exit"
    echo ""
}

# Function to sanitize AD
sanitize_ad() {
    print_info "Starting Active Directory sanitization..."
    print_info "Using smart client detection router..."
    python3 sanitize_ad_router.py
    if [ $? -eq 0 ]; then
        print_status "AD sanitization completed successfully"
        return 0
    else
        print_error "AD sanitization failed"
        print_warning "You can also run client-specific sanitizers:"
        print_warning "- Northview: python3 sanitize_ad_csv.py"
        print_warning "- Synovus: python3 sanitize_synovus_ad.py"
        return 1
    fi
}

# Function to generate SQL
generate_sql() {
    print_info "Starting SQL generation..."
    get_customer_id
    # Ask whether to include prior month as well
    echo -n "Include prior month as well? (y/N): "
    read include_prior_choice
    if [[ "$include_prior_choice" =~ ^[Yy]$ ]]; then
        INCLUDE_PRIOR_FLAG="--include-prior"
    else
        INCLUDE_PRIOR_FLAG=""
    fi

    # Pass customer ID to Python to avoid stdin piping issues
    python3 generate_direct_sql_updates.py --customer-id "$CUSTOMER_ID" $INCLUDE_PRIOR_FLAG
    if [ $? -eq 0 ]; then
        print_status "SQL generation completed successfully"
        return 0
    else
        print_error "SQL generation failed"
        return 1
    fi
}

# Function to run analysis
run_analysis() {
    print_info "Starting comprehensive data analysis..."
    python3 comprehensive_data_analysis.py
    if [ $? -eq 0 ]; then
        print_status "Data analysis completed successfully"
        echo ""
        print_info "Check the output/ folder for detailed reports:"
        echo "  - SpikeFli_Analysis_Report_*.md"
        echo "  - phone_cross_reference_*.csv"
        echo "  - should_be_expired_*.csv"
        echo "  - should_be_active_*.csv"
        return 0
    else
        print_error "Data analysis failed"
        return 1
    fi
}

# Function to generate worst case fixes
generate_worst_case_fixes() {
    print_info "Generating worst case mismatch fix SQL..."
    echo "$customer_digits" | python3 generate_worst_case_fixes.py
    if [ $? -eq 0 ]; then
        print_status "Worst case fix SQL generated successfully"
        return 0
    else
        print_error "Worst case fix SQL generation failed"
        return 1
    fi
}

# Function to generate service status fixes
generate_service_fixes() {
    print_info "Generating service status fix SQL..."
    echo "$customer_digits" | python3 generate_service_status_fixes.py
}

# Function to generate expired service fixes
generate_expired_fixes() {
    print_info "Generating expired service fix SQL..."
    echo "$customer_digits" | python3 generate_expired_fixes.py
    if [ $? -eq 0 ]; then
        print_status "Service status fix SQL generated successfully"
        return 0
    else
        print_error "Service status fix SQL generation failed"
        return 1
    fi
}

# Function to generate backup scripts
generate_backups() {
    print_info "Generating backup scripts..."
    python3 create_backup.py
    if [ $? -eq 0 ]; then
        print_status "Backup scripts generated successfully"
        return 0
    else
        print_error "Backup script generation failed"
        return 1
    fi
}

# Function to select client with sanitized AD file
select_client_with_sanitized() {
    local clients=()
    for d in ActiveDirectory_input/*/; do
        if [[ -d "$d" ]] && ls "${d}"*_SANITIZED.csv >/dev/null 2>&1; then
            clients+=("$(basename "$d")")
        fi
    done

    if [[ ${#clients[@]} -eq 0 ]]; then
        print_error "No client folders with *_SANITIZED.csv found in ActiveDirectory_input/"
        return 1
    fi

    echo ""
    echo "📁 AVAILABLE CLIENTS:"
    echo "===================="
    local i=1
    for c in "${clients[@]}"; do
        echo "${i}. ${c}"
        i=$((i+1))
    done
    echo ""

    while true; do
        echo -n "👆 Select client [1-${#clients[@]}]: "
        read choice
        if [[ "$choice" =~ ^[0-9]+$ ]] && (( choice >= 1 && choice <= ${#clients[@]} )); then
            CLIENT_NAME="${clients[$((choice-1))]}"
            print_status "Using client: $CLIENT_NAME"
            return 0
        fi
        print_error "Please enter a number between 1 and ${#clients[@]}"
    done
}

# Function to generate extended details updates
generate_extended_details_updates() {
    print_info "Generating extended details update SQL..."
    if ! select_client_with_sanitized; then
        return 1
    fi
    get_customer_id
    python3 generate_extended_details_updates.py --client-name "$CLIENT_NAME" --customer-id "$CUSTOMER_ID"
}

# Main execution loop
main() {
    while true; do
        show_menu
        echo -n "Enter your choice [1-13]: "
        read choice

        case $choice in
            1)
                sanitize_ad
                ;;
            2)
                generate_sql
                ;;
            3)
                run_analysis
                ;;
            4)
                print_info "Starting COMPLETE END-TO-END workflow..."

                # Step 1: Sanitize AD
                print_info "🧹 STEP 1: Sanitizing Active Directory CSV..."
                if ! sanitize_ad; then
                    print_error "Workflow failed at AD sanitization"
                    continue
                fi

                # Step 2: Generate AD update SQL
                print_info "🔧 STEP 2: Generating AD update SQL..."
                if ! generate_sql; then
                    print_error "Workflow failed at SQL generation"
                    continue
                fi

                print_status "📋 SQL GENERATED! Copy and paste this into SSMS and execute it:"
                latest_sql=$(ls -t output/AD_Direct_Updates_*.sql 2>/dev/null | head -1)
                if [[ -n "$latest_sql" ]]; then
                    echo "   File: $(basename "$latest_sql")"
                    echo ""
                    print_warning "⏸️  PAUSED: Execute the SQL in SSMS, then press Enter to continue..."
                    read
                else
                    print_error "Could not find generated SQL file"
                    continue
                fi

                # Step 3: Final analysis verification
                print_info "✅ STEP 3: Final verification analysis..."
                if run_analysis; then
                    print_status "🎉 COMPLETE END-TO-END WORKFLOW FINISHED!"
                    echo ""
                    print_info "🎯 RESULTS: Check the analysis report for verification"
                    print_info "    - Should show near-perfect phone matching"
                    print_info "    - Should show minimal service status mismatches"
                    print_info "    - Services not in AD should be marked as 'EXPIRED - Not in AD'"
                else
                    print_warning "Final analysis had issues, but workflow completed"
                fi
                ;;
            5)
                get_customer_id
                generate_worst_case_fixes
                ;;
            6)
                generate_service_fixes
                ;;
            7)
                get_customer_id
                generate_expired_fixes
                ;;
            8)
                print_info "Generating phone reassignment fix SQL..."
                python3 generate_phone_reassignment_fixes.py
                ;;
            9)
                print_info "Generating phone assignment fix SQL..."
                python3 generate_phone_assignment_fixes.py
                ;;
            10)
                generate_extended_details_updates
                ;;
            11)
                generate_backups
                ;;
            12)
                print_info "Sanitizing reviewed CSV (EXPIRED/GENERAL USE)..."
                python3 sanitize_reviewed_csv.py
                ;;
            13)
                print_info "Goodbye!"
                exit 0
                ;;
            *)
                print_error "Invalid choice. Please enter 1-13."
                ;;
        esac

        echo ""
        echo "Press Enter to continue..."
        read
    done
}

# Check if we're in the right directory
if [ ! -f "sanitize_ad_csv.py" ] || [ ! -f "generate_direct_sql_updates.py" ]; then
    print_error "Please run this script from the analysis-tools directory"
    print_error "Expected files: sanitize_ad_csv.py, generate_direct_sql_updates.py"
    exit 1
fi

# Start the main program
main
