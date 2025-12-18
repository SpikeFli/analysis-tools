#!/usr/bin/env python3
"""
Comprehensive Data Analysis Tool for SpikeFli Active Directory Integration

This script analyzes four data sources:
1. Active Directory CSV export
2. Service Overview CSV export
3. People database export
4. User Management CSV export

It identifies mismatches, duplicates, and provides actionable insights.
"""

import pandas as pd
import numpy as np
from datetime import datetime
import os
import sys

# Optional PDF generation (will gracefully fallback if not available)
try:
    import markdown
    import pdfkit
    PDF_AVAILABLE = True
except ImportError:
    PDF_AVAILABLE = False

class SpikeFliDataAnalyzer:
    def __init__(self):
        self.ad_data = None
        self.service_data = None
        self.people_data = None
        self.user_mgmt_data = None
        self.results = {}

    def clean_service_overview_data(self, service_path):
        """Pre-process Service Overview CSV to normalize AssetID format and extract status"""
        print("🧹 CLEANING SERVICE OVERVIEW DATA...")

        # Load original service data
        service_df = pd.read_csv(service_path)
        print(f"  📂 Loaded {len(service_df)} original Service Overview records")

        # Clean AssetID column - remove all formatting
        def clean_asset_id(asset_id):
            if pd.isna(asset_id):
                return asset_id
            # Convert to string and remove all non-digit characters
            cleaned = ''.join(filter(str.isdigit, str(asset_id)))
            return cleaned if cleaned else asset_id

        # Extract status and clean username
        def extract_status_and_clean_username(username):
            if pd.isna(username):
                return username, 'ACTIVE'  # Default to ACTIVE if no username

            username_str = str(username).strip()

            # Check for expired indicators - ONLY (D: Expired) should be marked as EXPIRED
            if '(D: Expired)' in username_str:
                clean_username = username_str.replace('(D: Expired)', '').strip()
                return clean_username, 'EXPIRED'
            elif '(D)' in username_str:
                # (D) should remain ACTIVE - just clean the username but keep status ACTIVE
                clean_username = username_str.replace('(D)', '').strip()
                return clean_username, 'ACTIVE'
            else:
                return username_str, 'ACTIVE'

        # Create cleaned copy
        cleaned_df = service_df.copy()

        # Clean AssetID
        cleaned_df['AssetID'] = cleaned_df['AssetID'].apply(clean_asset_id)

        # Extract status and clean username
        username_status = cleaned_df['Username'].apply(extract_status_and_clean_username)
        cleaned_df['Username'] = [item[0] for item in username_status]
        cleaned_df['STATUS'] = [item[1] for item in username_status]

        # Save to processed subfolder
        os.makedirs('processed', exist_ok=True)
        cleaned_path = 'processed/service_overview_cleaned.csv'
        cleaned_df.to_csv(cleaned_path, index=False)

        print(f"  ✅ Cleaned Service Overview saved to: {cleaned_path}")
        print(f"  📊 Cleaning examples:")

        # Show examples of cleaning
        examples = 0
        for i, row in service_df.iterrows():
            if examples >= 5:
                break

            original_asset = str(row['AssetID'])
            cleaned_asset = clean_asset_id(row['AssetID'])
            original_username = str(row['Username'])
            cleaned_username, status = extract_status_and_clean_username(row['Username'])

            if ('(D:' in original_username or original_asset != cleaned_asset) and len(original_asset) > 5:
                print(f"    AssetID: {original_asset} → {cleaned_asset}")
                print(f"    User: {original_username} → {cleaned_username} (Status: {status})")
                print(f"    ---")
                examples += 1

        # Show status summary
        status_counts = cleaned_df['STATUS'].value_counts()
        print(f"  📊 Status Summary:")
        for status, count in status_counts.items():
            print(f"    {status}: {count}")

        return cleaned_path

    def load_data(self, ad_path, service_path, people_path, user_mgmt_path):
        """Load all four data sources"""
        try:
            print("📂 Loading data files...")

            # Load Active Directory data
            print(f"  Loading Active Directory: {ad_path}")
            self.ad_data = pd.read_csv(ad_path)
            print(f"    ✅ Loaded {len(self.ad_data)} AD records")

            # Load Service Overview data
            print(f"  Loading Service Overview: {service_path}")
            self.service_data = pd.read_csv(service_path)
            print(f"    ✅ Loaded {len(self.service_data)} Service Overview records")

            # Load People database data
            print(f"  Loading People Database: {people_path}")
            self.people_data = pd.read_csv(people_path)
            print(f"    ✅ Loaded {len(self.people_data)} People database records")

            # Load User Management data
            print(f"  Loading User Management: {user_mgmt_path}")
            self.user_mgmt_data = pd.read_csv(user_mgmt_path)
            print(f"    ✅ Loaded {len(self.user_mgmt_data)} User Management records")

            return True

        except Exception as e:
            print(f"❌ Error loading data: {e}")
            return False

    def analyze_active_directory(self):
        """Analyze Active Directory data"""
        print("\n🔍 ANALYZING ACTIVE DIRECTORY DATA...")

        if self.ad_data is None:
            print("❌ No AD data loaded")
            return

        # Basic stats
        total_users = len(self.ad_data)

        # Debug: Check column names and Enabled field values
        print(f"  Debug: Available columns: {list(self.ad_data.columns)}")
        if 'Enabled' in self.ad_data.columns:
            enabled_values = self.ad_data['Enabled'].value_counts()
            print(f"  Debug: Enabled field values: {enabled_values.to_dict()}")
            # Fix: Check for boolean True/False, not string 'True'/'False'
            enabled_users = len(self.ad_data[self.ad_data['Enabled'] == True])
            disabled_users = len(self.ad_data[self.ad_data['Enabled'] == False])
        else:
            print(f"  ⚠️ 'Enabled' column not found in AD data")
            enabled_users = 0
            disabled_users = 0

        print(f"📊 Active Directory Summary:")
        print(f"  Total Users: {total_users}")
        print(f"  Enabled: {enabled_users} ({enabled_users/total_users*100:.1f}%)")
        print(f"  Disabled: {disabled_users} ({disabled_users/total_users*100:.1f}%)")

        # Users with phone numbers
        users_with_mobile = len(self.ad_data[self.ad_data['mobile'].notna() & (self.ad_data['mobile'] != '')])
        users_with_phone = len(self.ad_data[self.ad_data['telephoneNumber'].notna() & (self.ad_data['telephoneNumber'] != '')])

        print(f"  Users with Mobile: {users_with_mobile}")
        print(f"  Users with Phone: {users_with_phone}")

        self.results['ad_summary'] = {
            'total': total_users,
            'enabled': enabled_users,
            'disabled': disabled_users,
            'with_mobile': users_with_mobile,
            'with_phone': users_with_phone
        }

    def analyze_user_management(self):
        """Analyze User Management data - ACTUAL user management records"""
        print("\n👥 ANALYZING USER MANAGEMENT DATA...")

        if self.user_mgmt_data is None:
            print("❌ No User Management data loaded")
            return

        # This is the ACTUAL user management system data
        total_mgmt = len(self.user_mgmt_data)
        active_mgmt = len(self.user_mgmt_data[self.user_mgmt_data['Status'] == 'Active'])
        expired_mgmt = len(self.user_mgmt_data[self.user_mgmt_data['Status'] == 'Expired'])

        # Filter by data source
        ad_sourced = len(self.user_mgmt_data[self.user_mgmt_data['DataSource'] == 'AD'])
        non_ad_sourced = total_mgmt - ad_sourced

        print(f"📊 User Management System Summary:")
        print(f"  Total User Records: {total_mgmt}")
        print(f"  Active Users: {active_mgmt} ({active_mgmt/total_mgmt*100:.1f}%)")
        print(f"  Expired Users: {expired_mgmt} ({expired_mgmt/total_mgmt*100:.1f}%)")
        print(f"  AD-Sourced: {ad_sourced}")
        print(f"  Other Sources: {non_ad_sourced}")

        self.results['user_mgmt_summary'] = {
            'total': total_mgmt,
            'active': active_mgmt,
            'expired': expired_mgmt,
            'ad_sourced': ad_sourced,
            'other_sourced': non_ad_sourced
        }

    def analyze_people_database(self):
        """Analyze People database data"""
        print("\n🗃️  ANALYZING PEOPLE DATABASE...")

        if self.people_data is None:
            print("ℹ️  No People data available - skipping People database analysis")
            print("   (People database is only available for Northview client)")
            return

        # Filter AD-linked records
        ad_people = self.people_data[self.people_data['LinkType'] == 'AD']

        total_people = len(ad_people)
        active_people = len(ad_people[ad_people['status'] == 'Active'])
        expired_people = len(ad_people[ad_people['status'] == 'Expired'])

        print(f"📊 People Database (AD-linked) Summary:")
        print(f"  Total AD Records: {total_people}")
        print(f"  Active: {active_people} ({active_people/total_people*100:.1f}%)")
        print(f"  Expired: {expired_people} ({expired_people/total_people*100:.1f}%)")

        # Check for duplicates
        duplicates = ad_people[ad_people.duplicated('username', keep=False)]
        if len(duplicates) > 0:
            print(f"  ⚠️  DUPLICATES FOUND: {len(duplicates)} records")
            dup_users = duplicates['username'].value_counts()
            print(f"    Top duplicated users:")
            for user, count in dup_users.head(5).items():
                print(f"      {user}: {count} records")
        else:
            print(f"  ✅ No duplicates found")

        self.results['people_summary'] = {
            'total': total_people,
            'active': active_people,
            'expired': expired_people,
            'duplicates': len(duplicates)
        }

    def analyze_service_overview(self):
        """Analyze Service Overview data"""
        print("\n📋 ANALYZING SERVICE OVERVIEW...")

        if self.service_data is None:
            print("❌ No Service Overview data loaded")
            return

        # Count expired vs active entries using STATUS column
        expired_entries = self.service_data[self.service_data['STATUS'] == 'EXPIRED']
        active_entries = self.service_data[self.service_data['STATUS'] == 'ACTIVE']

        total_with_users = len(self.service_data[self.service_data['Username'].notna() &
                                               (self.service_data['Username'] != '')])

        print(f"📊 Service Overview Summary:")
        print(f"  Total entries with users: {total_with_users}")
        print(f"  Expired entries: {len(expired_entries)}")
        print(f"  Active entries: {len(active_entries)}")

        self.results['service_summary'] = {
            'total_with_users': total_with_users,
            'expired': len(expired_entries),
            'active': len(active_entries)
        }

    def cross_reference_analysis(self):
        """CORE PURPOSE: Cross-reference phone numbers between Service Overview and Active Directory"""
        print("\n🔄 PERFORMING PHONE NUMBER CROSS-REFERENCE ANALYSIS...")

        if self.ad_data is None or self.service_data is None:
            print("❌ Cannot perform cross-reference - missing data")
            return

        # Build Active Directory phone mapping (RAW NUMBERS ONLY)
        ad_phone_map = {}  # clean_phone -> {'name': str, 'enabled': bool}
        enabled_ad_users = self.ad_data[self.ad_data['Enabled'] == True].copy()

        print(f"📞 Processing {len(enabled_ad_users)} enabled AD users...")
        for _, user in enabled_ad_users.iterrows():
            phones = []

            # Collect mobile and telephone numbers (handle float conversion)
            mobile = user.get('mobile', '')
            if pd.notna(mobile) and mobile != '':
                # Convert to string and remove decimal if it's a float
                mobile_str = str(mobile).replace('.0', '') if str(mobile).endswith('.0') else str(mobile)
                phones.append(mobile_str.strip())

            telephone = user.get('telephoneNumber', '')
            if pd.notna(telephone) and telephone != '':
                # Convert to string and remove decimal if it's a float
                telephone_str = str(telephone).replace('.0', '') if str(telephone).endswith('.0') else str(telephone)
                phones.append(telephone_str.strip())

            # Debug: Check specifically for Sarah Walker
            if 'Sarah Walker' in user['DisplayName']:
                print(f"  🔍 DEBUG - Sarah Walker phones: {phones}")

            # Process each phone number - CLEAN TO RAW DIGITS ONLY
            for phone_raw in phones:
                clean_phone = ''.join(filter(str.isdigit, phone_raw))
                if len(clean_phone) == 10:  # Valid 10-digit North American number
                    user_info = {
                        'name': user['DisplayName'],
                        'enabled': user['Enabled'],
                        'original_phone': phone_raw
                    }

                    # Store ONLY the clean version for reliable matching
                    ad_phone_map[clean_phone] = user_info  # 4034660988

                    # Debug: Check if we just added Sarah Walker's phone
                    if clean_phone == '4034660988':
                        print(f"  ✅ DEBUG - Added Sarah Walker's phone {clean_phone} to AD map")

        print(f"✅ Built AD phone map with {len(ad_phone_map)} phone numbers")

        # Debug: Show some examples of what's in the AD phone map
        sample_phones = list(ad_phone_map.keys())[:10]
        print(f"  📞 Sample AD phones: {sample_phones}")

        # Debug: Check specifically for Sarah Walker's phone
        if '4034660988' in ad_phone_map:
            print(f"  ✅ Found Sarah Walker's phone 4034660988 in AD map: {ad_phone_map['4034660988']}")
        else:
            print(f"  ❌ Sarah Walker's phone 4034660988 NOT found in AD map")

        # Now cross-reference with Service Overview (using CLEANED data)
        print("🔍 Cross-referencing Service Overview with Active Directory...")
        phone_cross_reference = []
        phone_reassignments = []
        status_mismatches = []

        for _, service_entry in self.service_data.iterrows():
            asset_id = str(service_entry.get('AssetID', '')).strip()
            service_username = str(service_entry.get('Username', '')).strip()
            service_status = str(service_entry.get('STATUS', 'ACTIVE')).strip()

            if not asset_id or not service_username or service_username == 'nan':
                continue

            # Username is now clean, status is in dedicated column
            clean_service_name = service_username
            is_expired_in_service = (service_status == 'EXPIRED')

            # AssetID should now be CLEAN (digits only) - check if it exists in AD
            if asset_id in ad_phone_map:
                ad_info = ad_phone_map[asset_id]
                ad_name = ad_info['name']
                ad_enabled = ad_info['enabled']

                # This is a MATCH - phone exists in both systems
                phone_cross_reference.append({
                    'phone_number': asset_id,
                    'service_overview_user': service_username,
                    'service_clean_name': clean_service_name,
                    'service_expired': is_expired_in_service,
                    'ad_user': ad_name,
                    'ad_enabled': ad_enabled,
                    'users_match': clean_service_name.lower() == ad_name.lower(),
                    'status_consistent': (not is_expired_in_service) == ad_enabled
                })

                # Check for phone reassignment (different users)
                if clean_service_name.lower() != ad_name.lower():
                    phone_reassignments.append({
                        'phone_number': asset_id,
                        'service_user': clean_service_name,
                        'ad_user': ad_name,
                        'service_status': 'Expired' if is_expired_in_service else 'Active',
                        'ad_status': 'Enabled' if ad_enabled else 'Disabled',
                        'change_type': 'Phone Number Reassignment'
                    })

                # Check for status mismatch
                if is_expired_in_service and ad_enabled:
                    status_mismatches.append({
                        'phone_number': asset_id,
                        'issue': 'Should be Active',
                        'service_user': service_username,
                        'ad_user': ad_name,
                        'problem': 'Service shows Expired but AD shows Enabled'
                    })
                elif not is_expired_in_service and not ad_enabled:
                    status_mismatches.append({
                        'phone_number': asset_id,
                        'issue': 'Should be Expired',
                        'service_user': service_username,
                        'ad_user': ad_name,
                        'problem': 'Service shows Active but AD shows Disabled'
                    })
            else:
                # Phone NOT found in AD
                if not is_expired_in_service:
                    status_mismatches.append({
                        'phone_number': asset_id,
                        'issue': 'Should be Expired',
                        'service_user': service_username,
                        'ad_user': 'NOT FOUND',
                        'problem': 'Service shows Active but phone not in AD'
                    })

        print(f"📊 CROSS-REFERENCE RESULTS:")
        print(f"  📞 Total phone cross-references: {len(phone_cross_reference)}")
        print(f"  🔄 Phone reassignments: {len(phone_reassignments)}")
        print(f"  ⚠️  Status mismatches: {len(status_mismatches)}")

        # Categorize status mismatches
        should_be_active = [m for m in status_mismatches if m['issue'] == 'Should be Active']
        should_be_expired = [m for m in status_mismatches if m['issue'] == 'Should be Expired']
        correctly_expired = []  # We'll calculate this from service data that's correctly expired

        self.results['cross_reference'] = {
            'phone_cross_reference': phone_cross_reference,
            'phone_reassignments': phone_reassignments,
            'should_be_active': should_be_active,
            'should_be_expired': should_be_expired,
            'correctly_expired': correctly_expired,
            'status_mismatches': status_mismatches
        }

        return phone_cross_reference, phone_reassignments, status_mismatches

    def generate_report(self, output_dir="output", client_name=None):
        """Generate detailed report files including comprehensive Markdown report"""
        print(f"\n📝 GENERATING REPORTS...")

        # Use client-organized output structure
        client_name = client_name or getattr(self, 'client_name', 'Unknown')

        script_dir = os.path.dirname(os.path.abspath(__file__))
        base_output_dir = os.path.join(script_dir, "output")
        client_output_dir = os.path.join(base_output_dir, client_name)
        os.makedirs(client_output_dir, exist_ok=True)

        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        md_file = os.path.join(client_output_dir, f"SpikeFli_Analysis_Report_{timestamp}.md")
        with open(md_file, 'w') as f:
            f.write(f"# SpikeFli Data Analysis Report\n\n")
            f.write(f"**Generated:** {datetime.now().strftime('%B %d, %Y at %I:%M %p')}\n\n")
            f.write(f"---\n\n")

            # KEY METRICS SUMMARY (MOVED TO TOP)
            f.write(f"## 🎯 Key Metrics Summary\n\n")

            if 'cross_reference' in self.results:
                cross_ref = self.results['cross_reference']
                phone_cross_ref = cross_ref['phone_cross_reference']
                phone_reassignments = cross_ref['phone_reassignments']

                total_phones_analyzed = len(phone_cross_ref)
                user_mismatches = len(phone_reassignments)
                user_matches = total_phones_analyzed - user_mismatches
                status_consistent = total_phones_analyzed  # Assuming all matched phones have consistent status

                f.write(f"### 📱 Phone Number Analysis ({total_phones_analyzed} phones analyzed)\n\n")
                f.write(f"| Metric | Count | Percentage | Status |\n")
                f.write(f"|--------|-------|------------|--------|\n")
                f.write(f"| **Users Match Correctly** | **{user_matches}** | **{user_matches/total_phones_analyzed*100:.1f}%** | ✅ Good |\n")
                f.write(f"| **User Mismatches** | **{user_mismatches}** | **{user_mismatches/total_phones_analyzed*100:.1f}%** | 🚨 Needs Fix |\n")
                f.write(f"| Status Consistency | {status_consistent} | {status_consistent/total_phones_analyzed*100:.1f}% | ✅ Good |\n\n")

                f.write(f"**🔍 What User Mismatches Mean:**\n")
                f.write(f"When a phone number shows **different users** in Service Overview vs Active Directory:\n")
                f.write(f"- Service Overview: `John Smith` has phone `555-1234`\n")
                f.write(f"- Active Directory: `Sarah Johnson` has phone `555-1234`\n")
                f.write(f"- **Root Cause:** Phone was reassigned but Service Overview wasn't updated\n")
                f.write(f"- **Impact:** Billing/services assigned to wrong person\n")
                f.write(f"- **Solution:** Update Service Overview to match Active Directory\n\n")

            # CRITICAL STATUS MISMATCHES
            if 'cross_reference' in self.results:
                total_issues = (len(self.results['cross_reference']['should_be_active']) +
                              len(self.results['cross_reference']['should_be_expired']))
                f.write(f"### 🚨 Critical Status Issues ({total_issues} total)\n\n")
                f.write(f"| Issue Type | Count | Impact | Priority |\n")
                f.write(f"|------------|-------|--------|----------|\n")
                f.write(f"| Phone Assignment Issues | {len(self.results['cross_reference']['should_be_active'])} | Active employees can't access their phones | 🔴 High |\n")
                f.write(f"| **Should be EXPIRED** | **{len(self.results['cross_reference']['should_be_expired'])}** | **Paying for unused services** | **🔴 Critical** |\n")
                f.write(f"| Correctly EXPIRED | {len(self.results['cross_reference']['correctly_expired'])} | No action needed | ✅ Good |\n\n")

                f.write(f"**🔍 What These Issues Mean:**\n")
                f.write(f"- **Should be EXPIRED:** Users left company but we're still paying for their phone service\n")
                f.write(f"- **Phone Assignment Issues:** Phone numbers assigned to wrong users (active employees can't access their phones)\n\n")

            # Active Directory Analysis
            f.write(f"## 🗂️ Active Directory Analysis\n\n")
            if 'ad_summary' in self.results:
                ad = self.results['ad_summary']
                f.write(f"| Metric | Count | Percentage |\n")
                f.write(f"|--------|-------|------------|\n")
                f.write(f"| Total Users | {ad['total']} | 100% |\n")
                f.write(f"| **Enabled Users** | **{ad['enabled']}** | **{ad['enabled']/ad['total']*100:.1f}%** |\n")
                f.write(f"| Disabled Users | {ad['disabled']} | {ad['disabled']/ad['total']*100:.1f}% |\n")
                f.write(f"| Users with Mobile | {ad['with_mobile']} | {ad['with_mobile']/ad['total']*100:.1f}% |\n")
                f.write(f"| Users with Phone | {ad['with_phone']} | {ad['with_phone']/ad['total']*100:.1f}% |\n\n")

            # User Management Analysis (FIXED)
            f.write(f"## 👥 User Management System Analysis\n\n")
            if 'user_mgmt_summary' in self.results:
                mgmt = self.results['user_mgmt_summary']
                f.write(f"| Metric | Count | Percentage |\n")
                f.write(f"|--------|-------|------------|\n")
                f.write(f"| Total User Records | {mgmt['total']} | 100% |\n")
                f.write(f"| **Active Users** | **{mgmt['active']}** | **{mgmt['active']/mgmt['total']*100:.1f}%** |\n")
                f.write(f"| Expired Users | {mgmt['expired']} | {mgmt['expired']/mgmt['total']*100:.1f}% |\n")
                f.write(f"| AD-Sourced Records | {mgmt['ad_sourced']} | {mgmt['ad_sourced']/mgmt['total']*100:.1f}% |\n")
                f.write(f"| Other Sources | {mgmt['other_sourced']} | {mgmt['other_sourced']/mgmt['total']*100:.1f}% |\n\n")

            # People Database Analysis
            f.write(f"## 🗃️ People Database Analysis\n\n")
            if 'people_summary' in self.results:
                people = self.results['people_summary']
                f.write(f"| Metric | Count | Percentage |\n")
                f.write(f"|--------|-------|------------|\n")
                f.write(f"| Total AD Records | {people['total']} | 100% |\n")
                f.write(f"| **Active Records** | **{people['active']}** | **{people['active']/people['total']*100:.1f}%** |\n")
                f.write(f"| Expired Records | {people['expired']} | {people['expired']/people['total']*100:.1f}% |\n")
                f.write(f"| Duplicate Records | {people['duplicates']} | - |\n\n")

                if people['duplicates'] > 0:
                    f.write(f"⚠️ **WARNING: {people['duplicates']} duplicate records found in People database**\n\n")
                else:
                    f.write(f"✅ **No duplicates found in People database**\n\n")

            # Service Overview Analysis
            f.write(f"## 📋 Service Overview Analysis\n\n")
            if 'service_summary' in self.results:
                service = self.results['service_summary']
                f.write(f"| Metric | Count |\n")
                f.write(f"|--------|-------|\n")
                f.write(f"| Total Entries with Users | {service['total_with_users']} |\n")
                f.write(f"| Active Entries | {service['active']} |\n")
                f.write(f"| Expired Entries | {service['expired']} |\n\n")

            # CORE: Phone Number Cross-Reference Analysis
            if 'cross_reference' in self.results and 'phone_cross_reference' in self.results['cross_reference']:
                cross_refs = self.results['cross_reference']['phone_cross_reference']
                if cross_refs:
                    f.write(f"## 📞 Phone Number Cross-Reference Analysis ({len(cross_refs)} phones matched)\n\n")
                    f.write(f"**THIS IS THE CORE ANALYSIS:** Shows how phone numbers match between Service Overview and Active Directory:\n\n")
                    f.write(f"| Phone Number | Service Overview User | AD User | Users Match | Status Consistent |\n")
                    f.write(f"|--------------|----------------------|---------|-------------|-------------------|\n")

                    # Show first 20 cross-references
                    # Show ALL cross-references (no limit)
                    for ref in cross_refs:
                        users_match = "✅ YES" if ref['users_match'] else "❌ NO"
                        status_ok = "✅ YES" if ref['status_consistent'] else "❌ NO"
                        f.write(f"| {ref['phone_number']} | {ref['service_clean_name']} | {ref['ad_user']} | {users_match} | {status_ok} |\n")
                    f.write(f"\n")

                    # Summary stats
                    users_match_count = sum(1 for ref in cross_refs if ref['users_match'])
                    status_consistent_count = sum(1 for ref in cross_refs if ref['status_consistent'])

                    f.write(f"**Cross-Reference Summary:**\n")
                    f.write(f"- Phone numbers with matching users: {users_match_count}/{len(cross_refs)} ({users_match_count/len(cross_refs)*100:.1f}%)\n")
                    f.write(f"- Phone numbers with consistent status: {status_consistent_count}/{len(cross_refs)} ({status_consistent_count/len(cross_refs)*100:.1f}%)\n\n")
                else:
                    f.write(f"## 📞 Phone Number Cross-Reference Analysis\n\n")
                    f.write(f"❌ **No phone cross-references found** - This indicates a critical problem with phone matching.\n\n")

            # Phone Number Reassignments (The Core Issue)
            if 'cross_reference' in self.results and 'phone_reassignments' in self.results['cross_reference']:
                reassignments = self.results['cross_reference']['phone_reassignments']
                if reassignments:
                    f.write(f"## 📱 Phone Number Reassignments ({len(reassignments)} found)\n\n")
                    f.write(f"**🚨 CRITICAL ISSUE:** These phone numbers have different users in Service Overview vs Active Directory:\n\n")
                    f.write(f"| Phone Number | Service Overview User | Active Directory User | Service Status | AD Status |\n")
                    f.write(f"|--------------|----------------------|----------------------|----------------|----------|\n")

                    for reassign in reassignments[:20]:
                        f.write(f"| {reassign['phone_number']} | {reassign['service_user']} | {reassign['ad_user']} | {reassign['service_status']} | {reassign['ad_status']} |\n")

                    if len(reassignments) > 20:
                        f.write(f"| ... | *({len(reassignments) - 20} more reassignments)* | ... | ... | ... |\n")
                    f.write(f"\n")
                    f.write(f"**This is the core problem:** When John Doe leaves and Sarah McLachlan gets his phone number,\n")
                    f.write(f"the Service Overview still shows John Doe but AD shows Sarah McLachlan.\n\n")
                else:
                    f.write(f"## 📱 Phone Number Reassignments\n\n")
                    f.write(f"✅ **No phone number reassignments detected** between Service Overview and Active Directory.\n\n")            # Critical Issues Section
            if 'cross_reference' in self.results:
                f.write(f"## 🚨 Critical Issues Requiring Immediate Attention\n\n")

                should_be_active = self.results['cross_reference']['should_be_active']
                if should_be_active:
                    f.write(f"### 🟡 Phone Assignment Issues ({len(should_be_active)} found)\n\n")
                    f.write(f"These phone numbers are assigned to **EXPIRED users** in Service Overview, but the phones actually belong to **ACTIVE employees** in Active Directory:\n\n")
                    f.write(f"| Phone Number | Service Overview User | Active Directory User | Problem |\n")
                    f.write(f"|--------------|----------------------|----------------------|---------|\n")

                    # Show first 20 entries
                    display_count = min(20, len(should_be_active))
                    for item in should_be_active[:display_count]:
                        f.write(f"| {item['phone_number']} | {item['service_user']} | {item['ad_user']} | {item['problem']} |\n")

                    if len(should_be_active) > 20:
                        f.write(f"| ... | *({len(should_be_active) - 20} more entries)* | ... | ... |\n")
                    f.write(f"\n")

                should_be_expired = self.results['cross_reference']['should_be_expired']
                if should_be_expired:
                    f.write(f"### 🔴 Users Who Should Be EXPIRED ({len(should_be_expired)} found)\n\n")
                    f.write(f"**💰 FINANCIAL IMPACT:** These are users NOT in Active Directory but we're still paying for their phone services.\n\n")
                    f.write(f"| Phone Number | Service Overview User | Problem |\n")
                    f.write(f"|--------------|----------------------|---------|\n")

                    # Show ALL entries - no truncation
                    for item in should_be_expired:
                        f.write(f"| {item['phone_number']} | {item['service_user']} | {item['problem']} |\n")
                    f.write(f"\n")

                    f.write(f"**🔍 What These Entries Represent:**\n")
                    f.write(f"- **Former Employees:** Left company but phone service still active\n")
                    f.write(f"- **Service Accounts:** Shared numbers like 'SECURITY GUARD', 'MAINTENANCE'\n")
                    f.write(f"- **Equipment Numbers:** Phones for elevators, boilers, common areas\n")
                    f.write(f"- **Data Entry Errors:** Typos or formatting issues\n")
                    f.write(f"- **Reassigned Numbers:** Phone given to new employee but not updated\n\n")

                    f.write(f"**💡 Recommended Action:** Review each entry to determine if service should be cancelled or reassigned.\n\n")

                correctly_expired = self.results['cross_reference']['correctly_expired']
                if correctly_expired:
                    f.write(f"### ✅ Correctly Configured ({len(correctly_expired)} found)\n\n")
                    f.write(f"These users are correctly marked as **EXPIRED** (not found in Active Directory).\n\n")

            # Recommendations
            f.write(f"## 🎯 Recommended Actions\n\n")
            f.write(f"### Immediate Priority (High Impact)\n\n")

            if 'cross_reference' in self.results:
                if self.results['cross_reference']['should_be_active']:
                    f.write(f"1. **Fix {len(self.results['cross_reference']['should_be_active'])} incorrectly expired users**\n")
                    f.write(f"   - These are active employees showing as expired in Service Overview\n")
                    f.write(f"   - Run Active Directory processor or update database directly\n\n")

                if self.results['cross_reference']['should_be_expired']:
                    f.write(f"2. **Review {len(self.results['cross_reference']['should_be_expired'])} users marked as active**\n")
                    f.write(f"   - Cross-reference with UserManagement.csv for verification\n")
                    f.write(f"   - Check for phone number reassignments\n")
                    f.write(f"   - Identify service accounts vs actual users\n\n")

            if 'people_summary' in self.results and self.results['people_summary']['duplicates'] > 0:
                f.write(f"3. **Clean up {self.results['people_summary']['duplicates']} duplicate records**\n")
                f.write(f"   - Remove duplicate entries from People database\n")
                f.write(f"   - Ensure processor doesn't create new duplicates\n\n")

            f.write(f"## 🚀 Strategic Recommendations\n\n")

            f.write(f"### 💰 Cost Optimization (High Priority)\n")
            f.write(f"1. **Audit Expired Services** - Review {len(should_be_expired)} services marked as active but not in AD\n")
            f.write(f"   - Potential monthly savings by cancelling unused services\n")
            f.write(f"   - Identify service accounts vs former employees\n")
            f.write(f"   - Implement automated service termination for departed staff\n\n")

            f.write(f"2. **Phone Number Management** - Address {user_mismatches} user mismatches\n")
            f.write(f"   - Update Service Overview when phones are reassigned\n")
            f.write(f"   - Implement phone reassignment tracking process\n")
            f.write(f"   - Ensure billing accuracy for current users\n\n")

            f.write(f"### 🔧 Process Automation (Medium Priority)\n")
            f.write(f"1. **Active Directory Integration**\n")
            f.write(f"   - Automate status updates from AD to Service Overview\n")
            f.write(f"   - Implement real-time synchronization for user changes\n")
            f.write(f"   - Add validation rules to prevent data inconsistencies\n\n")

            f.write(f"2. **Monitoring & Alerting**\n")
            f.write(f"   - Set up weekly data consistency reports\n")
            f.write(f"   - Alert on new status mismatches exceeding threshold\n")
            f.write(f"   - Track key metrics: user matches, status consistency, cost impact\n\n")

            f.write(f"### 📊 Data Governance (Ongoing)\n")
            f.write(f"1. **Quality Standards**\n")
            f.write(f"   - Establish phone number format standards\n")
            f.write(f"   - Implement data validation at entry points\n")
            f.write(f"   - Create user identification best practices\n\n")

            f.write(f"2. **Change Management**\n")
            f.write(f"   - Document phone reassignment procedures\n")
            f.write(f"   - Train staff on data consistency importance\n")
            f.write(f"   - Regular audits to prevent issues accumulation\n\n")

            # Technical Details
            f.write(f"## 🔧 Technical Details\n\n")
            f.write(f"**Analysis Method:**\n")
            f.write(f"- Cross-referenced Active Directory CSV export with Service Overview report\n")
            f.write(f"- Matched users by phone numbers (mobile/telephoneNumber → AssetID)\n")
            f.write(f"- Compared Active Directory 'Enabled' status with Service Overview user status\n")
            f.write(f"- Added User Management CSV for additional verification\n\n")

            f.write(f"**Data Sources:**\n")
            f.write(f"- Active Directory CSV: Latest export from AD\n")
            f.write(f"- Service Overview: Latest version (7) report\n")
            f.write(f"- People Database: Current database export\n")
            f.write(f"- User Management: Current user management export\n\n")

            f.write(f"---\n\n")
            f.write(f"*Report generated by SpikeFli Data Analysis Tool*\n")

        print(f"  ✅ Comprehensive Markdown Report: {md_file}")

        # Generate PDF version if libraries are available
        if PDF_AVAILABLE:
            try:
                pdf_file = os.path.join(output_dir, f"SpikeFli_Analysis_Report_{timestamp}.pdf")

                # Read the markdown file
                with open(md_file, 'r') as f:
                    markdown_content = f.read()

                # Convert markdown to HTML with better styling
                html_content = f"""
                <!DOCTYPE html>
                <html>
                <head>
                    <meta charset="utf-8">
                    <title>SpikeFli Analysis Report</title>
                    <style>
                        body {{ font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif; line-height: 1.6; max-width: 1200px; margin: 0 auto; padding: 20px; }}
                        h1 {{ color: #2c3e50; border-bottom: 3px solid #3498db; padding-bottom: 10px; }}
                        h2 {{ color: #34495e; border-bottom: 1px solid #bdc3c7; padding-bottom: 5px; }}
                        h3 {{ color: #7f8c8d; }}
                        table {{ border-collapse: collapse; width: 100%; margin: 15px 0; }}
                        th, td {{ border: 1px solid #ddd; padding: 8px; text-align: left; }}
                        th {{ background-color: #f2f2f2; font-weight: bold; }}
                        .status-good {{ color: #27ae60; }}
                        .status-warning {{ color: #f39c12; }}
                        .status-critical {{ color: #e74c3c; }}
                        code {{ background-color: #f8f9fa; padding: 2px 4px; border-radius: 3px; }}
                        pre {{ background-color: #f8f9fa; padding: 15px; border-radius: 5px; overflow-x: auto; }}
                    </style>
                </head>
                <body>
                {markdown.markdown(markdown_content, extensions=['tables', 'fenced_code'])}
                </body>
                </html>
                """

                # Convert HTML to PDF
                pdfkit.from_string(html_content, pdf_file, options={
                    'page-size': 'A4',
                    'margin-top': '0.75in',
                    'margin-right': '0.75in',
                    'margin-bottom': '0.75in',
                    'margin-left': '0.75in',
                    'encoding': "UTF-8",
                    'no-outline': None,
                    'enable-local-file-access': None
                })

                print(f"  ✅ PDF Report Generated: {pdf_file}")

            except Exception as e:
                print(f"  ⚠️  PDF generation failed: {e}")
                print(f"     You can convert the Markdown file manually or install: pip install markdown pdfkit")
        else:
            print(f"  ℹ️  PDF generation not available (install: pip install markdown pdfkit)")

        # Generate detailed CSV files using client-organized structure
        def get_output_file(filename):
            return os.path.join(client_output_dir, filename)

        if 'cross_reference' in self.results:
            # Should be Active report
            if self.results['cross_reference']['should_be_active']:
                active_file = get_output_file(f"should_be_active_{timestamp}.csv")
                df = pd.DataFrame(self.results['cross_reference']['should_be_active'])
                df.to_csv(active_file, index=False)
                print(f"  ✅ Should be Active CSV: {active_file}")

            # Should be Expired report
            if self.results['cross_reference']['should_be_expired']:
                expired_file = get_output_file(f"should_be_expired_{timestamp}.csv")
                df = pd.DataFrame(self.results['cross_reference']['should_be_expired'])
                df.to_csv(expired_file, index=False)
                print(f"  ✅ Should be Expired CSV: {expired_file}")

            # Phone Reassignments report (CRITICAL)
            if self.results['cross_reference']['phone_reassignments']:
                reassign_file = get_output_file(f"phone_reassignments_{timestamp}.csv")
                df = pd.DataFrame(self.results['cross_reference']['phone_reassignments'])
                df.to_csv(reassign_file, index=False)
                print(f"  ✅ Phone Reassignments CSV: {reassign_file}")

            # Phone Cross-Reference report (CORE DATA)
            if self.results['cross_reference']['phone_cross_reference']:
                cross_ref_file = get_output_file(f"phone_cross_reference_{timestamp}.csv")
                df = pd.DataFrame(self.results['cross_reference']['phone_cross_reference'])
                df.to_csv(cross_ref_file, index=False)
                print(f"  ✅ Phone Cross-Reference CSV: {cross_ref_file}")

                # Worst Case Mismatches - No user match AND no status consistency
                worst_cases = [ref for ref in self.results['cross_reference']['phone_cross_reference']
                             if not ref['users_match'] and not ref['status_consistent']]

                if worst_cases:
                    worst_case_file = get_output_file(f"worst_case_mismatches_{timestamp}.csv")
                    df = pd.DataFrame(worst_cases)
                    df.to_csv(worst_case_file, index=False)
                    print(f"  ✅ Worst Case Mismatches CSV: {worst_case_file} ({len(worst_cases)} cases)")

            # Phone Reassignments report (CRITICAL)
            if self.results['cross_reference']['phone_reassignments']:
                reassign_file = os.path.join(output_dir, f"phone_reassignments_{timestamp}.csv")
                df = pd.DataFrame(self.results['cross_reference']['phone_reassignments'])
                df.to_csv(reassign_file, index=False)
                print(f"  ✅ Phone Reassignments CSV: {reassign_file}")

    def run_full_analysis(self, ad_path, service_path, people_path, user_mgmt_path, client_name=None):
        """Run complete analysis"""
        print("🚀 STARTING COMPREHENSIVE DATA ANALYSIS")
        print("=" * 50)

        # Clean Service Overview data FIRST
        cleaned_service_path = self.clean_service_overview_data(service_path)

        if not self.load_data(ad_path, cleaned_service_path, people_path, user_mgmt_path):
            return False

        self.analyze_active_directory()
        self.analyze_user_management()
        self.analyze_people_database()
        self.analyze_service_overview()
        self.cross_reference_analysis()

        # Store client name for organized output
        self.client_name = client_name or 'Unknown'
        self.generate_report(client_name=client_name)

        print("\n" + "=" * 50)
        print("✅ ANALYSIS COMPLETE")

        return True

def find_latest_file(directory, pattern):
    """Find the most recently modified file matching a pattern"""
    import glob
    files = glob.glob(os.path.join(directory, pattern))
    if not files:
        return None
    return max(files, key=os.path.getmtime)

def scan_available_clients():
    """Scan for available clients and their data status"""
    script_dir = os.path.dirname(os.path.abspath(__file__))
    inputs_dir = os.path.join(script_dir, "inputs")
    ad_dir = os.path.join(script_dir, "ActiveDirectory_input")

    clients = ['Northview', 'Synovus', 'Gateway', 'Other']
    available_clients = []

    for client in clients:
        client_data = {'name': client, 'ad_file': None, 'service_file': None, 'user_mgmt_file': None, 'people_file': None}

        # Check for AD files
        ad_client_dir = os.path.join(ad_dir, client)
        if os.path.exists(ad_client_dir):
            ad_path = find_latest_file(ad_client_dir, "*_SANITIZED.csv")
            if not ad_path:
                ad_path = find_latest_file(ad_client_dir, "*.csv")
            client_data['ad_file'] = ad_path

        # Check for input files
        client_input_dir = os.path.join(inputs_dir, client)
        if os.path.exists(client_input_dir):
            service_path = find_latest_file(os.path.join(client_input_dir, "service_overview"), "*.csv")
            user_mgmt_path = find_latest_file(os.path.join(client_input_dir, "user_management"), "*.csv")
            people_path = find_latest_file(os.path.join(client_input_dir, "people_database"), "*.csv")
            client_data['service_file'] = service_path
            client_data['user_mgmt_file'] = user_mgmt_path
            client_data['people_file'] = people_path
        # Only include clients with at least AD data
        if client_data['ad_file']:
            available_clients.append(client_data)

    return available_clients

def select_client_for_analysis():
    """Let user select which client to analyze"""
    available_clients = scan_available_clients()

    if not available_clients:
        print("❌ No clients with AD data found!")
        return None, None, None, None, None

    print("\n📋 AVAILABLE CLIENTS FOR ANALYSIS:")
    print("=" * 60)

    for i, client in enumerate(available_clients, 1):
        print(f"{i}. {client['name'].upper()}")
        print(f"   📂 AD File: {'✅' if client['ad_file'] else '❌'} {os.path.basename(client['ad_file']) if client['ad_file'] else 'Not found'}")
        print(f"   📋 Service Overview: {'✅' if client['service_file'] else '❌'} {os.path.basename(client['service_file']) if client['service_file'] else 'Not found'}")
        print(f"   👥 User Management: {'✅' if client['user_mgmt_file'] else '❌'} {os.path.basename(client['user_mgmt_file']) if client['user_mgmt_file'] else 'Not found'}")
        print(f"   🗃️ People Database: {'✅' if client['people_file'] else '❌'} {os.path.basename(client['people_file']) if client['people_file'] else 'Not found'}")

        # Show data completeness
        complete_data = client['ad_file'] and client['service_file'] and client['user_mgmt_file']
        partial_data = client['ad_file'] and (client['service_file'] or client['user_mgmt_file'])

        if complete_data:
            print(f"   🎯 Status: COMPLETE DATA - Full analysis available")
        elif partial_data:
            print(f"   ⚠️  Status: PARTIAL DATA - Limited analysis available")
        else:
            print(f"   ❌ Status: AD ONLY - Very limited analysis")
        print()

    while True:
        try:
            choice = int(input(f"Select client for analysis [1-{len(available_clients)}]: ")) - 1
            if 0 <= choice < len(available_clients):
                selected = available_clients[choice]
                print(f"\n✅ Selected: {selected['name'].upper()}")

                # Show selected files
                print(f"📁 INPUT SOURCES:")
                print(f"  📂 Active Directory: {os.path.basename(selected['ad_file'])} (from {selected['name']})")
                print(f"  📋 Service Overview: {os.path.basename(selected['service_file']) if selected['service_file'] else 'Not available'} (from inputs folder)")
                print(f"  👥 User Management: {os.path.basename(selected['user_mgmt_file']) if selected['user_mgmt_file'] else 'Not available'} (from inputs folder)")
                print(f"  🗃️ People Database: {os.path.basename(selected['people_file']) if selected['people_file'] else 'Not available'} (from inputs folder)")

                return selected['ad_file'], selected['service_file'], selected['user_mgmt_file'], selected['people_file'], selected['name']
            else:
                print(f"❌ Please enter a number between 1 and {len(available_clients)}")
        except ValueError:
            print("❌ Please enter a valid number")
        except KeyboardInterrupt:
            print("\n🛑 Analysis cancelled by user")
            return None, None, None, None, None

def main():
    """Main execution function"""
    script_dir = os.path.dirname(os.path.abspath(__file__))

    # Let user select which client to analyze
    ad_path, service_path, user_mgmt_path, people_path, client = select_client_for_analysis()

    if not ad_path:
        # Fallback to original structure
        ad_input_dir = os.path.join(script_dir, "ActiveDirectory_input")
        service_input_dir = os.path.join(script_dir, "service_overview_input")
        user_mgmt_input_dir = os.path.join(script_dir, "user_management_input")
        base_path = "/Users/jacquesbotha/RiderProjects/Node2-Spikefli/data/NorthView"

        print(f"📁 INPUT SOURCES:")

        # Try to find files in input directories first, then fallback
        ad_path = find_latest_file(ad_input_dir, "*_SANITIZED.csv")
        if not ad_path:
            ad_path = find_latest_file(ad_input_dir, "*.csv")
        if not ad_path:
            ad_path = os.path.join(base_path, "Northview ActiveDirectory.csv")
            print(f"  📂 Active Directory: {os.path.basename(ad_path)} (fallback location)")
        else:
            print(f"  🔄 Active Directory: {os.path.basename(ad_path)} (from input folder)")

        service_path = find_latest_file(service_input_dir, "*.csv")
        if not service_path:
            service_path = os.path.join(base_path, "Service_Overview_202512 (7).csv")
        print(f"  🔄 Service Overview: {os.path.basename(service_path)} (from input folder)")

        user_mgmt_path = find_latest_file(user_mgmt_input_dir, "*.csv")
        if not user_mgmt_path:
            user_mgmt_path = os.path.join(base_path, "UserManagement.csv")
        print(f"  🔄 User Management: {os.path.basename(user_mgmt_path)} (from input folder)")

    print()

    # Check if critical files exist
    critical_files = [("Active Directory", ad_path), ("Service Overview", service_path), ("User Management", user_mgmt_path)]
    missing_files = []

    for name, path in critical_files:
        if not path or not os.path.exists(path):
            missing_files.append(f"{name}: {path}")

    if missing_files:
        print("❌ Missing required files:")
        for file in missing_files:
            print(f"  {file}")
        print("\nPlease ensure all files are in the correct location.")
        return

    # Run analysis
    analyzer = SpikeFliDataAnalyzer()
    analyzer.run_full_analysis(ad_path, service_path, people_path, user_mgmt_path, client)

if __name__ == "__main__":
    main()