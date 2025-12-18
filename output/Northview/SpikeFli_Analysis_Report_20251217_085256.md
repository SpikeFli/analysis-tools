# SpikeFli Data Analysis Report

**Generated:** December 17, 2025 at 08:52 AM

---

## 🎯 Key Metrics Summary

### 📱 Phone Number Analysis (165 phones analyzed)

| Metric | Count | Percentage | Status |
|--------|-------|------------|--------|
| **Users Match Correctly** | **154** | **93.3%** | ✅ Good |
| **User Mismatches** | **11** | **6.7%** | 🚨 Needs Fix |
| Status Consistency | 165 | 100.0% | ✅ Good |

**🔍 What User Mismatches Mean:**
When a phone number shows **different users** in Service Overview vs Active Directory:
- Service Overview: `John Smith` has phone `555-1234`
- Active Directory: `Sarah Johnson` has phone `555-1234`
- **Root Cause:** Phone was reassigned but Service Overview wasn't updated
- **Impact:** Billing/services assigned to wrong person
- **Solution:** Update Service Overview to match Active Directory

### 🚨 Critical Status Issues (128 total)

| Issue Type | Count | Impact | Priority |
|------------|-------|--------|----------|
| Phone Assignment Issues | 1 | Active employees can't access their phones | 🔴 High |
| **Should be EXPIRED** | **127** | **Paying for unused services** | **🔴 Critical** |
| Correctly EXPIRED | 0 | No action needed | ✅ Good |

**🔍 What These Issues Mean:**
- **Should be EXPIRED:** Users left company but we're still paying for their phone service
- **Phone Assignment Issues:** Phone numbers assigned to wrong users (active employees can't access their phones)

## 🗂️ Active Directory Analysis

| Metric | Count | Percentage |
|--------|-------|------------|
| Total Users | 629 | 100% |
| **Enabled Users** | **524** | **83.3%** |
| Disabled Users | 105 | 16.7% |
| Users with Mobile | 232 | 36.9% |
| Users with Phone | 203 | 32.3% |

## 👥 User Management System Analysis

| Metric | Count | Percentage |
|--------|-------|------------|
| Total User Records | 2683 | 100% |
| **Active Users** | **629** | **23.4%** |
| Expired Users | 2054 | 76.6% |
| AD-Sourced Records | 2598 | 96.8% |
| Other Sources | 85 | 3.2% |

## 🗃️ People Database Analysis

| Metric | Count | Percentage |
|--------|-------|------------|
| Total AD Records | 2598 | 100% |
| **Active Records** | **534** | **20.6%** |
| Expired Records | 2064 | 79.4% |
| Duplicate Records | 0 | - |

✅ **No duplicates found in People database**

## 📋 Service Overview Analysis

| Metric | Count |
|--------|-------|
| Total Entries with Users | 325 |
| Active Entries | 323 |
| Expired Entries | 34 |

## 📞 Phone Number Cross-Reference Analysis (165 phones matched)

**THIS IS THE CORE ANALYSIS:** Shows how phone numbers match between Service Overview and Active Directory:

| Phone Number | Service Overview User | AD User | Users Match | Status Consistent |
|--------------|----------------------|---------|-------------|-------------------|
| 2048077564 | Refik Muheljic | Refik Muheljic | ✅ YES | ✅ YES |
| 2048900224 | Paula Raiado | Paula Raiado | ✅ YES | ✅ YES |
| 2048900255 | Ignacio Gonzalez | Ignacio Gonzalez | ✅ YES | ✅ YES |
| 2048900259 | Jesus Donat-Gisbert | Jesus Donat-Gisbert | ✅ YES | ✅ YES |
| 2048900266 | Bohdan Miniailo | Bohdan Miniailo | ✅ YES | ✅ YES |
| 2048900287 | Vadym Melnyk | Vadym Melnyk | ✅ YES | ✅ YES |
| 2048900302 | Roxana Besora | Roxana Besora | ✅ YES | ✅ YES |
| 2048900307 | Danilo Cairo | Danilo Cairo | ✅ YES | ✅ YES |
| 2048900311 | Francisco Rodriguez | Francisco Rodriguez | ✅ YES | ✅ YES |
| 2048900312 | Anthony Kamal | Anthony Kamal | ✅ YES | ✅ YES |
| 2048900320 | Nikita Arora | Nikita Arora | ✅ YES | ✅ YES |
| 2048900325 | Justin Sumagui | Justin Sumagui | ✅ YES | ✅ YES |
| 2048900329 | Johnathan Martens | Johnathan Martens | ✅ YES | ✅ YES |
| 2048900342 | Eliza Leal | Eliza Leal | ✅ YES | ✅ YES |
| 2049142049 | Danielle Wright | Danielle Wright | ✅ YES | ✅ YES |
| 2502633335 | Christal Ritchie | Christal Ritchie | ✅ YES | ✅ YES |
| 2503013255 | Janell Lovelace | Janell Lovelace | ✅ YES | ✅ YES |
| 2503013274 | Thomas Redden | Thomas Redden | ✅ YES | ✅ YES |
| 2503013672 | Fausto Toraya-Madrid | Fausto Toraya-Madrid | ✅ YES | ✅ YES |
| 2503274819 | Michael Townsend | Michael Townsend | ✅ YES | ✅ YES |
| 2507197496 | Sheryl Olson | Jessica Murray | ❌ NO | ✅ YES |
| 2507197749 | Dawson Martin-Fisher | Dawson Martin-Fisher | ✅ YES | ✅ YES |
| 3062017203 | Danielle Loverick | Danielle Loverick | ✅ YES | ✅ YES |
| 3065150071 | Kirk Duaine Anor | Kirk Duaine Anor | ✅ YES | ✅ YES |
| 4033080167 | Joe Giacalone | Joe Giacalone | ✅ YES | ✅ YES |
| 4034086397 | Langis Donnelly | Langis Donnelly | ✅ YES | ✅ YES |
| 4034378367 | Leilani MacQuarrie | Leilani MacQuarrie | ✅ YES | ✅ YES |
| 4034640149 | Nabeel Virk | Nabeel Virk | ✅ YES | ✅ YES |
| 4034646874 | James Jordaan | James Jordaan | ✅ YES | ✅ YES |
| 4034652498 | Ryan Lintner | Ryan Lintner | ✅ YES | ✅ YES |
| 4034660988 | Sarah Walker | Sarah Walker | ✅ YES | ✅ YES |
| 4034665562 | Brian Pedersen | Brian Pedersen | ✅ YES | ✅ YES |
| 4035610341 | Varun Sharma | Varun Sharma | ✅ YES | ✅ YES |
| 4035892280 | Patti Hansen | Patti Hansen | ✅ YES | ✅ YES |
| 4036131175 | Todd Cook | Todd Cook | ✅ YES | ✅ YES |
| 4036601812 | Khris Huxley | Khris Huxley | ✅ YES | ✅ YES |
| 4037953166 | Tammie Cameron | Tammie Cameron | ✅ YES | ✅ YES |
| 4037962467 | Randy Dean | Randy Dean | ✅ YES | ✅ YES |
| 4037962619 | Leny Cuaresma | Leny Cuaresma | ✅ YES | ✅ YES |
| 4038018445 | Monika Garwol | Monika Garwol | ✅ YES | ✅ YES |
| 4038354026 | Jayson Hinds | Jayson Hinds | ✅ YES | ✅ YES |
| 4038367248 | Adam Hobkirk | Adam Hobkirk | ✅ YES | ✅ YES |
| 4038377224 | Brittany Freeborn | Brittany Freeborn | ✅ YES | ✅ YES |
| 4039157623 | Mariana Menezes | Mariana Menezes | ✅ YES | ✅ YES |
| 4039157816 | Jason Ward | Jason Ward | ✅ YES | ✅ YES |
| 4039158090 | Dwayne Gagnon | Dwayne Gagnon | ✅ YES | ✅ YES |
| 4039234946 | Rebecca Beloin | Rebecca Beloin | ✅ YES | ✅ YES |
| 4313238282 | Scott McCormick | Scott McCormick | ✅ YES | ✅ YES |
| 4313238596 | Marisol Soto | Marisol Soto | ✅ YES | ✅ YES |
| 4313346105 | Luciano Echavarria | Tiago Chiesorin | ❌ NO | ✅ YES |
| 4313346412 | David Lawrence | David Lawrence | ✅ YES | ✅ YES |
| 4313346784 | Gail Wach | Gail Wach | ✅ YES | ✅ YES |
| 4313376456 | Jose Castellanos | Jose Castellanos | ✅ YES | ✅ YES |
| 5062692587 | Lyndon Murray | Lyndon Murray | ✅ YES | ✅ YES |
| 5063783026 | Glenn Ostulano | Glenn Ostulano | ✅ YES | ✅ YES |
| 5063783541 | David Steeves | David Steeves | ✅ YES | ✅ YES |
| 5063784157 | Gilles Gaudet | Gilles Gaudet | ✅ YES | ✅ YES |
| 5063810448 | Rachelle Couture | Angela Fitzpatrick | ❌ NO | ✅ YES |
| 5063813165 | Jackie Stewart | Jackie Stewart | ✅ YES | ✅ YES |
| 5063815178 | Claudia Steeves | Claudia Steeves | ✅ YES | ✅ YES |
| 5063816622 | Jayda Ballantyne | Jayda Ballantyne | ✅ YES | ✅ YES |
| 5063819452 | Fadel Alhaddad | Fadel Alhaddad | ✅ YES | ✅ YES |
| 5068520745 | Matthew Ellis | Matthew Ellis | ✅ YES | ✅ YES |
| 5068521315 | Ramos Evangelista | Ramos Evangelista | ✅ YES | ✅ YES |
| 5068526504 | Sheila Girouard | Sheila Girouard | ✅ YES | ✅ YES |
| 5068669816 | Priscilla Arsenault | Priscilla Arsenault | ✅ YES | ✅ YES |
| 5068724363 | Lisa Caissie | Lisa Caissie | ✅ YES | ✅ YES |
| 5068750421 | Wanetta Cavanaugh | Wanetta Cavanaugh | ✅ YES | ✅ YES |
| 5068751582 | Michel Mercier | Michel Mercier | ✅ YES | ✅ YES |
| 5873434403 | Ashley Quann | Ashley Quann | ✅ YES | ✅ YES |
| 5873435985 | Dave Sweet | Dave Sweet | ✅ YES | ✅ YES |
| 5873436688 | Jill Langevin | Jill Langevin | ✅ YES | ✅ YES |
| 5873703965 | Rose Ricketts | Rose Ricketts | ✅ YES | ✅ YES |
| 5873704377 | William Barton | William Barton | ✅ YES | ✅ YES |
| 5873983046 | Rodney Bradshaw | Rodney Bradshaw | ✅ YES | ✅ YES |
| 5873983303 | Brent Henschel | Brent Henschel | ✅ YES | ✅ YES |
| 5874345991 | Dacoda McCaffrey | Dacoda McCaffrey | ✅ YES | ✅ YES |
| 5874359157 | Anthony Parker | Anthony Parker | ✅ YES | ✅ YES |
| 5874371511 | Alex Machell | Alex Machell | ✅ YES | ✅ YES |
| 5878301876 | Ali Mirza | Alicia Eaton | ❌ NO | ✅ YES |
| 5878391278 | Olive Anon | Olive Anon | ✅ YES | ✅ YES |
| 5879195938 | Deanna Wight | Deanna Wight | ✅ YES | ✅ YES |
| 6395602467 | Drew Savoie | Drew Savoie | ✅ YES | ✅ YES |
| 6395712243 | Katie Andrade | Katie Andrade | ✅ YES | ✅ YES |
| 7092800373 | Natasha Reid | Natasha Reid | ✅ YES | ✅ YES |
| 7092806432 | Labrador On-Call | Labrador On-Call | ✅ YES | ✅ YES |
| 7093276934 | Doreen Moyst | Doreen Moyst | ✅ YES | ✅ YES |
| 7093303479 | Melvin Harding | Melvin Harding | ✅ YES | ✅ YES |
| 7096311938 | Ashley Winsor | Ashley Winsor | ✅ YES | ✅ YES |
| 7096312187 | Jon Whelan | Jon Whelan | ✅ YES | ✅ YES |
| 7096803197 | Michael Carriere | Michael Carriere | ✅ YES | ✅ YES |
| 7096820283 | Christa Chaulk | Christa Chaulk | ✅ YES | ✅ YES |
| 7096820648 | Patrick Barron | Patrick Barron | ✅ YES | ✅ YES |
| 7096828800 | Darlene Rendell | Darlene Rendell | ✅ YES | ✅ YES |
| 7096829022 | Jordan Alexander | Jordan Alexander | ✅ YES | ✅ YES |
| 7096853163 | Mary Flynn | Mary Flynn | ✅ YES | ✅ YES |
| 7096878394 | Joseph Noble | Jimson Millare | ❌ NO | ✅ YES |
| 7096879177 | Julia Holden | Julia Holden | ✅ YES | ✅ YES |
| 7096907734 | Dave King | Dave King | ✅ YES | ✅ YES |
| 7096917677 | SJ OnCallFloater | SJ OnCallFloater | ✅ YES | ✅ YES |
| 7096918698 | James Williams | James Williams | ✅ YES | ✅ YES |
| 7096970371 | Colleen Mavin | Colleen Mavin | ✅ YES | ✅ YES |
| 7096974537 | Sheila Todd | Sheila Todd | ✅ YES | ✅ YES |
| 7097255569 | Houman Pourali | Houman Pourali | ✅ YES | ✅ YES |
| 7097270003 | Stanley Manstan | Stanley Manstan | ✅ YES | ✅ YES |
| 7097271437 | Oleh Viernik | Oleh Viernik | ✅ YES | ✅ YES |
| 7097278900 | William Hann | William Hann | ✅ YES | ✅ YES |
| 7097282534 | Glen Bragg | Glen Bragg | ✅ YES | ✅ YES |
| 7097284316 | Brian James | Brian James | ✅ YES | ✅ YES |
| 7097302174 | Valerie Power | Valerie Power | ✅ YES | ✅ YES |
| 7097304884 | Katherine Graham | Menchene Mationg | ❌ NO | ✅ YES |
| 7097714226 | Rhonda Tucker | Rhonda Tucker | ✅ YES | ✅ YES |
| 7099441752 | Shilo Hodder | Shilo Hodder | ✅ YES | ✅ YES |
| 7802051972 | Kyle Godin | Kyle Godin | ✅ YES | ✅ YES |
| 7802075649 | Amber Babcock | Amber Babcock | ✅ YES | ✅ YES |
| 7802107923 | Troy Goreski | Joshua Buckley | ❌ NO | ✅ YES |
| 7802141300 | Donna Croucher | Donna Croucher | ✅ YES | ✅ YES |
| 7802147037 | Adrian J. Reynolds | Dorothy Holloway | ❌ NO | ✅ YES |
| 7805121350 | Tara Pierce | Tara Pierce | ✅ YES | ✅ YES |
| 7805228338 | Jaime Osborne | Jaime Osborne | ✅ YES | ✅ YES |
| 7805310898 | Dexter Labinio | Dexter Labinio | ✅ YES | ✅ YES |
| 7805982962 | Caroline Mutua | Caroline Mutua | ✅ YES | ✅ YES |
| 7806147551 | Marshall Tomlinson | Marshall Tomlinson | ✅ YES | ✅ YES |
| 7806148391 | Troy Goreski | Troy Goreski | ✅ YES | ✅ YES |
| 7807429268 | Maintenance Fort McMurray | Maintenance Fort McMurray | ✅ YES | ✅ YES |
| 7808056760 | Susan Vatamaniuck | Susan Vatamaniuck | ✅ YES | ✅ YES |
| 7808056803 | Dixon Twin | Dixon Twin | ✅ YES | ✅ YES |
| 7808200784 | Jordan Deck | Jordan Deck | ✅ YES | ✅ YES |
| 7808383029 | Sandy Nicolson | Sandy Nicolson | ✅ YES | ✅ YES |
| 7808385292 | Winnie Roberts | Winnie Roberts | ✅ YES | ✅ YES |
| 7808385770 | Dawn Collier | Dawn Collier | ✅ YES | ✅ YES |
| 7808527943 | Barry Gilbert | Barry Gilbert | ✅ YES | ✅ YES |
| 7808706995 | Roberta Russell | Roberta Russell | ✅ YES | ✅ YES |
| 7808722637 | Natasha Dumont | Natasha Dumont | ✅ YES | ✅ YES |
| 8676696400 | Michael Garcia | Sang Nguyen | ❌ NO | ❌ NO |
| 8679792395 | Linay Freda | Linay Freda | ✅ YES | ✅ YES |
| 8679793537 | Ted Walker | Ted Walker | ✅ YES | ✅ YES |
| 8674440731 | Yellowknife On-Call | Yellowknife On-Call | ✅ YES | ✅ YES |
| 8674449619 | Wayne Heron | Wayne Heron | ✅ YES | ✅ YES |
| 8674451969 | Colleen Wellborn | Colleen Wellborn | ✅ YES | ✅ YES |
| 8674451993 | Luke Edgar | Luke Edgar | ✅ YES | ✅ YES |
| 8674457382 | Joshua Kaiser - YK RM | James Iko | ❌ NO | ✅ YES |
| 8674457762 | Jason George | Jason George | ✅ YES | ✅ YES |
| 8674458202 | Rolando DelaCruz | Rolando DelaCruz | ✅ YES | ✅ YES |
| 8674460216 | Steve Kerr | Steve Kerr | ✅ YES | ✅ YES |
| 8674460773 | Christopher De La paz | Christopher De La paz | ✅ YES | ✅ YES |
| 8674460775 | YK Security | Keven Schidlowsky | ❌ NO | ✅ YES |
| 8674460876 | Newton Grey | Newton Grey | ✅ YES | ✅ YES |
| 8674460982 | Russell Pambid | Russell Pambid | ✅ YES | ✅ YES |
| 8674461192 | Noriyuki Matsuo | Noriyuki Matsuo | ✅ YES | ✅ YES |
| 8674462814 | Brian Maule | Brian Maule | ✅ YES | ✅ YES |
| 8676867984 | Michael Williams | Michael Williams | ✅ YES | ✅ YES |
| 8676868235 | Sheldon Rideout | Sheldon Rideout | ✅ YES | ✅ YES |
| 9022105313 | Rosemarie Abou-Khalil | Rosemarie Abou-Khalil | ✅ YES | ✅ YES |
| 9023292678 | Zlatoslava Rudnytska | Zlatoslava Rudnytska | ✅ YES | ✅ YES |
| 9024414678 | Roger Comeau | Roger Comeau | ✅ YES | ✅ YES |
| 9025793450 | Olga Romanos | Olga Romanos | ✅ YES | ✅ YES |
| 9025794766 | Josh Kaiser | Josh Kaiser | ✅ YES | ✅ YES |
| 9027172263 | Dana Luddington | Dana Luddington | ✅ YES | ✅ YES |
| 9027899936 | Brenda Laplante | Brenda Laplante | ✅ YES | ✅ YES |
| 9027899939 | Beverly Brown | Beverly Brown | ✅ YES | ✅ YES |
| 9027899963 | Brian Tomale | Brian Tomale | ✅ YES | ✅ YES |
| 9028097185 | Terry Wentworth | Terry Wentworth | ✅ YES | ✅ YES |
| 9028300459 | Kelly Ryan | Kelly Ryan | ✅ YES | ✅ YES |
| 9029435118 | Justin Bautista | Justin Bautista | ✅ YES | ✅ YES |

**Cross-Reference Summary:**
- Phone numbers with matching users: 154/165 (93.3%)
- Phone numbers with consistent status: 164/165 (99.4%)

## 📱 Phone Number Reassignments (11 found)

**🚨 CRITICAL ISSUE:** These phone numbers have different users in Service Overview vs Active Directory:

| Phone Number | Service Overview User | Active Directory User | Service Status | AD Status |
|--------------|----------------------|----------------------|----------------|----------|
| 2507197496 | Sheryl Olson | Jessica Murray | Active | Enabled |
| 4313346105 | Luciano Echavarria | Tiago Chiesorin | Active | Enabled |
| 5063810448 | Rachelle Couture | Angela Fitzpatrick | Active | Enabled |
| 5878301876 | Ali Mirza | Alicia Eaton | Active | Enabled |
| 7096878394 | Joseph Noble | Jimson Millare | Active | Enabled |
| 7097304884 | Katherine Graham | Menchene Mationg | Active | Enabled |
| 7802107923 | Troy Goreski | Joshua Buckley | Active | Enabled |
| 7802147037 | Adrian J. Reynolds | Dorothy Holloway | Active | Enabled |
| 8676696400 | Michael Garcia | Sang Nguyen | Expired | Enabled |
| 8674457382 | Joshua Kaiser - YK RM | James Iko | Active | Enabled |
| 8674460775 | YK Security | Keven Schidlowsky | Active | Enabled |

**This is the core problem:** When John Doe leaves and Sarah McLachlan gets his phone number,
the Service Overview still shows John Doe but AD shows Sarah McLachlan.

## 🚨 Critical Issues Requiring Immediate Attention

### 🟡 Phone Assignment Issues (1 found)

These phone numbers are assigned to **EXPIRED users** in Service Overview, but the phones actually belong to **ACTIVE employees** in Active Directory:

| Phone Number | Service Overview User | Active Directory User | Problem |
|--------------|----------------------|----------------------|---------|
| 8676696400 | Michael Garcia | Sang Nguyen | Service shows Expired but AD shows Enabled |

### 🔴 Users Who Should Be EXPIRED (127 found)

**💰 FINANCIAL IMPACT:** These are users NOT in Active Directory but we're still paying for their phone services.

| Phone Number | Service Overview User | Problem |
|--------------|----------------------|---------|
| 200034338 | Account Name: | Service shows Active but phone not in AD |
| 2048900303 | NOT FOUND FOUND | Service shows Active but phone not in AD |
| 2049305328 | SECURITY GUARD | Service shows Active but phone not in AD |
| 2265833438 | JASON HARRISON | Service shows Active but phone not in AD |
| 2269205453 | EDWARD PALUMBO | Service shows Active but phone not in AD |
| 2269347732 | FOR REVIEW | Service shows Active but phone not in AD |
| 2502247636 | Jennifer Mader | Service shows Active but phone not in AD |
| 2507846853 | Karl Wannamaker | Service shows Active but phone not in AD |
| 2507947763 | PROPERTY ADMIN | Service shows Active but phone not in AD |
| 2508950419 | NOT FOUND | Service shows Active but phone not in AD |
| 33310689000000 | Account Name: | Service shows Active but phone not in AD |
| 33310496000000 | Account Name: | Service shows Active but phone not in AD |
| 3659944741 | LIVE MAINTENANCE BRANTFOR | Service shows Active but phone not in AD |
| 4034635050 | Bhakti Makwana | Service shows Active but phone not in AD |
| 4035406684 | Travis Byspalko | Service shows Active but phone not in AD |
| 4037105081 | Angela Chios | Service shows Active but phone not in AD |
| 4038010579 | Adam Hobkirk | Service shows Active but phone not in AD |
| 4038160231 | Michael Hinz | Service shows Active but phone not in AD |
| 4038266739 | Karl Bomhof | Service shows Active but phone not in AD |
| 4038924754 | Peter Mansfield | Service shows Active but phone not in AD |
| 4039234872 | Peggy Thomson | Service shows Active but phone not in AD |
| 5062047527 | NORTHVIEW APARTMENT | Service shows Active but phone not in AD |
| 5062047528 | NORTHVIEW APARTMENT | Service shows Active but phone not in AD |
| 5062047529 | NORTHVIEW APARTMENT | Service shows Active but phone not in AD |
| 5062529407 | Michel Mercier | Service shows Active but phone not in AD |
| 5068302800 | STARLIGHT INVETMENTS | Service shows Active but phone not in AD |
| 5068715197 | Enrik Laforge | Service shows Active but phone not in AD |
| 5198616643 | BRANTFORD ADMIN | Service shows Active but phone not in AD |
| 5872246070 | Janice Major | Service shows Active but phone not in AD |
| 5873437814 | ORBIE WESTMORE | Service shows Active but phone not in AD |
| 5875753327 | RIDGEVIEW BOILER | Service shows Active but phone not in AD |
| 5875753359 | BISON BOILER | Service shows Active but phone not in AD |
| 5875754395 | SANDSTONE BOILER | Service shows Active but phone not in AD |
| 5875754419 | MATONABEE BOILER | Service shows Active but phone not in AD |
| 5875754681 | NORSEMAN BOILER | Service shows Active but phone not in AD |
| 5875755698 | PTARMIGAN BOILER | Service shows Active but phone not in AD |
| 5878371652 | Christina Ren | Service shows Active but phone not in AD |
| 5878929292 | Andrew Phonsavath | Service shows Active but phone not in AD |
| 7052047366 | Vadym Melnyk | Service shows Active but phone not in AD |
| 7097490157 | .. | Service shows Active but phone not in AD |
| 7096933411 | Brad Pelley | Service shows Active but phone not in AD |
| 7096939312 | Ronald Ivany | Service shows Active but phone not in AD |
| 7809018402 | Ann Campbell | Service shows Active but phone not in AD |
| 8676696456 | Account Name: | Service shows Active but phone not in AD |
| 8676696725 | Account Name: | Service shows Active but phone not in AD |
| 8676697481 | Account Name: | Service shows Active but phone not in AD |
| 8676698821 | Account Name: | Service shows Active but phone not in AD |
| 8678732358 | Account Name: | Service shows Active but phone not in AD |
| 8679207526 | Account Name: | Service shows Active but phone not in AD |
| 8679752219 | Account Name: | Service shows Active but phone not in AD |
| 8679752389 | Account Name: | Service shows Active but phone not in AD |
| 8679752509 | Account Name: | Service shows Active but phone not in AD |
| 8679752547 | Account Name: | Service shows Active but phone not in AD |
| 8679752550 | Account Name: | Service shows Active but phone not in AD |
| 8679752680 | Account Name: | Service shows Active but phone not in AD |
| 8679753126 | Account Name: | Service shows Active but phone not in AD |
| 8679790028 | Account Name: | Service shows Active but phone not in AD |
| 8679790080 | Account Name: | Service shows Active but phone not in AD |
| 8679790087 | Account Name: | Service shows Active but phone not in AD |
| 8679790108 | Account Name: | Service shows Active but phone not in AD |
| 8679790128 | Account Name: | Service shows Active but phone not in AD |
| 8679790135 | Account Name: | Service shows Active but phone not in AD |
| 8679790136 | Account Name: | Service shows Active but phone not in AD |
| 8679790138 | Account Name: | Service shows Active but phone not in AD |
| 8679790143 | Account Name: | Service shows Active but phone not in AD |
| 8679790144 | Account Name: | Service shows Active but phone not in AD |
| 8679790172 | Account Name: | Service shows Active but phone not in AD |
| 8679790176 | Account Name: | Service shows Active but phone not in AD |
| 8679790356 | Account Name: | Service shows Active but phone not in AD |
| 8679790380 | Account Name: | Service shows Active but phone not in AD |
| 8679790829 | Account Name: | Service shows Active but phone not in AD |
| 8679791114 | Account Name: | Service shows Active but phone not in AD |
| 8679791191 | Account Name: | Service shows Active but phone not in AD |
| 8679791394 | Account Name: | Service shows Active but phone not in AD |
| 8679791403 | Account Name: | Service shows Active but phone not in AD |
| 8679791440 | Account Name: | Service shows Active but phone not in AD |
| 8679791523 | Account Name: | Service shows Active but phone not in AD |
| 8679791754 | Account Name: | Service shows Active but phone not in AD |
| 8679791794 | Account Name: | Service shows Active but phone not in AD |
| 8679791827 | Account Name: | Service shows Active but phone not in AD |
| 8679791852 | Account Name: | Service shows Active but phone not in AD |
| 8679791853 | Account Name: | Service shows Active but phone not in AD |
| 8679792041 | Account Name: | Service shows Active but phone not in AD |
| 8679792045 | Account Name: | Service shows Active but phone not in AD |
| 8679792199 | Account Name: | Service shows Active but phone not in AD |
| 8679792375 | Account Name: | Service shows Active but phone not in AD |
| 8679792520 | Account Name: | Service shows Active but phone not in AD |
| 8679792858 | Account Name: | Service shows Active but phone not in AD |
| 8679792938 | Account Name: | Service shows Active but phone not in AD |
| 8679792985 | Account Name: | Service shows Active but phone not in AD |
| 8679793135 | Account Name: | Service shows Active but phone not in AD |
| 8679793137 | Account Name: | Service shows Active but phone not in AD |
| 8679793145 | Account Name: | Service shows Active but phone not in AD |
| 8679793378 | Account Name: | Service shows Active but phone not in AD |
| 8679793538 | Account Name: | Service shows Active but phone not in AD |
| 8679793543 | Account Name: | Service shows Active but phone not in AD |
| 8679793585 | Account Name: | Service shows Active but phone not in AD |
| 8679793740 | Account Name: | Service shows Active but phone not in AD |
| 8679793752 | Account Name: | Service shows Active but phone not in AD |
| 8679793985 | Account Name: | Service shows Active but phone not in AD |
| 8679794034 | Account Name: | Service shows Active but phone not in AD |
| 8679794048 | Account Name: | Service shows Active but phone not in AD |
| 8679794091 | Account Name: | Service shows Active but phone not in AD |
| 8679794260 | Account Name: | Service shows Active but phone not in AD |
| 8679795759 | Account Name: | Service shows Active but phone not in AD |
| 8679796421 | Account Name: | Service shows Active but phone not in AD |
| 8679796529 | Account Name: | Service shows Active but phone not in AD |
| 8679796756 | Account Name: | Service shows Active but phone not in AD |
| 8679796974 | Account Name: | Service shows Active but phone not in AD |
| 8679797047 | Account Name: | Service shows Active but phone not in AD |
| 8679797066 | Account Name: | Service shows Active but phone not in AD |
| 8679797720 | Account Name: | Service shows Active but phone not in AD |
| 8679797798 | Account Name: | Service shows Active but phone not in AD |
| 8679797863 | Account Name: | Service shows Active but phone not in AD |
| 8679798823 | Account Name: | Service shows Active but phone not in AD |
| 8679798852 | Account Name: | Service shows Active but phone not in AD |
| 8679798863 | Account Name: | Service shows Active but phone not in AD |
| 8679798867 | Account Name: | Service shows Active but phone not in AD |
| 8674453688 | NOT FOUND | Service shows Active but phone not in AD |
| 8674460301 | Sheldon Rideout | Service shows Active but phone not in AD |
| 8674460772 | Ervis Minina | Service shows Active but phone not in AD |
| 9028176569 | Kenneth Yurett | Service shows Active but phone not in AD |
| 9028309030 | Melojane Tomale | Service shows Active but phone not in AD |
| 260087863201 | C NORTHVIEW APARTMENTS, 66 ESSEX ST UNIT CMMON | Service shows Active but phone not in AD |
| 726122575 | NORTHVIEW APARTMENT REIT, 100 DU MARCHE RUE UNIT CMMON, NORTHVIEW APARTMENT REIT, 100 DU MARCHE RUE UNIT CMMON | Service shows Active but phone not in AD |
| 320428 | Account Name: | Service shows Active but phone not in AD |
| 320900 | Account Name: | Service shows Active but phone not in AD |

**🔍 What These Entries Represent:**
- **Former Employees:** Left company but phone service still active
- **Service Accounts:** Shared numbers like 'SECURITY GUARD', 'MAINTENANCE'
- **Equipment Numbers:** Phones for elevators, boilers, common areas
- **Data Entry Errors:** Typos or formatting issues
- **Reassigned Numbers:** Phone given to new employee but not updated

**💡 Recommended Action:** Review each entry to determine if service should be cancelled or reassigned.

## 🎯 Recommended Actions

### Immediate Priority (High Impact)

1. **Fix 1 incorrectly expired users**
   - These are active employees showing as expired in Service Overview
   - Run Active Directory processor or update database directly

2. **Review 127 users marked as active**
   - Cross-reference with UserManagement.csv for verification
   - Check for phone number reassignments
   - Identify service accounts vs actual users

## 🚀 Strategic Recommendations

### 💰 Cost Optimization (High Priority)
1. **Audit Expired Services** - Review 127 services marked as active but not in AD
   - Potential monthly savings by cancelling unused services
   - Identify service accounts vs former employees
   - Implement automated service termination for departed staff

2. **Phone Number Management** - Address 11 user mismatches
   - Update Service Overview when phones are reassigned
   - Implement phone reassignment tracking process
   - Ensure billing accuracy for current users

### 🔧 Process Automation (Medium Priority)
1. **Active Directory Integration**
   - Automate status updates from AD to Service Overview
   - Implement real-time synchronization for user changes
   - Add validation rules to prevent data inconsistencies

2. **Monitoring & Alerting**
   - Set up weekly data consistency reports
   - Alert on new status mismatches exceeding threshold
   - Track key metrics: user matches, status consistency, cost impact

### 📊 Data Governance (Ongoing)
1. **Quality Standards**
   - Establish phone number format standards
   - Implement data validation at entry points
   - Create user identification best practices

2. **Change Management**
   - Document phone reassignment procedures
   - Train staff on data consistency importance
   - Regular audits to prevent issues accumulation

## 🔧 Technical Details

**Analysis Method:**
- Cross-referenced Active Directory CSV export with Service Overview report
- Matched users by phone numbers (mobile/telephoneNumber → AssetID)
- Compared Active Directory 'Enabled' status with Service Overview user status
- Added User Management CSV for additional verification

**Data Sources:**
- Active Directory CSV: Latest export from AD
- Service Overview: Latest version (7) report
- People Database: Current database export
- User Management: Current user management export

---

*Report generated by SpikeFli Data Analysis Tool*
