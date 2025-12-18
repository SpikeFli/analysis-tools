# SpikeFli Data Analysis Report

**Generated:** December 17, 2025 at 11:56 AM

---

## 🎯 Key Metrics Summary

### 📱 Phone Number Analysis (2266 phones analyzed)

| Metric | Count | Percentage | Status |
|--------|-------|------------|--------|
| **Users Match Correctly** | **2209** | **97.5%** | ✅ Good |
| **User Mismatches** | **57** | **2.5%** | 🚨 Needs Fix |
| Status Consistency | 2266 | 100.0% | ✅ Good |

**🔍 What User Mismatches Mean:**
When a phone number shows **different users** in Service Overview vs Active Directory:
- Service Overview: `John Smith` has phone `555-1234`
- Active Directory: `Sarah Johnson` has phone `555-1234`
- **Root Cause:** Phone was reassigned but Service Overview wasn't updated
- **Impact:** Billing/services assigned to wrong person
- **Solution:** Update Service Overview to match Active Directory

### 🚨 Critical Status Issues (589 total)

| Issue Type | Count | Impact | Priority |
|------------|-------|--------|----------|
| Phone Assignment Issues | 1 | Active employees can't access their phones | 🔴 High |
| **Should be EXPIRED** | **588** | **Paying for unused services** | **🔴 Critical** |
| Correctly EXPIRED | 0 | No action needed | ✅ Good |

**🔍 What These Issues Mean:**
- **Should be EXPIRED:** Users left company but we're still paying for their phone service
- **Phone Assignment Issues:** Phone numbers assigned to wrong users (active employees can't access their phones)

## 🗂️ Active Directory Analysis

| Metric | Count | Percentage |
|--------|-------|------------|
| Total Users | 12019 | 100% |
| **Enabled Users** | **12019** | **100.0%** |
| Disabled Users | 0 | 0.0% |
| Users with Mobile | 3294 | 27.4% |
| Users with Phone | 7045 | 58.6% |

## 👥 User Management System Analysis

| Metric | Count | Percentage |
|--------|-------|------------|
| Total User Records | 23238 | 100% |
| **Active Users** | **11980** | **51.6%** |
| Expired Users | 11258 | 48.4% |
| AD-Sourced Records | 22909 | 98.6% |
| Other Sources | 329 | 1.4% |

## 🗃️ People Database Analysis

| Metric | Count | Percentage |
|--------|-------|------------|
| Total AD Records | 22907 | 100% |
| **Active Records** | **11978** | **52.3%** |
| Expired Records | 10929 | 47.7% |
| Duplicate Records | 1501 | - |

⚠️ **WARNING: 1501 duplicate records found in People database**

## 📋 Service Overview Analysis

| Metric | Count |
|--------|-------|
| Total Entries with Users | 3589 |
| Active Entries | 3875 |
| Expired Entries | 736 |

## 📞 Phone Number Cross-Reference Analysis (2266 phones matched)

**THIS IS THE CORE ANALYSIS:** Shows how phone numbers match between Service Overview and Active Directory:

| Phone Number | Service Overview User | AD User | Users Match | Status Consistent |
|--------------|----------------------|---------|-------------|-------------------|
| 3068201200 | Jeffery Leonard | Jeffery Leonard | ✅ YES | ✅ YES |
| 3068201201 | Curtis Thompson | Curtis Thompson | ✅ YES | ✅ YES |
| 3068201202 | Andy Norman | Andy Norman | ✅ YES | ✅ YES |
| 3068201203 | Todd Larson | Todd Larson | ✅ YES | ✅ YES |
| 3068201204 | Keenan Fowler | Keenan Fowler | ✅ YES | ✅ YES |
| 3068201205 | Roxetta Block | Roxetta Block | ✅ YES | ✅ YES |
| 3068201206 | Chloe Hassall | Chloe Hassall | ✅ YES | ✅ YES |
| 3068201208 | Richard Fountain | Richard Fountain | ✅ YES | ✅ YES |
| 3068201213 | Darryl Clark | Darryl Clark | ✅ YES | ✅ YES |
| 3068201214 | Christopher Prokopetz | Christopher Prokopetz | ✅ YES | ✅ YES |
| 3068201215 | Jay Newton-Wakely | Jay Newton-Wakely | ✅ YES | ✅ YES |
| 3068201224 | Wayne Fulton | Wayne Fulton | ✅ YES | ✅ YES |
| 3068201226 | James Boutkan | James Boutkan | ✅ YES | ✅ YES |
| 3068201227 | Ken Baert | Ken Baert | ✅ YES | ✅ YES |
| 3068201228 | Mark Crittenden | Mark Crittenden | ✅ YES | ✅ YES |
| 3068201232 | Jeremy Reiter | Jeremy Reiter | ✅ YES | ✅ YES |
| 3068201236 | Todd Thorpe | Todd Thorpe | ✅ YES | ✅ YES |
| 3068201242 | Blair Leonard | Blair Leonard | ✅ YES | ✅ YES |
| 3068201245 | James Ruller | James Ruller | ✅ YES | ✅ YES |
| 3068201248 | Cody Varjassy | Cody Varjassy | ✅ YES | ✅ YES |
| 3068201250 | Pauline Kovacs | Kevin Greenaway | ❌ NO | ✅ YES |
| 3068201252 | Michelle Robinson | Michelle Robinson | ✅ YES | ✅ YES |
| 3068201258 | Nathan Ash | Nathan Ash | ✅ YES | ✅ YES |
| 3068201259 | Paul Booth | Paul Booth | ✅ YES | ✅ YES |
| 3068201260 | Shawn Malinowski | Shawn Malinowski | ✅ YES | ✅ YES |
| 3068201265 | Tina Burns | Tina Burns | ✅ YES | ✅ YES |
| 3068201277 | Kirk Collins | Kirk Collins | ✅ YES | ✅ YES |
| 3068201280 | Stacy Duff | Stacy Duff | ✅ YES | ✅ YES |
| 3068201284 | Chad Wood | Chad Wood | ✅ YES | ✅ YES |
| 3068201285 | Jonathan Bohay | Jonathan Bohay | ✅ YES | ✅ YES |
| 3068201287 | Tracy Wiltermuth | Tracy Wiltermuth | ✅ YES | ✅ YES |
| 3068201288 | Clinton Vetter | Clinton Vetter | ✅ YES | ✅ YES |
| 3068201289 | Owen Gee | Owen Gee | ✅ YES | ✅ YES |
| 3068201291 | Tavis Smyth | Tavis Smyth | ✅ YES | ✅ YES |
| 3068201292 | Remi Lacasse | Remi Lacasse | ✅ YES | ✅ YES |
| 3068201294 | Kenneth Kaziechko | Kenneth Kaziechko | ✅ YES | ✅ YES |
| 3068202000 | Amanda Speight | Amanda Speight | ✅ YES | ✅ YES |
| 3068202006 | Ioannis Kandilierakis | Ioannis Kandilierakis | ✅ YES | ✅ YES |
| 3068202007 | Patrick Tomkins | Patrick Tomkins | ✅ YES | ✅ YES |
| 3068202010 | Rocky Penner | Rocky Penner | ✅ YES | ✅ YES |
| 3068202011 | Christopher MacDuff | Christopher MacDuff | ✅ YES | ✅ YES |
| 3068202012 | Taylor Davidson | Taylor Davidson | ✅ YES | ✅ YES |
| 3068202013 | Mathew Lehay | Mathew Lehay | ✅ YES | ✅ YES |
| 3068202016 | Sulay Parekh | Sulay Parekh | ✅ YES | ✅ YES |
| 3068202019 | Nikola Sazdov | Nikola Sazdov | ✅ YES | ✅ YES |
| 3068202020 | John MacDougall | John MacDougall | ✅ YES | ✅ YES |
| 3068202021 | Cole Lindsay | Cole Lindsay | ✅ YES | ✅ YES |
| 3068202023 | Wade Miller | Wade Miller | ✅ YES | ✅ YES |
| 3068202025 | Andrea Peregrym | Andrea Peregrym | ✅ YES | ✅ YES |
| 3068202029 | Aaron Shaw | Aaron Shaw | ✅ YES | ✅ YES |
| 3068202030 | Jeff Hamilton | Jeff Hamilton | ✅ YES | ✅ YES |
| 3068202031 | Lyle Eyben | Lyle Eyben | ✅ YES | ✅ YES |
| 3068202033 | Aaron Chambers | Aaron Chambers | ✅ YES | ✅ YES |
| 3068202046 | Oren Kobsar | Oren Kobsar | ✅ YES | ✅ YES |
| 3068202047 | JT Lunnin | JT Lunnin | ✅ YES | ✅ YES |
| 3068202049 | Jonathan Malasheski | Jonathan Malasheski | ✅ YES | ✅ YES |
| 3068202432 | Jessica Uhrmann | Jessica Uhrmann | ✅ YES | ✅ YES |
| 3068202441 | Ray Ference | Ray Ference | ✅ YES | ✅ YES |
| 3068202451 | Teegan Mccubbing | Teegan Mccubbing | ✅ YES | ✅ YES |
| 3068202459 | Daniel Sparkes | Daniel Sparkes | ✅ YES | ✅ YES |
| 3068202462 | Stephanie Holinaty | Stephanie Holinaty | ✅ YES | ✅ YES |
| 3068202464 | Jason Schaub | Jason Schaub | ✅ YES | ✅ YES |
| 3068202465 | Nelson Stone | Nelson Stone | ✅ YES | ✅ YES |
| 3068202467 | Randy Gossner | Randy Gossner | ✅ YES | ✅ YES |
| 3068202468 | Joshua Stevenson | Joshua Stevenson | ✅ YES | ✅ YES |
| 3068202470 | Amanda Boyer | Amanda Boyer | ✅ YES | ✅ YES |
| 3068202477 | Brina Kiziak | Brina Kiziak | ✅ YES | ✅ YES |
| 3068202478 | Shane Moline | Shane Moline | ✅ YES | ✅ YES |
| 3068202480 | Clinton Bullerwell | Clinton Bullerwell | ✅ YES | ✅ YES |
| 3068202481 | Courtney Baldwin | Courtney Baldwin | ✅ YES | ✅ YES |
| 3068202482 | Brandon Fendelet | Brandon Fendelet | ✅ YES | ✅ YES |
| 3068202485 | Daniel Guigon | Daniel Guigon | ✅ YES | ✅ YES |
| 3068202489 | Travis Stephen | Travis Stephen | ✅ YES | ✅ YES |
| 3068202490 | Ashley Hardes | Ashley Hardes | ✅ YES | ✅ YES |
| 3068202493 | Brennan Tebay | Ryan DeRaps | ❌ NO | ✅ YES |
| 3068202495 | Trevor Novak | Trevor Novak | ✅ YES | ✅ YES |
| 3068202498 | Anne Prescott | Anne Prescott | ✅ YES | ✅ YES |
| 3068204001 | Jacob Troesch | Jacob Troesch | ✅ YES | ✅ YES |
| 3068204002 | Yana Knight | Yana Knight | ✅ YES | ✅ YES |
| 3068204003 | Dana Skinner | Dana Skinner | ✅ YES | ✅ YES |
| 3068204004 | Himanshu Himanshu | Himanshu Himanshu | ✅ YES | ✅ YES |
| 3068204005 | Brenynn McDonald | Brenynn McDonald | ✅ YES | ✅ YES |
| 3068204006 | Tanja Hunter | Tanja Hunter | ✅ YES | ✅ YES |
| 3068204008 | Daryl Flasch | Daryl Flasch | ✅ YES | ✅ YES |
| 3068204009 | Matthew Sloman | Matthew Sloman | ✅ YES | ✅ YES |
| 3068204010 | Nathan Akins | Nathan Akins | ✅ YES | ✅ YES |
| 3068204012 | Cody Turgeon | Cody Turgeon | ✅ YES | ✅ YES |
| 3068204013 | Skyler Hudson | Skyler Hudson | ✅ YES | ✅ YES |
| 3068204022 | Leslie Arsenault | Leslie Arsenault | ✅ YES | ✅ YES |
| 3068204023 | Gilmar Abuan | Gilmar Abuan | ✅ YES | ✅ YES |
| 3068204025 | David Wood | David Wood | ✅ YES | ✅ YES |
| 3068204026 | Steven Behm | Steven Behm | ✅ YES | ✅ YES |
| 3068204027 | Jack Dobovich | Jack Dobovich | ✅ YES | ✅ YES |
| 3068204028 | William Verveda | William Verveda | ✅ YES | ✅ YES |
| 3068204029 | Demetrios Kokonas | Demetrios Kokonas | ✅ YES | ✅ YES |
| 3068204030 | Danielle Kinyanjui | Danielle Kinyanjui | ✅ YES | ✅ YES |
| 3068204031 | Brennan Jones | Brennan Jones | ✅ YES | ✅ YES |
| 3068204034 | Reginald Fairburn | Reginald Fairburn | ✅ YES | ✅ YES |
| 3068204036 | Brant Paul | Brant Paul | ✅ YES | ✅ YES |
| 3068204041 | Bradley Colbourne | Bradley Colbourne | ✅ YES | ✅ YES |
| 3068204043 | Kirby Stolte | Kirby Stolte | ✅ YES | ✅ YES |
| 3068204045 | Anita Pattison | Anita Pattison | ✅ YES | ✅ YES |
| 3068204046 | Herbert Murray | Herbert Murray | ✅ YES | ✅ YES |
| 3068204048 | Jodi Kissick | Jodi Kissick | ✅ YES | ✅ YES |
| 3068204050 | Daniel Olson | Daniel Olson | ✅ YES | ✅ YES |
| 3068204051 | Chantelle Peat | Chantelle Peat | ✅ YES | ✅ YES |
| 3068204054 | Trevor Bygrove | Trevor Bygrove | ✅ YES | ✅ YES |
| 3068204055 | Mandy Schlosser | Mandy Schlosser | ✅ YES | ✅ YES |
| 3068204057 | Riley Weinrauch | Riley Weinrauch | ✅ YES | ✅ YES |
| 3068204058 | Jason Short | Jason Short | ✅ YES | ✅ YES |
| 3068204061 | Shaun O'Donovan | Shaun O'Donovan | ✅ YES | ✅ YES |
| 3068204064 | Samuel Hughes | Samuel Hughes | ✅ YES | ✅ YES |
| 3068204065 | Ben Saam | Ben Saam | ✅ YES | ✅ YES |
| 3068204300 | Daniel Blais | Daniel Blais | ✅ YES | ✅ YES |
| 3068204304 | Fares Daer | Fares Daer | ✅ YES | ✅ YES |
| 3068204305 | Asem Binafif | Asem Binafif | ✅ YES | ✅ YES |
| 3068204306 | Samuel Nsiah | Samuel Nsiah | ✅ YES | ✅ YES |
| 3068204307 | Peter Oladejo | Peter Oladejo | ✅ YES | ✅ YES |
| 3068204308 | Caleb Ree | Caleb Ree | ✅ YES | ✅ YES |
| 3068204309 | Kevin Miciak | Kevin Miciak | ✅ YES | ✅ YES |
| 3068204311 | Justin Lu | Justin Lu | ✅ YES | ✅ YES |
| 3068204312 | Michael McGrath | Michael McGrath | ✅ YES | ✅ YES |
| 3068204313 | Lyndsey Livingston | Lyndsey Livingston | ✅ YES | ✅ YES |
| 3068204314 | Ngong Lau | Ngong Lau | ✅ YES | ✅ YES |
| 3068204315 | Tanya Leblanc | Tanya Leblanc | ✅ YES | ✅ YES |
| 3068204316 | Muhammad Arsalan | Muhammad Arsalan | ✅ YES | ✅ YES |
| 3068204317 | Ryan LeBlanc | Ryan LeBlanc | ✅ YES | ✅ YES |
| 3068204318 | Terry Schulze | Terry Schulze | ✅ YES | ✅ YES |
| 3068204319 | Lisa Redhead | Lisa Redhead | ✅ YES | ✅ YES |
| 3068204320 | Ronald Hunter | Ronald Hunter | ✅ YES | ✅ YES |
| 3068204321 | Winson Avara | Winson Avara | ✅ YES | ✅ YES |
| 3068204324 | Lana Cumpstone | Lana Cumpstone | ✅ YES | ✅ YES |
| 3068204326 | Tyler Foster | Tyler Foster | ✅ YES | ✅ YES |
| 3068204330 | Warren Noble | Warren Noble | ✅ YES | ✅ YES |
| 3068204332 | Maria Tapia Diaz | Maria Tapia Diaz | ✅ YES | ✅ YES |
| 3068204337 | Syed Naqvi | Syed Naqvi | ✅ YES | ✅ YES |
| 3068204340 | Terra Quinn | Terra Quinn | ✅ YES | ✅ YES |
| 3068204343 | Duane Orbeck | Duane Orbeck | ✅ YES | ✅ YES |
| 3068204345 | Matthew Veld | Matthew Veld | ✅ YES | ✅ YES |
| 3068204346 | Luke Newport | Luke Newport | ✅ YES | ✅ YES |
| 3068204350 | Shane Kremsater | Shane Kremsater | ✅ YES | ✅ YES |
| 3068204351 | Justin McCrea | Justin McCrea | ✅ YES | ✅ YES |
| 3068204353 | Jamin Gluckie | Jamin Gluckie | ✅ YES | ✅ YES |
| 3068204354 | Tyler Etson | Tyler Etson | ✅ YES | ✅ YES |
| 3068204356 | Ty Hansen | Ty Hansen | ✅ YES | ✅ YES |
| 3068204360 | Colleen Nickless | Colleen Nickless | ✅ YES | ✅ YES |
| 3068204361 | Christopher Osmak | Christopher Osmak | ✅ YES | ✅ YES |
| 3068204362 | CAMERON Leonard | CAMERON Leonard | ✅ YES | ✅ YES |
| 3068204363 | Amber Watt | Amber Watt | ✅ YES | ✅ YES |
| 3068204366 | Gerren Smart | Gerren Smart | ✅ YES | ✅ YES |
| 3068204370 | Darcy Stockman | Darcy Stockman | ✅ YES | ✅ YES |
| 3068204400 | Kelly Wilchak | Kelly Wilchak | ✅ YES | ✅ YES |
| 3068204410 | Del MacEwen | Del MacEwen | ✅ YES | ✅ YES |
| 3068204429 | Justin Dunn | Justin Dunn | ✅ YES | ✅ YES |
| 3068204432 | Jeremy Wetsch | Jeremy Wetsch | ✅ YES | ✅ YES |
| 3068204433 | Paul Dase | Paul Dase | ✅ YES | ✅ YES |
| 3068204434 | Ashley Bandura | Ashley Bandura | ✅ YES | ✅ YES |
| 3068204444 | Ryan Wutzke | Ryan Wutzke | ✅ YES | ✅ YES |
| 3068204445 | Bobbi Umphrey | Bobbi Umphrey | ✅ YES | ✅ YES |
| 3068204448 | Jacqueline Midgley | Jacqueline Midgley | ✅ YES | ✅ YES |
| 3068204449 | Steven Fink | Steven Fink | ✅ YES | ✅ YES |
| 3068204450 | Curtis Szeman | Curtis Szeman | ✅ YES | ✅ YES |
| 3068204452 | Jamie Johnston | Jamie Johnston | ✅ YES | ✅ YES |
| 3068204453 | Margaret Orriss | Margaret Orriss | ✅ YES | ✅ YES |
| 3068204454 | Logan Pashniak | Logan Pashniak | ✅ YES | ✅ YES |
| 3068204457 | Steven Perkins | Steven Perkins | ✅ YES | ✅ YES |
| 3068204463 | Marvis McClellan | Marvis McClellan | ✅ YES | ✅ YES |
| 3068204465 | Vance Schnitzler | Vance Schnitzler | ✅ YES | ✅ YES |
| 3068204466 | David Puech | David Puech | ✅ YES | ✅ YES |
| 3068204467 | Darren Haller | Justin Jess | ❌ NO | ✅ YES |
| 3068204468 | Maryan Levandovskyy | Maryan Levandovskyy | ✅ YES | ✅ YES |
| 3068204470 | Bogdan Orchyshko | Jiao Du | ❌ NO | ✅ YES |
| 3068204471 | Joseph Lukan | Joseph Lukan | ✅ YES | ✅ YES |
| 3068204472 | Tyson Crookedneck | Ehsan Rizwan | ❌ NO | ✅ YES |
| 3068204473 | Kyle Jupe | Dwayne Lawryk | ❌ NO | ✅ YES |
| 3068204474 | Heather Watt | Heather Watt | ✅ YES | ✅ YES |
| 3068208201 | Jennifer Hein | Jennifer Hein | ✅ YES | ✅ YES |
| 3068208218 | Darryl Graham | Darryl Graham | ✅ YES | ✅ YES |
| 3068208222 | Trevor Neufeld | Trevor Neufeld | ✅ YES | ✅ YES |
| 3068208233 | Justin Loree | Justin Loree | ✅ YES | ✅ YES |
| 3068208237 | Kent Shopa | Kent Shopa | ✅ YES | ✅ YES |
| 3068208238 | Gail Dwyer | Gail Dwyer | ✅ YES | ✅ YES |
| 3068208242 | Cheryl Cumberland | Cheryl Cumberland | ✅ YES | ✅ YES |
| 3068208250 | Kathleen Hanson | Kathleen Hanson | ✅ YES | ✅ YES |
| 3068208251 | David Pearson | David Pearson | ✅ YES | ✅ YES |
| 3068208254 | Shahab Daneshvar | Shahab Daneshvar | ✅ YES | ✅ YES |
| 3068208255 | Bradley Bendick | Jose Gutierrez | ❌ NO | ✅ YES |
| 3068208256 | Bryan Rollheiser | Bryan Rollheiser | ✅ YES | ✅ YES |
| 3068208257 | Wade Holst | Wade Holst | ✅ YES | ✅ YES |
| 3068208258 | Michael Babchuk | Aaron Davidson | ❌ NO | ✅ YES |
| 3068208263 | David Glover | David Glover | ✅ YES | ✅ YES |
| 3068208264 | Joseph Redlich | Joseph Redlich | ✅ YES | ✅ YES |
| 3068208265 | Brady Eidsvik | Brady Eidsvik | ✅ YES | ✅ YES |
| 3068208266 | Travis Halter | Travis Halter | ✅ YES | ✅ YES |
| 3068208267 | Brett Harris | Brett Harris | ✅ YES | ✅ YES |
| 3068208271 | Tania Wesselink | Tania Wesselink | ✅ YES | ✅ YES |
| 3068208279 | Chastity Schofield | Chastity Schofield | ✅ YES | ✅ YES |
| 3068208282 | Corey Rhyason | Corey Rhyason | ✅ YES | ✅ YES |
| 3068208283 | Adam Summers | Adam Summers | ✅ YES | ✅ YES |
| 3068208284 | Brandon Taylor | Brent Dyhm | ❌ NO | ✅ YES |
| 3068208285 | Oloruntobi Famutimi | Oloruntobi Famutimi | ✅ YES | ✅ YES |
| 3068208286 | Shawn Smith | Shawn Smith | ✅ YES | ✅ YES |
| 3068208287 | Lisa Topp | Lisa Topp | ✅ YES | ✅ YES |
| 3068208291 | Dan Simard | Dan Simard | ✅ YES | ✅ YES |
| 3068208294 | Turner Harnett | Turner Harnett | ✅ YES | ✅ YES |
| 3068208297 | Peter Herle | Peter Herle | ✅ YES | ✅ YES |
| 3068208304 | Jamie Carte | Jamie Carte | ✅ YES | ✅ YES |
| 3068208308 | Clint Payne | Clint Payne | ✅ YES | ✅ YES |
| 3068208316 | Brayden Blanchette | Brayden Blanchette | ✅ YES | ✅ YES |
| 3068208319 | Amy Nasby | Amy Nasby | ✅ YES | ✅ YES |
| 3068208321 | Russell Wheeldon | Russell Wheeldon | ✅ YES | ✅ YES |
| 3068208322 | Michael Penill | Michael Penill | ✅ YES | ✅ YES |
| 3068208323 | Wyatt Tomm | Wyatt Tomm | ✅ YES | ✅ YES |
| 3068208331 | Brad Franklin | Brad Franklin | ✅ YES | ✅ YES |
| 3068208332 | Muhammad Khan | Muhammad Khan | ✅ YES | ✅ YES |
| 3068208333 | Shahzad Akhtar | Shahzad Akhtar | ✅ YES | ✅ YES |
| 3068208334 | Mia Deyell | Mia Deyell | ✅ YES | ✅ YES |
| 3068208335 | Naomi Grassl | Naomi Grassl | ✅ YES | ✅ YES |
| 3068208343 | Pamela Herman | Pamela Herman | ✅ YES | ✅ YES |
| 3068208344 | Sheena Tupper | Sheena Tupper | ✅ YES | ✅ YES |
| 3068208345 | Matthew Depko | Matthew Depko | ✅ YES | ✅ YES |
| 3068208348 | Bradley Berquist | Bradley Berquist | ✅ YES | ✅ YES |
| 3068208349 | Amy Nerbas | Amy Nerbas | ✅ YES | ✅ YES |
| 3068208354 | James Pierce | James Pierce | ✅ YES | ✅ YES |
| 3068208356 | Fielding Simpkins | Fielding Simpkins | ✅ YES | ✅ YES |
| 3068208357 | Samantha Voros | Samantha Voros | ✅ YES | ✅ YES |
| 3068208358 | Bradley Wight | Bradley Wight | ✅ YES | ✅ YES |
| 3068208367 | Kurt Saruwatari | Kurt Saruwatari | ✅ YES | ✅ YES |
| 3068208371 | Mark Munro | Mark Munro | ✅ YES | ✅ YES |
| 3068208372 | Chad Smith | Chad Smith | ✅ YES | ✅ YES |
| 3068208375 | Michael Krips | Michael Krips | ✅ YES | ✅ YES |
| 3068208378 | Murray Tluchak | Murray Tluchak | ✅ YES | ✅ YES |
| 3068208383 | Amanda Clift | Amanda Clift | ✅ YES | ✅ YES |
| 3068208384 | Dylan McLean | Dylan McLean | ✅ YES | ✅ YES |
| 3068208391 | Jay Chaudhari | Jay Chaudhari | ✅ YES | ✅ YES |
| 3068208392 | Todd McLean | Todd McLean | ✅ YES | ✅ YES |
| 3068208394 | Chantel Simpson | Chantel Simpson | ✅ YES | ✅ YES |
| 3068208395 | Derek Cooper | Derek Cooper | ✅ YES | ✅ YES |
| 3068208397 | Todd Mansfield | Todd Mansfield | ✅ YES | ✅ YES |
| 3068208398 | Tylan Siwicki | Tylan Siwicki | ✅ YES | ✅ YES |
| 3068208400 | Vivek Prajapati | Vivek Prajapati | ✅ YES | ✅ YES |
| 3068208403 | Muhammad Khan | Muhammad Khan | ✅ YES | ✅ YES |
| 3068208413 | Tanya Rhinehart | Tanya Rhinehart | ✅ YES | ✅ YES |
| 3068208414 | Kimberlee Leflar | Kimberlee Leflar | ✅ YES | ✅ YES |
| 3068208418 | David Hinz | David Hinz | ✅ YES | ✅ YES |
| 3068208419 | Merv Firkus | Merv Firkus | ✅ YES | ✅ YES |
| 3068208421 | Jordyn Lavallee | Jordyn Lavallee | ✅ YES | ✅ YES |
| 3068208423 | Charles Zoleta | Charles Zoleta | ✅ YES | ✅ YES |
| 3068208425 | Keegan Sparrow | Keegan Sparrow | ✅ YES | ✅ YES |
| 3068208430 | Bartley Hiron | Bartley Hiron | ✅ YES | ✅ YES |
| 3068208432 | Gerald Santhia | Gerald Santhia | ✅ YES | ✅ YES |
| 3068208435 | Kyle Grove | Kyle Grove | ✅ YES | ✅ YES |
| 3068208436 | Brady Reiter | Brady Reiter | ✅ YES | ✅ YES |
| 3068208449 | Kyle Forbes | Kyle Forbes | ✅ YES | ✅ YES |
| 3068208700 | William Swiderski | William Swiderski | ✅ YES | ✅ YES |
| 3068208703 | Paul Heuser | Paul Heuser | ✅ YES | ✅ YES |
| 3068208704 | Lana Jezowski | Lana Jezowski | ✅ YES | ✅ YES |
| 3068208705 | Mitch Brekko | Mitch Brekko | ✅ YES | ✅ YES |
| 3068208709 | Grzegorz Zaleski | Grzegorz Zaleski | ✅ YES | ✅ YES |
| 3068208713 | Steven Opdendries | Steven Opdendries | ✅ YES | ✅ YES |
| 3068208719 | Aishat Ahmed | Aishat Ahmed | ✅ YES | ✅ YES |
| 3068208722 | Taylor Warren | Taylor Warren | ✅ YES | ✅ YES |
| 3068208726 | Tracey Pawlak | Tracey Pawlak | ✅ YES | ✅ YES |
| 3068208730 | Eric Healey | Eric Healey | ✅ YES | ✅ YES |
| 3068208731 | Jonathon Pawlyshyn | Jonathon Pawlyshyn | ✅ YES | ✅ YES |
| 3068208732 | Brittney Prosser | Brittney Prosser | ✅ YES | ✅ YES |
| 3068208733 | Joseph Reis | Joseph Reis | ✅ YES | ✅ YES |
| 3068208735 | Brett Sparks | Brett Sparks | ✅ YES | ✅ YES |
| 3068208738 | Jordan Sagert | Jordan Sagert | ✅ YES | ✅ YES |
| 3068208739 | Michael Welygan | Michael Welygan | ✅ YES | ✅ YES |
| 3068208741 | Nancy Howell | Nancy Howell | ✅ YES | ✅ YES |
| 3068208743 | Sheikh Abdullah | Sheikh Abdullah | ✅ YES | ✅ YES |
| 3068208744 | Zoia Kirieva | Zoia Kirieva | ✅ YES | ✅ YES |
| 3068208745 | Thomas Edwards | Thomas Edwards | ✅ YES | ✅ YES |
| 3068208746 | Andrew Rab | Andrew Rab | ✅ YES | ✅ YES |
| 3068208747 | Scott Stafford | Scott Stafford | ✅ YES | ✅ YES |
| 3068208748 | Adam Clavelle | Adam Clavelle | ✅ YES | ✅ YES |
| 3068208749 | Omer Farooq | Omer Farooq | ✅ YES | ✅ YES |
| 3068208750 | Roseline Ewah | Roseline Ewah | ✅ YES | ✅ YES |
| 3068208751 | Kimberly Jarvis | Kimberly Jarvis | ✅ YES | ✅ YES |
| 3068208757 | Greg Sehn | Greg Sehn | ✅ YES | ✅ YES |
| 3068208759 | Katie Diamond | Khawja Mezbah Moin Uddin | ❌ NO | ✅ YES |
| 3068208760 | Katherine Janisse | Katherine Janisse | ✅ YES | ✅ YES |
| 3068208761 | Roger Hebert | Roger Hebert | ✅ YES | ✅ YES |
| 3068208763 | Justin Novak | Justin Novak | ✅ YES | ✅ YES |
| 3068208764 | Douglas Simpson | Douglas Simpson | ✅ YES | ✅ YES |
| 3068208767 | Riley Pashniak | Riley Pashniak | ✅ YES | ✅ YES |
| 3068208768 | Cameron Kelly | Cameron Kelly | ✅ YES | ✅ YES |
| 3068208769 | Morgan Hunter | Morgan Hunter | ✅ YES | ✅ YES |
| 3068208770 | Adam Bjerland | Adam Bjerland | ✅ YES | ✅ YES |
| 3068208771 | Asim Siddiqui | Asim Siddiqui | ✅ YES | ✅ YES |
| 3068208772 | Arlinda Hodgson | Arlinda Hodgson | ✅ YES | ✅ YES |
| 3068208773 | Kyle Deck | Kyle Deck | ✅ YES | ✅ YES |
| 3068208774 | Kyle Fraser | Kyle Fraser | ✅ YES | ✅ YES |
| 3068208775 | David Grainger | David Grainger | ✅ YES | ✅ YES |
| 3068208777 | James Blair | James Blair | ✅ YES | ✅ YES |
| 3068208778 | Richard Bissonnette | Richard Bissonnette | ✅ YES | ✅ YES |
| 3068208779 | Subramani Ramachandran | Subramani Ramachandran | ✅ YES | ✅ YES |
| 3068208781 | Joseph Hayes | Joseph Hayes | ✅ YES | ✅ YES |
| 3068208782 | Christian Heraldo | Christian Heraldo | ✅ YES | ✅ YES |
| 3068208783 | Jonathan Clarke | Jonathan Clarke | ✅ YES | ✅ YES |
| 3068208784 | Terry Neufeld | Terry Neufeld | ✅ YES | ✅ YES |
| 3068208787 | Jason Buxton | Jason Buxton | ✅ YES | ✅ YES |
| 3068208788 | Steven Regular | Steven Regular | ✅ YES | ✅ YES |
| 3068208789 | Scott McCluskey | Scott McCluskey | ✅ YES | ✅ YES |
| 3068208790 | Rens Mark Moises | Rens Mark Moises | ✅ YES | ✅ YES |
| 3068208796 | Joshua Regnier | Craig Yung | ❌ NO | ✅ YES |
| 3068208797 | Steven Scott | Nicole Budzey | ❌ NO | ✅ YES |
| 3068208798 | Robin Noble | Robin Noble | ✅ YES | ✅ YES |
| 3068208799 | Devin Dow | Devin Dow | ✅ YES | ✅ YES |
| 3068208801 | Kishore Reddy Gali | Kishore Reddy Gali | ✅ YES | ✅ YES |
| 3068208802 | Jeff Cathcart | Jeff Cathcart | ✅ YES | ✅ YES |
| 3068208807 | Garrett Novak | Garrett Novak | ✅ YES | ✅ YES |
| 3068208811 | John Rekimowich | John Rekimowich | ✅ YES | ✅ YES |
| 3068208814 | Kevin Parker | Kevin Parker | ✅ YES | ✅ YES |
| 3068208816 | Kyle Argue | Kyle Argue | ✅ YES | ✅ YES |
| 3068208817 | Michael Hein | Michael Hein | ✅ YES | ✅ YES |
| 3068208818 | Caitlyn St. Denis | Caitlyn St. Denis | ✅ YES | ✅ YES |
| 3068208822 | Sasha Achkar | Sasha Achkar | ✅ YES | ✅ YES |
| 3068208824 | Colin Dimond | Colin Dimond | ✅ YES | ✅ YES |
| 3068208825 | Nicholas Meaney | Nicholas Meaney | ✅ YES | ✅ YES |
| 3068208830 | Joshua Winiewski | Joshua Winiewski | ✅ YES | ✅ YES |
| 3068208831 | Sheldon Selinger | Sheldon Selinger | ✅ YES | ✅ YES |
| 3068208832 | Cole Baier | Cole Baier | ✅ YES | ✅ YES |
| 3068208833 | Bryson Villeneuve | Bryson Villeneuve | ✅ YES | ✅ YES |
| 3068208836 | Andy Onufrichuk | Andy Onufrichuk | ✅ YES | ✅ YES |
| 3068208838 | Beth St. Amant | Beth St. Amant | ✅ YES | ✅ YES |
| 3068208839 | Denise Mager | Denise Mager | ✅ YES | ✅ YES |
| 3068208840 | Leslie Johnston | Leslie Johnston | ✅ YES | ✅ YES |
| 3068251101 | Dave Jewitt | Dave Jewitt | ✅ YES | ✅ YES |
| 3068251114 | Brian Davies | Brian Davies | ✅ YES | ✅ YES |
| 3068251117 | Jason Bajema | Jason Bajema | ✅ YES | ✅ YES |
| 3068251121 | Nicole Brooks | Nicole Brooks | ✅ YES | ✅ YES |
| 3068251124 | Tyson Warawa | Tyson Warawa | ✅ YES | ✅ YES |
| 3068251125 | Gustav Probst | Gustav Probst | ✅ YES | ✅ YES |
| 3068251127 | Debra Willis | Debra Willis | ✅ YES | ✅ YES |
| 3068251131 | Joseph Rosin | Joseph Rosin | ✅ YES | ✅ YES |
| 3068251133 | Aaron Roy | Aaron Roy | ✅ YES | ✅ YES |
| 3068251137 | Aric Pare | Aric Pare | ✅ YES | ✅ YES |
| 3068251138 | Jennifer Marenger | Jennifer Marenger | ✅ YES | ✅ YES |
| 3068251140 | Patricia Hill | Patricia Hill | ✅ YES | ✅ YES |
| 3068251143 | Brett Kustaski | Brett Kustaski | ✅ YES | ✅ YES |
| 3068251146 | Helen Wilcox | Helen Wilcox | ✅ YES | ✅ YES |
| 3068251148 | Charlene Jenkinson | Charlene Jenkinson | ✅ YES | ✅ YES |
| 3068251150 | Brad Sutherland | Brad Sutherland | ✅ YES | ✅ YES |
| 3068251157 | Troy Jessome | Troy Jessome | ✅ YES | ✅ YES |
| 3068251163 | Stacey Gamble | Stacey Gamble | ✅ YES | ✅ YES |
| 3068251164 | Melissa Butler | Melissa Butler | ✅ YES | ✅ YES |
| 3068251171 | Dean Domes | Dean Domes | ✅ YES | ✅ YES |
| 3068251177 | Tanner Wulff | Tanner Wulff | ✅ YES | ✅ YES |
| 3068251179 | Kurt Lorenz | Kurt Lorenz | ✅ YES | ✅ YES |
| 3068251181 | Tracey McDougald | Tracey McDougald | ✅ YES | ✅ YES |
| 3068251182 | Robin Prebble | Robin Prebble | ✅ YES | ✅ YES |
| 3068251185 | Lynsey Lemieux | Lynsey Lemieux | ✅ YES | ✅ YES |
| 3068251186 | Brianne Ross | Brianne Ross | ✅ YES | ✅ YES |
| 3068251188 | Greg Desaulniers | Greg Desaulniers | ✅ YES | ✅ YES |
| 3068251189 | Fernando Daly Witzke | Fernando Daly Witzke | ✅ YES | ✅ YES |
| 3068251192 | Jonathan Sheppard | Jonathan Sheppard | ✅ YES | ✅ YES |
| 3068251207 | Ryan Woznesensky | Ryan Woznesensky | ✅ YES | ✅ YES |
| 3068251214 | Darrel Smith | Darrel Smith | ✅ YES | ✅ YES |
| 3068251215 | Timothy Fundytus | Timothy Fundytus | ✅ YES | ✅ YES |
| 3068251222 | Corey Bambrick | Corey Bambrick | ✅ YES | ✅ YES |
| 3068251223 | Molly McCoubrey | Molly McCoubrey | ✅ YES | ✅ YES |
| 3068251224 | Tate Lychak | Tate Lychak | ✅ YES | ✅ YES |
| 3068251225 | Nadine Davis | Nadine Davis | ✅ YES | ✅ YES |
| 3068251228 | Carson Irwin | Carson Irwin | ✅ YES | ✅ YES |
| 3068251229 | Muhammad Ashraf | Muhammad Ashraf | ✅ YES | ✅ YES |
| 3068251230 | Allan Bakker | Allan Bakker | ✅ YES | ✅ YES |
| 3068251231 | Chris Scramstad | Chris Scramstad | ✅ YES | ✅ YES |
| 3068251232 | Mohamed Ferawana | Mohamed Ferawana | ✅ YES | ✅ YES |
| 3068251237 | Keith Reeves | Keith Reeves | ✅ YES | ✅ YES |
| 3068251247 | Trippett McKnight | Trippett McKnight | ✅ YES | ✅ YES |
| 3068251249 | Ryan Reist | Ryan Reist | ✅ YES | ✅ YES |
| 3068251253 | Daniel Urichuk | Daniel Urichuk | ✅ YES | ✅ YES |
| 3068251257 | Jeffery Kuntz | Jeffery Kuntz | ✅ YES | ✅ YES |
| 3068251258 | Dennis DeBusschere | Dennis DeBusschere | ✅ YES | ✅ YES |
| 3068251259 | Nickolas Duvall | Nickolas Duvall | ✅ YES | ✅ YES |
| 3068251269 | Chelsa Husch | Chelsa Husch | ✅ YES | ✅ YES |
| 3068251271 | Shannon Miller | Shannon Miller | ✅ YES | ✅ YES |
| 3068251272 | Shandra Etcheverry | Shandra Etcheverry | ✅ YES | ✅ YES |
| 3068251274 | Heather Ollen | Heather Ollen | ✅ YES | ✅ YES |
| 3068251276 | Jeffrey Larre | Jeffrey Larre | ✅ YES | ✅ YES |
| 3068251281 | Keith Craig | Keith Craig | ✅ YES | ✅ YES |
| 3068251282 | Matthew Walsh | Matthew Walsh | ✅ YES | ✅ YES |
| 3068251284 | Sean Redlich | Sean Redlich | ✅ YES | ✅ YES |
| 3068251285 | Cody Hankinson | Cody Hankinson | ✅ YES | ✅ YES |
| 3068251290 | Kolby Tenney | Kolby Tenney | ✅ YES | ✅ YES |
| 3068251292 | James Dyck | James Dyck | ✅ YES | ✅ YES |
| 3068251293 | Aaron Studer | Aaron Studer | ✅ YES | ✅ YES |
| 3068251295 | Taiya Paylor | Taiya Paylor | ✅ YES | ✅ YES |
| 3068251296 | Kaylan Lundquist | Kaylan Lundquist | ✅ YES | ✅ YES |
| 3068251297 | Alexander Dow | Alexander Dow | ✅ YES | ✅ YES |
| 3068251500 | Zheridonn De Los Reyes | Tanner Shaw | ❌ NO | ✅ YES |
| 3068251501 | Julie Mardian | Julie Mardian | ✅ YES | ✅ YES |
| 3068251502 | Ben Lanfermann | Ben Lanfermann | ✅ YES | ✅ YES |
| 3068251503 | Ryan Turcotte | Ryan Turcotte | ✅ YES | ✅ YES |
| 3068251505 | Gregory Lawson | Gregory Lawson | ✅ YES | ✅ YES |
| 3068251507 | Dean Mari | Dean Mari | ✅ YES | ✅ YES |
| 3068251508 | Kenneth Rutherford | Kenneth Rutherford | ✅ YES | ✅ YES |
| 3068251509 | Seyed Javad Hashemi | Seyed Javad Hashemi | ✅ YES | ✅ YES |
| 3068251510 | Shaun Tichkowsky | Shaun Tichkowsky | ✅ YES | ✅ YES |
| 3068251514 | Tyler Blackmore | Tyler Blackmore | ✅ YES | ✅ YES |
| 3068251515 | David Kay | David Kay | ✅ YES | ✅ YES |
| 3068251517 | Richa Mehrotra | Richa Mehrotra | ✅ YES | ✅ YES |
| 3068251520 | Mohsen Masoumian | Mohsen Masoumian | ✅ YES | ✅ YES |
| 3068251521 | Lee Uhrich | Jesse Peyton | ❌ NO | ✅ YES |
| 3068251522 | Kaushik Gupta | Kaushik Gupta | ✅ YES | ✅ YES |
| 3068251523 | Danton Berg | Yunpeng Wang | ❌ NO | ✅ YES |
| 3068251524 | Evan Risling | Jonathon Bonnar | ❌ NO | ✅ YES |
| 3068251525 | Walter Gullion | Terrell Turgeon | ❌ NO | ✅ YES |
| 3068251527 | Mathew Looy | Vaughn Bugler | ❌ NO | ✅ YES |
| 3068251528 | Reid Harty | Shane Eyben | ❌ NO | ✅ YES |
| 3068251529 | Jeffrey Innes | Jeffrey Innes | ✅ YES | ✅ YES |
| 3068251530 | Ross Thompson | Ross Thompson | ✅ YES | ✅ YES |
| 3068251531 | Kyle Adams | Braeden Luedtke | ❌ NO | ✅ YES |
| 3068251532 | Eric Sjodin | Eric Sjodin | ✅ YES | ✅ YES |
| 3068251535 | Warren Fast | Warren Fast | ✅ YES | ✅ YES |
| 3068251536 | Daryl Phillips | Trent Barter | ❌ NO | ✅ YES |
| 3068251537 | Sultan Afsar | Sultan Afsar | ✅ YES | ✅ YES |
| 3068251538 | Tim Rorke | Tim Rorke | ✅ YES | ✅ YES |
| 3068251539 | Heather Yuzik | Heather Yuzik | ✅ YES | ✅ YES |
| 3068251541 | James Sired | James Sired | ✅ YES | ✅ YES |
| 3068251542 | Megan Weatherall | Megan Weatherall | ✅ YES | ✅ YES |
| 3068251544 | Danny May | Danny May | ✅ YES | ✅ YES |
| 3068251545 | Elroy Phillips | Elroy Phillips | ✅ YES | ✅ YES |
| 3068251546 | Douglas Scott | Douglas Scott | ✅ YES | ✅ YES |
| 3068251550 | John More | John More | ✅ YES | ✅ YES |
| 3068251553 | Richelle Phillips | Richelle Phillips | ✅ YES | ✅ YES |
| 3068251554 | Jesse Eppen | Jesse Eppen | ✅ YES | ✅ YES |
| 3068251555 | Lauren Flynn | Lauren Flynn | ✅ YES | ✅ YES |
| 3068251556 | Benjamin Karp | Benjamin Karp | ✅ YES | ✅ YES |
| 3068251557 | Florendo Erni | Florendo Erni | ✅ YES | ✅ YES |
| 3068251558 | Mandy Early | Mandy Early | ✅ YES | ✅ YES |
| 3068251559 | Dana Laboucane | Dana Laboucane | ✅ YES | ✅ YES |
| 3068251562 | Sandra Rondeau | Sandra Rondeau | ✅ YES | ✅ YES |
| 3068251565 | Shelley Manson | Shelley Manson | ✅ YES | ✅ YES |
| 3068251566 | James Campbell | James Campbell | ✅ YES | ✅ YES |
| 3068251567 | Angela Gaudry | Angela Gaudry | ✅ YES | ✅ YES |
| 3068251572 | Amanda Paine | Amanda Paine | ✅ YES | ✅ YES |
| 3068251576 | Jack Drover | Jack Drover | ✅ YES | ✅ YES |
| 3068251577 | Wade Brinkman | Wade Brinkman | ✅ YES | ✅ YES |
| 3068251579 | Jackson Buckle | Jackson Buckle | ✅ YES | ✅ YES |
| 3068251580 | Mercedes Petersen | Keenan Stafford | ❌ NO | ✅ YES |
| 3068251581 | Bruce Osman | Bruce Osman | ✅ YES | ✅ YES |
| 3068251582 | Chris Dunn | Chris Dunn | ✅ YES | ✅ YES |
| 3068251583 | Priyanka Thakur | Priyanka Thakur | ✅ YES | ✅ YES |
| 3068251584 | Warren MacIsaac | Warren MacIsaac | ✅ YES | ✅ YES |
| 3068251586 | Lynn Speers | Darrel Burke | ❌ NO | ✅ YES |
| 3068251587 | Peter Fretz | Peter Fretz | ✅ YES | ✅ YES |
| 3068251589 | Adam Hickman | Adam Hickman | ✅ YES | ✅ YES |
| 3068251596 | Raegan Taylor | Raegan Taylor | ✅ YES | ✅ YES |
| 3068251597 | Stephen Konieczny | Stephen Konieczny | ✅ YES | ✅ YES |
| 3068251600 | Lorne Thomas | Lorne Thomas | ✅ YES | ✅ YES |
| 3068251601 | Arnold Harris | Arnold Harris | ✅ YES | ✅ YES |
| 3068251603 | Drew Hawthorne | Drew Hawthorne | ✅ YES | ✅ YES |
| 3068251604 | Terence Bilawka | Terence Bilawka | ✅ YES | ✅ YES |
| 3068251605 | Carla Howrie | Carla Howrie | ✅ YES | ✅ YES |
| 3068251606 | Shaun Sinclair | Shaun Sinclair | ✅ YES | ✅ YES |
| 3068251608 | Paul Lloyd | Paul Lloyd | ✅ YES | ✅ YES |
| 3068251613 | Derek Brinsky | Dustin Baldwin | ❌ NO | ✅ YES |
| 3068251623 | Kali Kustaski | Kali Kustaski | ✅ YES | ✅ YES |
| 3068251629 | Kent Paul | Kent Paul | ✅ YES | ✅ YES |
| 3068251632 | Cory Balan | Cory Balan | ✅ YES | ✅ YES |
| 3068251634 | Trevor Canfield | Trevor Canfield | ✅ YES | ✅ YES |
| 3068251635 | Keith Clendening | Keith Clendening | ✅ YES | ✅ YES |
| 3068251636 | Travis Nasby | Travis Nasby | ✅ YES | ✅ YES |
| 3068251637 | Kevin Campbell | Kevin Campbell | ✅ YES | ✅ YES |
| 3068251638 | Alyson Morrison | Alyson Morrison | ✅ YES | ✅ YES |
| 3068251639 | Jason Stepanick | Jason Stepanick | ✅ YES | ✅ YES |
| 3068251641 | Bradley Bailey | Bradley Bailey | ✅ YES | ✅ YES |
| 3068251644 | Mitchel Perkins | Mitchel Perkins | ✅ YES | ✅ YES |
| 3068251645 | Blake Dutchak | Blake Dutchak | ✅ YES | ✅ YES |
| 3068251646 | Ryan Krauss | Ryan Krauss | ✅ YES | ✅ YES |
| 3068251649 | Lyle Teasdale | Lyle Teasdale | ✅ YES | ✅ YES |
| 3068251650 | Wesley Diederich | Wesley Diederich | ✅ YES | ✅ YES |
| 3068251651 | George Colley | George Colley | ✅ YES | ✅ YES |
| 3068251652 | Conrad Luce | Conrad Luce | ✅ YES | ✅ YES |
| 3068251653 | Glenda Spenrath | Glenda Spenrath | ✅ YES | ✅ YES |
| 3068251655 | Justin Engel | Justin Engel | ✅ YES | ✅ YES |
| 3068251657 | Ben Pinel | Ben Pinel | ✅ YES | ✅ YES |
| 3068251658 | Rushil Parmar | Kristoffer Cryderman | ❌ NO | ✅ YES |
| 3068251659 | Michael Perkins | Michael Perkins | ✅ YES | ✅ YES |
| 3068251660 | Mark Forbes | Mark Forbes | ✅ YES | ✅ YES |
| 3068251662 | E. Randy Dancey | E. Randy Dancey | ✅ YES | ✅ YES |
| 3068251663 | Robert Makarow | Robert Makarow | ✅ YES | ✅ YES |
| 3068251667 | Abdulgaffoor Mohamed Saleem | Abdulgaffoor Mohamed Saleem | ✅ YES | ✅ YES |
| 3068251669 | Troy Wandler | Troy Wandler | ✅ YES | ✅ YES |
| 3068251671 | Lisa Ross | Lisa Ross | ✅ YES | ✅ YES |
| 3068251676 | Theryn Fairley | Theryn Fairley | ✅ YES | ✅ YES |
| 3068251678 | Michael Cannon | Michael Cannon | ✅ YES | ✅ YES |
| 3068251680 | Nathan Rollheiser | Nathan Rollheiser | ✅ YES | ✅ YES |
| 3068251683 | Kimberly Joyce Aguilar | Kimberly Joyce Aguilar | ✅ YES | ✅ YES |
| 3068251684 | Albert O'Riordan | Albert O'Riordan | ✅ YES | ✅ YES |
| 3068251687 | Douglas Nichols | Douglas Nichols | ✅ YES | ✅ YES |
| 3068251694 | Jaclyn Bexson | Jaclyn Bexson | ✅ YES | ✅ YES |
| 3068251696 | Luisito Madlang-awa | Luisito Madlang-awa | ✅ YES | ✅ YES |
| 3068251698 | Trevor Decker | Trevor Decker | ✅ YES | ✅ YES |
| 3068251702 | Brenda Vogelsang | Brenda Vogelsang | ✅ YES | ✅ YES |
| 3068251703 | Pavel Zelenka | Pavel Zelenka | ✅ YES | ✅ YES |
| 3068251704 | Douglas Bowen | Douglas Bowen | ✅ YES | ✅ YES |
| 3068251706 | Kevin Taylor | Kevin Taylor | ✅ YES | ✅ YES |
| 3068251707 | Rocky Eldridge | Rocky Eldridge | ✅ YES | ✅ YES |
| 3068251716 | Jayson Turchak | Jayson Turchak | ✅ YES | ✅ YES |
| 3068251717 | Robert Manuel | Robert Manuel | ✅ YES | ✅ YES |
| 3068251718 | Trey Koberlin | Trey Koberlin | ✅ YES | ✅ YES |
| 3068251720 | Sean Cleary | Sean Cleary | ✅ YES | ✅ YES |
| 3068251721 | Katherine Sorsdahl | Katherine Sorsdahl | ✅ YES | ✅ YES |
| 3068251722 | Curtis Poggemiller | Curtis Poggemiller | ✅ YES | ✅ YES |
| 3068251724 | Qiming Jasmine Ma | Qiming Jasmine Ma | ✅ YES | ✅ YES |
| 3068251725 | Michael Hansen | Michael Hansen | ✅ YES | ✅ YES |
| 3068251727 | Shane Gottinger | Shane Gottinger | ✅ YES | ✅ YES |
| 3068251728 | Todd Makepeace | Todd Makepeace | ✅ YES | ✅ YES |
| 3068251729 | Philip Holmen | Philip Holmen | ✅ YES | ✅ YES |
| 3068251731 | Joshua Allen | Joshua Allen | ✅ YES | ✅ YES |
| 3068251733 | Donald Russick | Donald Russick | ✅ YES | ✅ YES |
| 3068251738 | Jace Harder | Jace Harder | ✅ YES | ✅ YES |
| 3068251740 | Terrance Wagner | Terrance Wagner | ✅ YES | ✅ YES |
| 3068251746 | Vincent Kindopp | Vincent Kindopp | ✅ YES | ✅ YES |
| 3068251747 | Christy Josuttes | Christy Josuttes | ✅ YES | ✅ YES |
| 3068251752 | Kevin Busch | Kevin Busch | ✅ YES | ✅ YES |
| 3068251755 | Xiao Ming Lai | Courtney Oxford | ❌ NO | ✅ YES |
| 3068251757 | Teva Heide | Teva Heide | ✅ YES | ✅ YES |
| 3068251760 | Kevin Peets | Kevin Peets | ✅ YES | ✅ YES |
| 3068251762 | Sheena Oliver | Sheena Oliver | ✅ YES | ✅ YES |
| 3068251763 | Brennan Schiele | Brennan Schiele | ✅ YES | ✅ YES |
| 3068251767 | Michael McCagherty | Michael McCagherty | ✅ YES | ✅ YES |
| 3068251773 | Catlin Schneider | Catlin Schneider | ✅ YES | ✅ YES |
| 3068251776 | Tim Ebl | Tim Ebl | ✅ YES | ✅ YES |
| 3068251777 | Brenda Lodoen | Brenda Lodoen | ✅ YES | ✅ YES |
| 3068251778 | Novan Naidoo | Novan Naidoo | ✅ YES | ✅ YES |
| 3068251782 | Samantha Gower | Samantha Gower | ✅ YES | ✅ YES |
| 3068251786 | Clayton Ulrich | Clayton Ulrich | ✅ YES | ✅ YES |
| 3068251787 | Reginald Scott Sooley | Reginald Scott Sooley | ✅ YES | ✅ YES |
| 3068251790 | Andrew McFadyen | Andrew McFadyen | ✅ YES | ✅ YES |
| 3068251794 | Rob Friesen | Rob Friesen | ✅ YES | ✅ YES |
| 3068251795 | Bradley Schiller | Bradley Schiller | ✅ YES | ✅ YES |
| 3068251797 | Chad Stacey | Nitrogen Aficial | ❌ NO | ✅ YES |
| 3068251799 | Glen Nelson | Glen Nelson | ✅ YES | ✅ YES |
| 3068251800 | Aaron Winterhalt | Aaron Winterhalt | ✅ YES | ✅ YES |
| 3068251801 | Anna Meikle | Anna Meikle | ✅ YES | ✅ YES |
| 3068251806 | Troy Temple | Troy Temple | ✅ YES | ✅ YES |
| 3068251808 | Robert Mosimann | Robert Mosimann | ✅ YES | ✅ YES |
| 3068251809 | Zahid Hussain | Zahid Hussain | ✅ YES | ✅ YES |
| 3068251811 | Preston Mack | Preston Mack | ✅ YES | ✅ YES |
| 3068251814 | Tyler Long | Chris Kohle | ❌ NO | ✅ YES |
| 3068251818 | Lane Nedelec | Lane Nedelec | ✅ YES | ✅ YES |
| 3068251821 | Cameron Morrison | Cameron Morrison | ✅ YES | ✅ YES |
| 3068251822 | Sherron Robinson | Sherron Robinson | ✅ YES | ✅ YES |
| 3068251827 | Josh Wunder | Josh Wunder | ✅ YES | ✅ YES |
| 3068251830 | Trent Lafreniere | Trent Lafreniere | ✅ YES | ✅ YES |
| 3068251832 | Brennan Budd | Christopher Head | ❌ NO | ✅ YES |
| 3068251835 | Drew Pritchard | Drew Pritchard | ✅ YES | ✅ YES |
| 3068251837 | Kevin Ulrich | Kevin Ulrich | ✅ YES | ✅ YES |
| 3068251843 | Dorin Fedyk | Dorin Fedyk | ✅ YES | ✅ YES |
| 3068251850 | John Robinson | John Robinson | ✅ YES | ✅ YES |
| 3068251851 | Matthew Pedlar | Matthew Pedlar | ✅ YES | ✅ YES |
| 3068251852 | Charles Allen | Charles Allen | ✅ YES | ✅ YES |
| 3068251853 | Tyler McLeod | Tyler McLeod | ✅ YES | ✅ YES |
| 3068251854 | Duane Riedel | Duane Riedel | ✅ YES | ✅ YES |
| 3068251856 | Jonathan Findlay | Robert Borysiuk | ❌ NO | ✅ YES |
| 3068251858 | Mark Ainslie | Mark Ainslie | ✅ YES | ✅ YES |
| 3068251862 | Lynn Hagerman | Lynn Hagerman | ✅ YES | ✅ YES |
| 3068251865 | Darryl Timmerman | Darryl Timmerman | ✅ YES | ✅ YES |
| 3068251866 | Brandon Bardoel | Brandon Bardoel | ✅ YES | ✅ YES |
| 3068251869 | Kevin Bischler | Kevin Bischler | ✅ YES | ✅ YES |
| 3068251870 | Brad Passmore | Brad Passmore | ✅ YES | ✅ YES |
| 3068251873 | Trent Oram | Trent Oram | ✅ YES | ✅ YES |
| 3068251875 | Jason Busch | Jason Busch | ✅ YES | ✅ YES |
| 3068251878 | Courtney Hicks | Courtney Hicks | ✅ YES | ✅ YES |
| 3068251888 | Shiv Patel | Shiv Patel | ✅ YES | ✅ YES |
| 3068251900 | Brent Moline | Brent Moline | ✅ YES | ✅ YES |
| 3068251901 | Jocelan Lundquist | Jocelan Lundquist | ✅ YES | ✅ YES |
| 3068251902 | Brandyn Baranitsky | Brandyn Baranitsky | ✅ YES | ✅ YES |
| 3068251907 | Don Kormysh | Don Kormysh | ✅ YES | ✅ YES |
| 3068251914 | Katrina Campeau | Katrina Campeau | ✅ YES | ✅ YES |
| 3068251921 | Shawn Brost | Shawn Brost | ✅ YES | ✅ YES |
| 3068251924 | Jullie Andersen | Jullie Andersen | ✅ YES | ✅ YES |
| 3068251931 | Iffat Taimoor | Iffat Taimoor | ✅ YES | ✅ YES |
| 3068251936 | Michael McQuade | Michael McQuade | ✅ YES | ✅ YES |
| 3068251940 | Paul Rousson | Paul Rousson | ✅ YES | ✅ YES |
| 3068251950 | Neil Zack | Charles Eaket | ❌ NO | ✅ YES |
| 3068251951 | Jennifer Gravel | Jennifer Gravel | ✅ YES | ✅ YES |
| 3068251959 | Sean Morland | Sean Morland | ✅ YES | ✅ YES |
| 3068251960 | Catherine Norman | Catherine Norman | ✅ YES | ✅ YES |
| 3068251962 | Charlene Joa | Charlene Joa | ✅ YES | ✅ YES |
| 3068251965 | Neal Derenowsky | Neal Derenowsky | ✅ YES | ✅ YES |
| 3068251967 | Jason Thomas | Jason Thomas | ✅ YES | ✅ YES |
| 3068251968 | Evgeniia Walker | Evgeniia Walker | ✅ YES | ✅ YES |
| 3068251969 | Kory Yustak | Kory Yustak | ✅ YES | ✅ YES |
| 3068251981 | Sunil Gupta | Sunil Gupta | ✅ YES | ✅ YES |
| 3068251983 | Larry Lascelle | Larry Lascelle | ✅ YES | ✅ YES |
| 3068251984 | Marlon Macalla | Marlon Macalla | ✅ YES | ✅ YES |
| 3068251985 | Michael Willard | Michael Willard | ✅ YES | ✅ YES |
| 3068251987 | Kyle Roberge | Kyle Roberge | ✅ YES | ✅ YES |
| 3068251988 | Jacob White | Jacob White | ✅ YES | ✅ YES |
| 3068251989 | Harold Keith Zufelt | Harold Keith Zufelt | ✅ YES | ✅ YES |
| 3068251991 | Ho In Cheang-Deis | Ho In Cheang-Deis | ✅ YES | ✅ YES |
| 3068251992 | Steven Hill | Steven Hill | ✅ YES | ✅ YES |
| 3068251994 | Fay AuCoin | Fay AuCoin | ✅ YES | ✅ YES |
| 3068251995 | Chris Blaquiere | Chris Blaquiere | ✅ YES | ✅ YES |
| 3068251998 | Kevin Bezanson | Kevin Bezanson | ✅ YES | ✅ YES |
| 3068253654 | Dennis Maertz | Dennis Maertz | ✅ YES | ✅ YES |
| 3068265650 | Trevor Taylor | Barret Forget | ❌ NO | ✅ YES |
| 3068454435 | David Latendresse | David Latendresse | ✅ YES | ✅ YES |
| 3068932266 | Shelley Green | Shannon Ducharme | ❌ NO | ✅ YES |
| 3068934900 | James Donald | James Donald | ✅ YES | ✅ YES |
| 3068952040 | William Avotins | William Avotins | ✅ YES | ✅ YES |
| 3069343033 | Scott McGirr | Scott McGirr | ✅ YES | ✅ YES |
| 3069345825 | Chad Hanson | Chad Hanson | ✅ YES | ✅ YES |
| 3069557900 | Brett Lambden | Brett Lambden | ✅ YES | ✅ YES |
| 3069557903 | Jason Spencer | Jason Spencer | ✅ YES | ✅ YES |
| 3069557904 | Sherri Marquis | Sherri Marquis | ✅ YES | ✅ YES |
| 3069557908 | Jared Marquis | Jared Marquis | ✅ YES | ✅ YES |
| 3069557909 | Neal Breckon | Neal Breckon | ✅ YES | ✅ YES |
| 3069557910 | Abdul Lakho | Abdul Lakho | ✅ YES | ✅ YES |
| 3069557911 | Mabel Kotei | Mabel Kotei | ✅ YES | ✅ YES |
| 3069557912 | Danielle Marchand | Danielle Marchand | ✅ YES | ✅ YES |
| 3069557916 | Amy Morhart | Amy Morhart | ✅ YES | ✅ YES |
| 3069557917 | Kyle Kluchewski | Kyle Kluchewski | ✅ YES | ✅ YES |
| 3069557919 | Winter Epp | Winter Epp | ✅ YES | ✅ YES |
| 3069557924 | Jay Brewster | Jay Brewster | ✅ YES | ✅ YES |
| 3069557926 | Tallon Stephenson | Tallon Stephenson | ✅ YES | ✅ YES |
| 3069557929 | Blake Kirchner | Blake Kirchner | ✅ YES | ✅ YES |
| 3069557932 | Jon Gunn | Jon Gunn | ✅ YES | ✅ YES |
| 3069557946 | Darren Anweiler | Darren Anweiler | ✅ YES | ✅ YES |
| 4032986001 | Hashim Al-Kindi | Hashim Al-Kindi | ✅ YES | ✅ YES |
| 4032986002 | Mason Villa | Mason Villa | ✅ YES | ✅ YES |
| 4032986005 | Raafi Zia | Raafi Zia | ✅ YES | ✅ YES |
| 4032986006 | Sanjay Kumar Nahak | Sanjay Kumar Nahak | ✅ YES | ✅ YES |
| 4032986007 | Frederick Wolstenholme | Frederick Wolstenholme | ✅ YES | ✅ YES |
| 4032986013 | Tara Denise Ann Tourigny | Tara Denise Ann Tourigny | ✅ YES | ✅ YES |
| 4032986014 | Jody Stewart | Jody Stewart | ✅ YES | ✅ YES |
| 4032986015 | Ryan Liu | Ryan Liu | ✅ YES | ✅ YES |
| 4032986016 | Trent Mastel | Trent Mastel | ✅ YES | ✅ YES |
| 4032986017 | Isabel McRitchie | Isabel McRitchie | ✅ YES | ✅ YES |
| 4032986018 | Andrea Golding | Andrea Golding | ✅ YES | ✅ YES |
| 4032986020 | Sivakumar Palanivel | Sivakumar Palanivel | ✅ YES | ✅ YES |
| 4032986021 | Trudy Feldmeyer | Trudy Feldmeyer | ✅ YES | ✅ YES |
| 4032986022 | Becky Harish | Becky Harish | ✅ YES | ✅ YES |
| 4032986024 | Joanna Sullivan | Joanna Sullivan | ✅ YES | ✅ YES |
| 4032986025 | Gokul S Chellamuthu | Gokul S Chellamuthu | ✅ YES | ✅ YES |
| 4032986026 | Okechukwu Uchendu | Okechukwu Uchendu | ✅ YES | ✅ YES |
| 4032986027 | Brittney Ha | Brittney Ha | ✅ YES | ✅ YES |
| 4032986028 | Manvir Tatla | Manvir Tatla | ✅ YES | ✅ YES |
| 4032986029 | Alexandra Best | Alexandra Best | ✅ YES | ✅ YES |
| 4032986031 | Jolene Varndell | Jolene Varndell | ✅ YES | ✅ YES |
| 4032986032 | Faye Byard | Faye Byard | ✅ YES | ✅ YES |
| 4032986035 | John Brown | John Brown | ✅ YES | ✅ YES |
| 4032986036 | Melanie Breakenridge | Melanie Breakenridge | ✅ YES | ✅ YES |
| 4032986038 | Todd Gustafsson | Todd Gustafsson | ✅ YES | ✅ YES |
| 4032986040 | Nelaturi Reddy | Nelaturi Reddy | ✅ YES | ✅ YES |
| 4032986041 | Erik Wilson | Erik Wilson | ✅ YES | ✅ YES |
| 4032986043 | Michelle Guo | Michelle Guo | ✅ YES | ✅ YES |
| 4032986044 | Rahul Bamotra | Rahul Bamotra | ✅ YES | ✅ YES |
| 4032986045 | Salimah Pirbhai | Salimah Pirbhai | ✅ YES | ✅ YES |
| 4032986046 | Ethan Scott | Ethan Scott | ✅ YES | ✅ YES |
| 4032986047 | Connor Yakemchuk | Connor Yakemchuk | ✅ YES | ✅ YES |
| 4032986048 | Alison Pate | Alison Pate | ✅ YES | ✅ YES |
| 4032986050 | Katie Anne Dalton | Katie Anne Dalton | ✅ YES | ✅ YES |
| 4032986052 | Daniel Mora | Daniel Mora | ✅ YES | ✅ YES |
| 4032986053 | Jacob Beliveau | Jacob Beliveau | ✅ YES | ✅ YES |
| 4032986054 | Jody Ann Liwanag | Jody Ann Liwanag | ✅ YES | ✅ YES |
| 4032986055 | Dianne Tomko-Baker | Dianne Tomko-Baker | ✅ YES | ✅ YES |
| 4032986057 | Jasmine Lee | Jasmine Lee | ✅ YES | ✅ YES |
| 4032986059 | Cristobal Sarmiento | Cristobal Sarmiento | ✅ YES | ✅ YES |
| 4032986061 | Esther Issler | Esther Issler | ✅ YES | ✅ YES |
| 4032986066 | Sumedha Talukdar | Sumedha Talukdar | ✅ YES | ✅ YES |
| 4032986071 | Siqi Chen | Siqi Chen | ✅ YES | ✅ YES |
| 4032986073 | Stephanie Changkye | Stephanie Changkye | ✅ YES | ✅ YES |
| 4032986074 | Tyler Winter | Tyler Winter | ✅ YES | ✅ YES |
| 4032986075 | Nicolas Zaher | Nicolas Zaher | ✅ YES | ✅ YES |
| 4032986076 | Simone Garossino | Simone Garossino | ✅ YES | ✅ YES |
| 4032986078 | Yunji Jiang | Yunji Jiang | ✅ YES | ✅ YES |
| 4032986082 | Denis Plechkov | Denis Plechkov | ✅ YES | ✅ YES |
| 4032986085 | Sudarshan Lohar | Sudarshan Lohar | ✅ YES | ✅ YES |
| 4032986087 | Wesley McKinnon | Wesley McKinnon | ✅ YES | ✅ YES |
| 4032986088 | Aman Chugh | Aman Chugh | ✅ YES | ✅ YES |
| 4032986090 | Fergus Larter | Fergus Larter | ✅ YES | ✅ YES |
| 4032986091 | Marissa Whittaker | Marissa Whittaker | ✅ YES | ✅ YES |
| 4032986092 | An Ting Wang | An Ting Wang | ✅ YES | ✅ YES |
| 4032986095 | Chelsea Harris | Chelsea Harris | ✅ YES | ✅ YES |
| 4032986097 | Sarah Breitkreitz | Sarah Breitkreitz | ✅ YES | ✅ YES |
| 4032986098 | Robert Hayward | Robert Hayward | ✅ YES | ✅ YES |
| 4032986101 | Manjunath Karanji | Manjunath Karanji | ✅ YES | ✅ YES |
| 4032986102 | Madhura Meenakshi Chintha | Madhura Meenakshi Chintha | ✅ YES | ✅ YES |
| 4032986103 | Matthew Cundall | Matthew Cundall | ✅ YES | ✅ YES |
| 4032986104 | Martin Ray | Martin Ray | ✅ YES | ✅ YES |
| 4032986105 | Natalie Taylor | Natalie Taylor | ✅ YES | ✅ YES |
| 4032986112 | Minh Bao | Minh Bao | ✅ YES | ✅ YES |
| 4032986115 | Dara Trinh | Dara Trinh | ✅ YES | ✅ YES |
| 4032986117 | Victoria Saunders | Victoria Saunders | ✅ YES | ✅ YES |
| 4032986118 | Shahrukh Bhojani | Shahrukh Bhojani | ✅ YES | ✅ YES |
| 4032986119 | Rosalie D'Arcangelo | Rosalie D'Arcangelo | ✅ YES | ✅ YES |
| 4032986120 | Brad Batten | Brad Batten | ✅ YES | ✅ YES |
| 4032986121 | Carrick Lebrecht | Carrick Lebrecht | ✅ YES | ✅ YES |
| 4032986122 | Jiyoon Park | Jiyoon Park | ✅ YES | ✅ YES |
| 4032986125 | Barbara Piron | Barbara Piron | ✅ YES | ✅ YES |
| 4032986127 | John Price | John Price | ✅ YES | ✅ YES |
| 4032986128 | Christine Stipanov | Christine Stipanov | ✅ YES | ✅ YES |
| 4032986132 | Stuart Boak | Stuart Boak | ✅ YES | ✅ YES |
| 4032986141 | Edlira Doko | Edlira Doko | ✅ YES | ✅ YES |
| 4032986142 | Eva Moyse | Eva Moyse | ✅ YES | ✅ YES |
| 4032986144 | Lorraine Nixon | Lorraine Nixon | ✅ YES | ✅ YES |
| 4032986145 | Joab Francis Braganza | Joab Francis Braganza | ✅ YES | ✅ YES |
| 4032986146 | Sandra Howard | Sandra Howard | ✅ YES | ✅ YES |
| 4032986148 | Taleesha Thorogood | Taleesha Thorogood | ✅ YES | ✅ YES |
| 4032986149 | Esha Khawaja | Esha Khawaja | ✅ YES | ✅ YES |
| 4032986151 | Alice Lo | Alice Lo | ✅ YES | ✅ YES |
| 4032986153 | Dana Mae Mendoza | Dana Mae Mendoza | ✅ YES | ✅ YES |
| 4032986154 | MJ Lech | MJ Lech | ✅ YES | ✅ YES |
| 4032986155 | Timothy Bruce | Timothy Bruce | ✅ YES | ✅ YES |
| 4032986156 | Niki Pham | Niki Pham | ✅ YES | ✅ YES |
| 4032986157 | Corey Wirun | Corey Wirun | ✅ YES | ✅ YES |
| 4032986159 | Amanda Bouchie | Amanda Bouchie | ✅ YES | ✅ YES |
| 4032986163 | Balaji Tenneti | Balaji Tenneti | ✅ YES | ✅ YES |
| 4032986169 | Travis Rotariu | Travis Rotariu | ✅ YES | ✅ YES |
| 4032986171 | Raymund Del Rosario | Raymund Del Rosario | ✅ YES | ✅ YES |
| 4032986177 | Masaharu Ono | Masaharu Ono | ✅ YES | ✅ YES |
| 4032986180 | Robert Remus | Robert Remus | ✅ YES | ✅ YES |
| 4032986181 | Janice Yan | Janice Yan | ✅ YES | ✅ YES |
| 4032986182 | Korra Guruprasad Naik | Korra Guruprasad Naik | ✅ YES | ✅ YES |
| 4032986183 | Basavaraj Hosur | Basavaraj Hosur | ✅ YES | ✅ YES |
| 4032986185 | Muralikrishna Kurubaru | Muralikrishna Kurubaru | ✅ YES | ✅ YES |
| 4032986187 | Araoluwa Adegbite | Araoluwa Adegbite | ✅ YES | ✅ YES |
| 4032986189 | Madelaine Yee | Madelaine Yee | ✅ YES | ✅ YES |
| 4032986192 | Lance McLean | Lance McLean | ✅ YES | ✅ YES |
| 4032986193 | Tyler Spackman | Tyler Spackman | ✅ YES | ✅ YES |
| 4032986198 | Mykola Chasovskykh | Mykola Chasovskykh | ✅ YES | ✅ YES |
| 4032986199 | Thomas Hollinger | Thomas Hollinger | ✅ YES | ✅ YES |
| 4032986201 | Monica Birea | Monica Birea | ✅ YES | ✅ YES |
| 4032986203 | Erin Lundrigan | Erin Lundrigan | ✅ YES | ✅ YES |
| 4032986206 | Keenan Haveroen | Keenan Haveroen | ✅ YES | ✅ YES |
| 4032986211 | Bryan Yu | Bryan Yu | ✅ YES | ✅ YES |
| 4032986212 | Haley Henschel | Haley Henschel | ✅ YES | ✅ YES |
| 4032986213 | Marc Rapin | Marc Rapin | ✅ YES | ✅ YES |
| 4032986215 | Keith MacMillan | Keith MacMillan | ✅ YES | ✅ YES |
| 4032986216 | Seyedeh Shamekhi | Seyedeh Shamekhi | ✅ YES | ✅ YES |
| 4032986220 | Dina Jufrie | Dina Jufrie | ✅ YES | ✅ YES |
| 4032986221 | Christopher Henry | Christopher Henry | ✅ YES | ✅ YES |
| 4032986222 | Maliha Chowdhury | Maliha Chowdhury | ✅ YES | ✅ YES |
| 4032986223 | Michael Jessome | Natasha Dhillon-Penner | ❌ NO | ✅ YES |
| 4032986224 | Laila Henderson | Laila Henderson | ✅ YES | ✅ YES |
| 4032986226 | Beverly Boyce | Beverly Boyce | ✅ YES | ✅ YES |
| 4032986228 | Bonnie Hanberry | Bonnie Hanberry | ✅ YES | ✅ YES |
| 4032986229 | Lisa Nagle | Lisa Nagle | ✅ YES | ✅ YES |
| 4032986230 | Muhammad Taimur Akhtar | Jodi Beck | ❌ NO | ✅ YES |
| 4032986233 | Wayne Casper | Wayne Casper | ✅ YES | ✅ YES |
| 4032986235 | Justin Rider | Justin Rider | ✅ YES | ✅ YES |
| 4032986236 | Peter Feick | Peter Feick | ✅ YES | ✅ YES |
| 4032986237 | Brian McKenna | Brian McKenna | ✅ YES | ✅ YES |
| 4032986239 | Juliya Boyko | Juliya Boyko | ✅ YES | ✅ YES |
| 4032986240 | Dennis Croteau | Dennis Croteau | ✅ YES | ✅ YES |
| 4032986241 | Dotun Somoye | Dotun Somoye | ✅ YES | ✅ YES |
| 4032986242 | Sudheerkumar Gangapuram | Sudheerkumar Gangapuram | ✅ YES | ✅ YES |
| 4032986244 | Shivaraja MS | Shivaraja MS | ✅ YES | ✅ YES |
| 4032986246 | Jithin Raj | Jithin Raj | ✅ YES | ✅ YES |
| 4032986247 | Sean Woodbury | Sean Woodbury | ✅ YES | ✅ YES |
| 4032986252 | Magaly Pereira | Magaly Pereira | ✅ YES | ✅ YES |
| 4032986254 | Daniel Gayle | Daniel Gayle | ✅ YES | ✅ YES |
| 4032986257 | Brett Bromley | Brett Bromley | ✅ YES | ✅ YES |
| 4032986258 | Mario Junguito | Mario Junguito | ✅ YES | ✅ YES |
| 4032986259 | Dayana Algarin | Dayana Algarin | ✅ YES | ✅ YES |
| 4032986260 | Marc Chartrand | Marc Chartrand | ✅ YES | ✅ YES |
| 4032986264 | Mitchel Mackay | Mitchel Mackay | ✅ YES | ✅ YES |
| 4032986265 | Scott Lindvall | Scott Lindvall | ✅ YES | ✅ YES |
| 4032986266 | Hakan Ceylan | Hakan Ceylan | ✅ YES | ✅ YES |
| 4032986269 | Madan Singh Sikarwar | Madan Singh Sikarwar | ✅ YES | ✅ YES |
| 4032986272 | Hyndava Reddy Valipireddy | Hyndava Reddy Valipireddy | ✅ YES | ✅ YES |
| 4032986273 | Sarath Peri | Sarath Peri | ✅ YES | ✅ YES |
| 4032986277 | Darcy Novak | Darcy Novak | ✅ YES | ✅ YES |
| 4032986281 | Theophanio Sablay | Theophanio Sablay | ✅ YES | ✅ YES |
| 4032986283 | Karen Cisneros | Karen Cisneros | ✅ YES | ✅ YES |
| 4032986285 | T. Minh Nguy | T. Minh Nguy | ✅ YES | ✅ YES |
| 4032986287 | Jansen Lorena | Jansen Lorena | ✅ YES | ✅ YES |
| 4032986289 | Dushyant Jaitly | Dushyant Jaitly | ✅ YES | ✅ YES |
| 4032986291 | Robbie Morton | Robbie Morton | ✅ YES | ✅ YES |
| 4032986301 | Sunil Kambar | Sunil Kambar | ✅ YES | ✅ YES |
| 4032986302 | Lorilyn Wang | Lorilyn Wang | ✅ YES | ✅ YES |
| 4032986303 | Brian Donkers | Brian Donkers | ✅ YES | ✅ YES |
| 4032986306 | Suzana Lojic | Suzana Lojic | ✅ YES | ✅ YES |
| 4032986312 | Tyson Lowrie | Tyson Lowrie | ✅ YES | ✅ YES |
| 4032986316 | Lee McInnis | Lee McInnis | ✅ YES | ✅ YES |
| 4032986323 | Rydell Ohryn | Rydell Ohryn | ✅ YES | ✅ YES |
| 4032986328 | Jonah Sair | Jonah Sair | ✅ YES | ✅ YES |
| 4032986329 | Adam Saunders | Adam Saunders | ✅ YES | ✅ YES |
| 4032986332 | Kevin Hyland | Kevin Hyland | ✅ YES | ✅ YES |
| 4032986337 | Laura Rotzien | Laura Rotzien | ✅ YES | ✅ YES |
| 4032986338 | Matthew Goh | Matthew Goh | ✅ YES | ✅ YES |
| 4032986341 | Dan Sheppard | Dan Sheppard | ✅ YES | ✅ YES |
| 4032986342 | George Bush A | George Bush A | ✅ YES | ✅ YES |
| 4032986344 | Chris Karpuk | Chris Karpuk | ✅ YES | ✅ YES |
| 4032986345 | Sydney Little | Sydney Little | ✅ YES | ✅ YES |
| 4032986347 | Alicia Tully | Alicia Tully | ✅ YES | ✅ YES |
| 4032986353 | Lina Zhang | Lina Zhang | ✅ YES | ✅ YES |
| 4032986355 | Benjamin White | Benjamin White | ✅ YES | ✅ YES |
| 4032986356 | Colette Lovell | Colette Lovell | ✅ YES | ✅ YES |
| 4032986357 | Stuart Derbyshire | Stuart Derbyshire | ✅ YES | ✅ YES |
| 4032986358 | Jessica Chiasson | Jessica Chiasson | ✅ YES | ✅ YES |
| 4032986360 | Jung-Yeup Suk | Jung-Yeup Suk | ✅ YES | ✅ YES |
| 4032986363 | Richard Mogensen | Richard Mogensen | ✅ YES | ✅ YES |
| 4032986366 | Christopher Carter | Christopher Carter | ✅ YES | ✅ YES |
| 4032986368 | Taylor Potter | Taylor Potter | ✅ YES | ✅ YES |
| 4032986369 | Sahar Gresham | Sahar Gresham | ✅ YES | ✅ YES |
| 4032986370 | Justin Samaska | Justin Samaska | ✅ YES | ✅ YES |
| 4032986371 | Sviatoslav Iuras | Sviatoslav Iuras | ✅ YES | ✅ YES |
| 4032986374 | Aaron Pahl | Aaron Pahl | ✅ YES | ✅ YES |
| 4032986375 | Linda Colabella | Linda Colabella | ✅ YES | ✅ YES |
| 4032986377 | Rhoda Granado | Ayesha Shinde | ❌ NO | ✅ YES |
| 4032986382 | Jonathan Meades | Jonathan Meades | ✅ YES | ✅ YES |
| 4032986383 | Samuel Smiley | Samuel Smiley | ✅ YES | ✅ YES |
| 4032986384 | Kevin Ly | Kevin Ly | ✅ YES | ✅ YES |
| 4032986388 | Ashir Ramji | Ashir Ramji | ✅ YES | ✅ YES |
| 4032986389 | Awais Rasool | Awais Rasool | ✅ YES | ✅ YES |
| 4032986390 | Ian Mayhood | Ian Mayhood | ✅ YES | ✅ YES |
| 4032986392 | Narasimha Murthy | Narasimha Murthy | ✅ YES | ✅ YES |
| 4032986393 | Garett Ursu | Garett Ursu | ✅ YES | ✅ YES |
| 4032986394 | Mazin Tabsh | Mazin Tabsh | ✅ YES | ✅ YES |
| 4032986396 | Parvathy Charuroopa | Parvathy Charuroopa | ✅ YES | ✅ YES |
| 4032986397 | Peter Donner | Peter Donner | ✅ YES | ✅ YES |
| 4032986398 | Reid Morris | Reid Morris | ✅ YES | ✅ YES |
| 4032986399 | Megan Porter | Megan Porter | ✅ YES | ✅ YES |
| 4032986400 | Calvin Gee | Calvin Gee | ✅ YES | ✅ YES |
| 4032986407 | Nidhi Agrawal | Nidhi Agrawal | ✅ YES | ✅ YES |
| 4032986409 | Ashok Kumar | Ashok Kumar | ✅ YES | ✅ YES |
| 4032986411 | Sharina Dumaran | Sharina Dumaran | ✅ YES | ✅ YES |
| 4032986412 | Gurarman Nijjar | Gurarman Nijjar | ✅ YES | ✅ YES |
| 4032986413 | Pranam Haniyoor Purushothama | Pranam Haniyoor Purushothama | ✅ YES | ✅ YES |
| 4032986415 | Robert McCullough | Robert McCullough | ✅ YES | ✅ YES |
| 4032986418 | Soumallya Pal | Soumallya Pal | ✅ YES | ✅ YES |
| 4032986420 | Nicole Rebustillo | Nicole Rebustillo | ✅ YES | ✅ YES |
| 4032986422 | Sandhiya Natarajan | Sandhiya Natarajan | ✅ YES | ✅ YES |
| 4032986425 | Keerthi Mulam | Keerthi Mulam | ✅ YES | ✅ YES |
| 4032986426 | Ashley Lacombe | Ashley Lacombe | ✅ YES | ✅ YES |
| 4032986431 | Derek Skeet | Derek Skeet | ✅ YES | ✅ YES |
| 4032986433 | Paul Meyer | Paul Meyer | ✅ YES | ✅ YES |
| 4032986434 | Marie Thompson | Marie Thompson | ✅ YES | ✅ YES |
| 4032986438 | Nancy Anderson | Nancy Anderson | ✅ YES | ✅ YES |
| 4032986439 | Natalia Barbour | Natalia Barbour | ✅ YES | ✅ YES |
| 4032986441 | Jason Frank | Jason Frank | ✅ YES | ✅ YES |
| 4032986443 | Jinyu Jiao | Jinyu Jiao | ✅ YES | ✅ YES |
| 4032986444 | Elizabeth Ryan | Elizabeth Ryan | ✅ YES | ✅ YES |
| 4032986445 | Elizabeth Ricord | Elizabeth Ricord | ✅ YES | ✅ YES |
| 4032986447 | Bryan Zintel | Bryan Zintel | ✅ YES | ✅ YES |
| 4032986449 | Murageshgouda Fakkiragoudar | Murageshgouda Fakkiragoudar | ✅ YES | ✅ YES |
| 4032986450 | Zane Nolin | Zane Nolin | ✅ YES | ✅ YES |
| 4032986451 | Bradley Hawkins | Bradley Hawkins | ✅ YES | ✅ YES |
| 4032986452 | Brennan Hagerty | Brennan Hagerty | ✅ YES | ✅ YES |
| 4032986453 | Cliodhna Carroll | Cliodhna Carroll | ✅ YES | ✅ YES |
| 4032986455 | Nicola Reynolds | Nicola Reynolds | ✅ YES | ✅ YES |
| 4032986463 | Nicholas Wilding | Nicholas Wilding | ✅ YES | ✅ YES |
| 4032986464 | Dubert Gutierrez | Dubert Gutierrez | ✅ YES | ✅ YES |
| 4032986465 | Nathalie Babineau | Nathalie Babineau | ✅ YES | ✅ YES |
| 4032986466 | Derek Klein | Derek Klein | ✅ YES | ✅ YES |
| 4032986467 | Tricia Smit | Tricia Smit | ✅ YES | ✅ YES |
| 4032986469 | Coty Howling | Coty Howling | ✅ YES | ✅ YES |
| 4032986472 | Julie Russell | Julie Russell | ✅ YES | ✅ YES |
| 4032986475 | Ali Syed | Ali Syed | ✅ YES | ✅ YES |
| 4032986477 | Sandra Dwyer | Sandra Dwyer | ✅ YES | ✅ YES |
| 4032986478 | Adedayo Adeyemo | Adedayo Adeyemo | ✅ YES | ✅ YES |
| 4032986479 | Nicholas Germain | Nicholas Germain | ✅ YES | ✅ YES |
| 4032986481 | Lokesh Pathak | Lokesh Pathak | ✅ YES | ✅ YES |
| 4032986482 | Kalyan Bhimcharla | Kalyan Bhimcharla | ✅ YES | ✅ YES |
| 4032986483 | Katelynd Horvath | Katelynd Horvath | ✅ YES | ✅ YES |
| 4032986484 | Joycelyn Ho | Joycelyn Ho | ✅ YES | ✅ YES |
| 4032986485 | Branda Couturier-Willoughby | Branda Couturier-Willoughby | ✅ YES | ✅ YES |
| 4032986487 | Marvin Kessel | Marvin Kessel | ✅ YES | ✅ YES |
| 4032986488 | Karen Ngo | Karen Ngo | ✅ YES | ✅ YES |
| 4032986489 | Bernice Yang | Bernice Yang | ✅ YES | ✅ YES |
| 4032986491 | Dawne OHare | Dawne OHare | ✅ YES | ✅ YES |
| 4032986492 | Mekash Rudren | Mekash Rudren | ✅ YES | ✅ YES |
| 4032986493 | Rosa Petrillo | Rosa Petrillo | ✅ YES | ✅ YES |
| 4032986496 | Elizabeth Bradshaw | Elizabeth Bradshaw | ✅ YES | ✅ YES |
| 4032986501 | Ethan Chow | Ethan Chow | ✅ YES | ✅ YES |
| 4032986502 | Stephen Bromley | Stephen Bromley | ✅ YES | ✅ YES |
| 4032986503 | Mary Susan LeRouzic | Mary Susan LeRouzic | ✅ YES | ✅ YES |
| 4032986504 | Melanie Murray | Melanie Murray | ✅ YES | ✅ YES |
| 4032986506 | Isabel Capel | Isabel Capel | ✅ YES | ✅ YES |
| 4032986507 | Baohua An | Baohua An | ✅ YES | ✅ YES |
| 4032986508 | Tristan Escobar | Tristan Escobar | ✅ YES | ✅ YES |
| 4032986510 | Bradley Olson | Bradley Olson | ✅ YES | ✅ YES |
| 4032986511 | Niko Barrera | Niko Barrera | ✅ YES | ✅ YES |
| 4032986512 | Simon Paquet | Simon Paquet | ✅ YES | ✅ YES |
| 4032986514 | Robin Skavberg | Robin Skavberg | ✅ YES | ✅ YES |
| 4032986522 | Jennifer Barcelona | Jennifer Barcelona | ✅ YES | ✅ YES |
| 4032986523 | Chenying Li | Chenying Li | ✅ YES | ✅ YES |
| 4032986525 | Suhas D'sa | Suhas D'sa | ✅ YES | ✅ YES |
| 4032986527 | Ryan Muskego | Ryan Muskego | ✅ YES | ✅ YES |
| 4032986528 | Dhaval Mistry | Dhaval Mistry | ✅ YES | ✅ YES |
| 4032986529 | Lisa Harbidge | Lisa Harbidge | ✅ YES | ✅ YES |
| 4032986530 | Terry Scott | Terry Scott | ✅ YES | ✅ YES |
| 4032986532 | Riyan Roy | Riyan Roy | ✅ YES | ✅ YES |
| 4032986535 | Brant Skibsted | Brant Skibsted | ✅ YES | ✅ YES |
| 4032986536 | Amy Trenhaile | Amy Trenhaile | ✅ YES | ✅ YES |
| 4032986537 | Janell Schwartz | Janell Schwartz | ✅ YES | ✅ YES |
| 4032986539 | Lisa Warren | Lisa Warren | ✅ YES | ✅ YES |
| 4032986540 | Sainath Kanamarlapudi | Sainath Kanamarlapudi | ✅ YES | ✅ YES |
| 4032986541 | Haniff Ramdeen | Haniff Ramdeen | ✅ YES | ✅ YES |
| 4032986542 | Cindy Botten | Cindy Botten | ✅ YES | ✅ YES |
| 4032986543 | James Semenick | James Semenick | ✅ YES | ✅ YES |
| 4032986549 | Jason Rende | Jason Rende | ✅ YES | ✅ YES |
| 4032986551 | Dean Ogren | Dean Ogren | ✅ YES | ✅ YES |
| 4032986552 | Michael Kremer | Michael Kremer | ✅ YES | ✅ YES |
| 4032986554 | Heather Williams | Heather Williams | ✅ YES | ✅ YES |
| 4032986557 | Searesh Munir | Searesh Munir | ✅ YES | ✅ YES |
| 4032986560 | Wanda Johnson | Wanda Johnson | ✅ YES | ✅ YES |
| 4032986563 | Khaldoun El Sidawi | Khaldoun El Sidawi | ✅ YES | ✅ YES |
| 4032986565 | Sara Politeski | Sara Politeski | ✅ YES | ✅ YES |
| 4032986571 | Lisa Noel | Lisa Noel | ✅ YES | ✅ YES |
| 4032986572 | Brett Vancuren | Brett Vancuren | ✅ YES | ✅ YES |
| 4032986573 | Scott Preston | Scott Preston | ✅ YES | ✅ YES |
| 4032986577 | Neetesh Raj | Neetesh Raj | ✅ YES | ✅ YES |
| 4032986579 | Jesse Jones | Jesse Jones | ✅ YES | ✅ YES |
| 4032986580 | Arthur Chow | Arthur Chow | ✅ YES | ✅ YES |
| 4032986581 | Penny White | Penny White | ✅ YES | ✅ YES |
| 4032986583 | Alfred Joshua Aquino | Alfred Joshua Aquino | ✅ YES | ✅ YES |
| 4032986588 | Ashlin Ding | Ashlin Ding | ✅ YES | ✅ YES |
| 4032986593 | Osei Effah | Osei Effah | ✅ YES | ✅ YES |
| 4032986597 | Cameron Brown | Cameron Brown | ✅ YES | ✅ YES |
| 4032986601 | Ashley Davidson | Ashley Davidson | ✅ YES | ✅ YES |
| 4032986607 | Clayton Closson | Clayton Closson | ✅ YES | ✅ YES |
| 4032986610 | Elizabeth Myers | Elizabeth Myers | ✅ YES | ✅ YES |
| 4032986614 | Vishnu Vardhan Reddy Gorla | Vishnu Vardhan Reddy Gorla | ✅ YES | ✅ YES |
| 4032986618 | Jennifer Salt | Jennifer Salt | ✅ YES | ✅ YES |
| 4032986620 | Kurtis Wenzel | Kurtis Wenzel | ✅ YES | ✅ YES |
| 4032986628 | Mandhir Sidhu | Mandhir Sidhu | ✅ YES | ✅ YES |
| 4032986629 | Bryce Hassall | Bryce Hassall | ✅ YES | ✅ YES |
| 4032986634 | Usman Hameed | Usman Hameed | ✅ YES | ✅ YES |
| 4032986636 | Ethan Afaganis | Ethan Afaganis | ✅ YES | ✅ YES |
| 4032986637 | Shantel Ryback | Shantel Ryback | ✅ YES | ✅ YES |
| 4032986638 | Michelle McGeoch | Michelle McGeoch | ✅ YES | ✅ YES |
| 4032986639 | Saeid Alaeifar | Saeid Alaeifar | ✅ YES | ✅ YES |
| 4032986640 | Jordan Tracey | Jordan Tracey | ✅ YES | ✅ YES |
| 4032986643 | Trevin Ferens | Trevin Ferens | ✅ YES | ✅ YES |
| 4032986644 | Aliona Cebotari | Aliona Cebotari | ✅ YES | ✅ YES |
| 4032986648 | Antonia Bala | Antonia Bala | ✅ YES | ✅ YES |
| 4032986651 | Jarrod Cheung | Jarrod Cheung | ✅ YES | ✅ YES |
| 4032986652 | Katie Gallant | Katie Gallant | ✅ YES | ✅ YES |
| 4032986654 | Raman Deep Saran | Raman Deep Saran | ✅ YES | ✅ YES |
| 4032986656 | Azim Ramji | Azim Ramji | ✅ YES | ✅ YES |
| 4032986660 | James Jamieson | James Jamieson | ✅ YES | ✅ YES |
| 4032986661 | Rodney Weisner | Rodney Weisner | ✅ YES | ✅ YES |
| 4032986665 | Anggelo Quinonez | Anggelo Quinonez | ✅ YES | ✅ YES |
| 4032986672 | Pavlo Radchenko | Pavlo Radchenko | ✅ YES | ✅ YES |
| 4032986676 | Serhii Stetsenko | Serhii Stetsenko | ✅ YES | ✅ YES |
| 4032986678 | Cheryl Leason | Cheryl Leason | ✅ YES | ✅ YES |
| 4032986680 | Kimberley Soares | Kimberley Soares | ✅ YES | ✅ YES |
| 4032986681 | Gustavo Dominguez | Gustavo Dominguez | ✅ YES | ✅ YES |
| 4032986683 | Xiaoping Zhang | Xiaoping Zhang | ✅ YES | ✅ YES |
| 4032986685 | Anurag Aggarwal | Anurag Aggarwal | ✅ YES | ✅ YES |
| 4032986686 | Akshita Tyagi | Akshita Tyagi | ✅ YES | ✅ YES |
| 4032986687 | Parth Somani | Parth Somani | ✅ YES | ✅ YES |
| 4032986688 | Jeffrey Baden | Jeffrey Baden | ✅ YES | ✅ YES |
| 4032986689 | Winnie Lai | Winnie Lai | ✅ YES | ✅ YES |
| 4032986690 | Ruth Dantes | Ruth Dantes | ✅ YES | ✅ YES |
| 4032986693 | Somshreya Chaudhuri | Somshreya Chaudhuri | ✅ YES | ✅ YES |
| 4032986695 | Nikolas Krankowski | Nikolas Krankowski | ✅ YES | ✅ YES |
| 4032986696 | Shan Shi | Shan Shi | ✅ YES | ✅ YES |
| 4032986697 | Atul Gokhale | Atul Gokhale | ✅ YES | ✅ YES |
| 4032986698 | Wendy Clarke | Wendy Clarke | ✅ YES | ✅ YES |
| 4032986700 | Craig Murray | Craig Murray | ✅ YES | ✅ YES |
| 4032986702 | Aileen Lindo | Aileen Lindo | ✅ YES | ✅ YES |
| 4032986703 | Vinayak Vijayan P | Vinayak Vijayan P | ✅ YES | ✅ YES |
| 4032986704 | Chloe Higgs | Chloe Higgs | ✅ YES | ✅ YES |
| 4032986705 | Jeanine Schill | Jeanine Schill | ✅ YES | ✅ YES |
| 4032986706 | Ramprabhu Arulmani | Ramprabhu Arulmani | ✅ YES | ✅ YES |
| 4032986711 | Fraser Lyle | Fraser Lyle | ✅ YES | ✅ YES |
| 4032986712 | Marc Ouellette | Marc Ouellette | ✅ YES | ✅ YES |
| 4032986714 | James Hale | James Hale | ✅ YES | ✅ YES |
| 4032986715 | Muhammad Abduhu | Muhammad Abduhu | ✅ YES | ✅ YES |
| 4032986717 | Jana Cavilla | Jana Cavilla | ✅ YES | ✅ YES |
| 4032986721 | Roubert Dilidili | Roubert Dilidili | ✅ YES | ✅ YES |
| 4032986725 | Johann Go | Johann Go | ✅ YES | ✅ YES |
| 4032986728 | Boyd Tarasoff | Boyd Tarasoff | ✅ YES | ✅ YES |
| 4032986729 | Raymond Croteau | Raymond Croteau | ✅ YES | ✅ YES |
| 4032986733 | Weimin Zhang | Weimin Zhang | ✅ YES | ✅ YES |
| 4032986734 | Christina Nevoral | Christina Nevoral | ✅ YES | ✅ YES |
| 4032986737 | LaxmiPrasanna Kumar | LaxmiPrasanna Kumar | ✅ YES | ✅ YES |
| 4032986738 | Michael Wilchewski | Michael Wilchewski | ✅ YES | ✅ YES |
| 4032986739 | Andrew MacFarlane | Andrew MacFarlane | ✅ YES | ✅ YES |
| 4032986740 | Huichao Wang | Huichao Wang | ✅ YES | ✅ YES |
| 4032986741 | Manjunath Lingam | Manjunath Lingam | ✅ YES | ✅ YES |
| 4032986746 | Darwin Krause | Darwin Krause | ✅ YES | ✅ YES |
| 4032986747 | PengPeng Liu | PengPeng Liu | ✅ YES | ✅ YES |
| 4032986748 | Jason Nozdryn | Jason Nozdryn | ✅ YES | ✅ YES |
| 4032986751 | Peter Yoon | Peter Yoon | ✅ YES | ✅ YES |
| 4032986752 | Sudhakar Arun | Sudhakar Arun | ✅ YES | ✅ YES |
| 4032986753 | Lauren Hooper | Lauren Hooper | ✅ YES | ✅ YES |
| 4032986754 | Andrew Schmidt | Andrew Schmidt | ✅ YES | ✅ YES |
| 4032986755 | Andrew Smith | Andrew Smith | ✅ YES | ✅ YES |
| 4032986756 | Hudson Brooks | Hudson Brooks | ✅ YES | ✅ YES |
| 4032986761 | Mirzet Draganovic | Mirzet Draganovic | ✅ YES | ✅ YES |
| 4032986762 | Aylin Habibiyan | Aylin Habibiyan | ✅ YES | ✅ YES |
| 4032986765 | Vaughn Oberst | Vaughn Oberst | ✅ YES | ✅ YES |
| 4032986767 | Xiaoying Cheng | Xiaoying Cheng | ✅ YES | ✅ YES |
| 4032986768 | Guilherme Gramari | Guilherme Gramari | ✅ YES | ✅ YES |
| 4032986772 | Bridgette Hanson | Bridgette Hanson | ✅ YES | ✅ YES |
| 4032986774 | Viola Bidaj | Viola Bidaj | ✅ YES | ✅ YES |
| 4032986775 | Ludmila Makarov | Ludmila Makarov | ✅ YES | ✅ YES |
| 4032986779 | Phillip Leibrecht | Phillip Leibrecht | ✅ YES | ✅ YES |
| 4032986782 | Guoxiong Xie | Guoxiong Xie | ✅ YES | ✅ YES |
| 4032986783 | Mark Hemingson | Mark Hemingson | ✅ YES | ✅ YES |
| 4032986786 | Jack Jonasson | Jack Jonasson | ✅ YES | ✅ YES |
| 4032986789 | Justin Fentie | Justin Fentie | ✅ YES | ✅ YES |
| 4032986791 | Giovanni Bustamante | Giovanni Bustamante | ✅ YES | ✅ YES |
| 4032986793 | Gavin Carson | Gavin Carson | ✅ YES | ✅ YES |
| 4032986794 | David Rowlands | David Rowlands | ✅ YES | ✅ YES |
| 4032986804 | Jasmine Kaur | Jasmine Kaur | ✅ YES | ✅ YES |
| 4032986805 | Gustavo Infante | Gustavo Infante | ✅ YES | ✅ YES |
| 4032986806 | Camryn Trinidad | Camryn Trinidad | ✅ YES | ✅ YES |
| 4032986807 | Sahasranshu Srivastav | Sahasranshu Srivastav | ✅ YES | ✅ YES |
| 4032986811 | Jonathan King | Jonathan King | ✅ YES | ✅ YES |
| 4032986812 | Ha Nguyen | Ha Nguyen | ✅ YES | ✅ YES |
| 4032986823 | Maeve Wilson | Maeve Wilson | ✅ YES | ✅ YES |
| 4032986824 | Franklin Keith Gardner JR | Franklin Keith Gardner JR | ✅ YES | ✅ YES |
| 4032986825 | Iain Shaw | Iain Shaw | ✅ YES | ✅ YES |
| 4032986826 | Sandeep Kumar Veeravalli | Sandeep Kumar Veeravalli | ✅ YES | ✅ YES |
| 4032986828 | Kalin Meyer | Kalin Meyer | ✅ YES | ✅ YES |
| 4032986836 | Kelly Salzl | Kelly Salzl | ✅ YES | ✅ YES |
| 4032986837 | Natalia Januszewski | Natalia Januszewski | ✅ YES | ✅ YES |
| 4032986839 | David Choi | David Choi | ✅ YES | ✅ YES |
| 4032986840 | Jonah Boonstra | Jonah Boonstra | ✅ YES | ✅ YES |
| 4032986843 | John Whitney | John Whitney | ✅ YES | ✅ YES |
| 4032986847 | Connor Jones | Connor Jones | ✅ YES | ✅ YES |
| 4032986848 | Aaron Hill | Aaron Hill | ✅ YES | ✅ YES |
| 4032986852 | Myles Lister | Myles Lister | ✅ YES | ✅ YES |
| 4032986853 | Christopher Skuce | Christopher Skuce | ✅ YES | ✅ YES |
| 4032986855 | Pardeep Kashyap | Pardeep Kashyap | ✅ YES | ✅ YES |
| 4032986856 | Muhammad Muzammil | Muhammad Muzammil | ✅ YES | ✅ YES |
| 4032986859 | Francesca Bizzarri | Francesca Bizzarri | ✅ YES | ✅ YES |
| 4032986861 | Kristina Clark | Kristina Clark | ✅ YES | ✅ YES |
| 4032986868 | Derek Danyliw | Derek Danyliw | ✅ YES | ✅ YES |
| 4032986869 | Parth Satikumar | Parth Satikumar | ✅ YES | ✅ YES |
| 4032986870 | Thomas Hill-Ring | Thomas Hill-Ring | ✅ YES | ✅ YES |
| 4032986872 | Tanya Gapara | Tanya Gapara | ✅ YES | ✅ YES |
| 4032986874 | Evan Zacher | Evan Zacher | ✅ YES | ✅ YES |
| 4032986875 | Trevor Cyr | Trevor Cyr | ✅ YES | ✅ YES |
| 4032986877 | Farshad Zafari | Farshad Zafari | ✅ YES | ✅ YES |
| 4032986878 | Hui Tin Yang | Hui Tin Yang | ✅ YES | ✅ YES |
| 4032986879 | Namrata Mathew | Namrata Mathew | ✅ YES | ✅ YES |
| 4032986881 | Isabelle Gaudet | Isabelle Gaudet | ✅ YES | ✅ YES |
| 4032986884 | Hoang Tran | Hoang Tran | ✅ YES | ✅ YES |
| 4032986887 | Harinath Lakku | Harinath Lakku | ✅ YES | ✅ YES |
| 4032986888 | Nadine Tratch | Nadine Tratch | ✅ YES | ✅ YES |
| 4032986892 | Aneta Reczka | Aneta Reczka | ✅ YES | ✅ YES |
| 4032986895 | Jason Da Costa | Jason Da Costa | ✅ YES | ✅ YES |
| 4032986896 | Issa Haider | Issa Haider | ✅ YES | ✅ YES |
| 4032986897 | Bjorn Leiren | Irfan Siddiqi | ❌ NO | ✅ YES |
| 4032986899 | MacGregor Andrekson | MacGregor Andrekson | ✅ YES | ✅ YES |
| 4032986900 | Evan Morrow | Evan Morrow | ✅ YES | ✅ YES |
| 4032986901 | Radia Rahman | Radia Rahman | ✅ YES | ✅ YES |
| 4032986902 | Jordan Keelan | Jordan Keelan | ✅ YES | ✅ YES |
| 4032986905 | Gwen Kerr | Gwen Kerr | ✅ YES | ✅ YES |
| 4032986906 | Robert Hay | Robert Hay | ✅ YES | ✅ YES |
| 4032986907 | Tracy Himer | Tracy Himer | ✅ YES | ✅ YES |
| 4032986908 | Gregory Uwazny | Gregory Uwazny | ✅ YES | ✅ YES |
| 4032986909 | Adam Marshall | Adam Marshall | ✅ YES | ✅ YES |
| 4032986910 | Miroslava Navratilova | Miroslava Navratilova | ✅ YES | ✅ YES |
| 4032986911 | Neil Scully | Neil Scully | ✅ YES | ✅ YES |
| 4032986913 | Elena Krongold | Elena Krongold | ✅ YES | ✅ YES |
| 4032986916 | James Kamelle | James Kamelle | ✅ YES | ✅ YES |
| 4032986922 | Rodneia Roque | Rodneia Roque | ✅ YES | ✅ YES |
| 4032986926 | Matthew Smith | Matthew Smith | ✅ YES | ✅ YES |
| 4032986930 | Margot Rubin | Margot Rubin | ✅ YES | ✅ YES |
| 4032986933 | Anshi Khatri | Anshi Khatri | ✅ YES | ✅ YES |
| 4032986935 | Shannon Ma | Shannon Ma | ✅ YES | ✅ YES |
| 4032986936 | Douglas Noyes | Douglas Noyes | ✅ YES | ✅ YES |
| 4032986938 | Yonas Embaye | Yonas Embaye | ✅ YES | ✅ YES |
| 4032986939 | Christopher Collins | Christopher Collins | ✅ YES | ✅ YES |
| 4032986940 | Marc O'Donnell | Marc O'Donnell | ✅ YES | ✅ YES |
| 4032986942 | Musturu Deepika | Musturu Deepika | ✅ YES | ✅ YES |
| 4032986944 | Angela Chan | Angela Chan | ✅ YES | ✅ YES |
| 4032986946 | Colin Derdall | Colin Derdall | ✅ YES | ✅ YES |
| 4032986947 | Payton Marcucci | Payton Marcucci | ✅ YES | ✅ YES |
| 4032986948 | Kevork Lochkajian | Kevork Lochkajian | ✅ YES | ✅ YES |
| 4032986950 | Divyangkumar Prajapati | Divyangkumar Prajapati | ✅ YES | ✅ YES |
| 4032986952 | Zhe Qi | Zhe Qi | ✅ YES | ✅ YES |
| 4032986953 | Yang Bai | Yang Bai | ✅ YES | ✅ YES |
| 4032986954 | Holly Nichols | Holly Nichols | ✅ YES | ✅ YES |
| 4032986956 | Angelina Solis-Molina | Angelina Solis-Molina | ✅ YES | ✅ YES |
| 4032986958 | Chirag Desai | Chirag Desai | ✅ YES | ✅ YES |
| 4032986961 | Danielle Bertsch | Danielle Bertsch | ✅ YES | ✅ YES |
| 4032986964 | Rajan Patel | Rajan Patel | ✅ YES | ✅ YES |
| 4032986966 | Aleisha Anderson | Aleisha Anderson | ✅ YES | ✅ YES |
| 4032986967 | Ethan Fisher | Ethan Fisher | ✅ YES | ✅ YES |
| 4032986968 | Cindy Pupp | Cindy Pupp | ✅ YES | ✅ YES |
| 4032986969 | Scott Herndier | Scott Herndier | ✅ YES | ✅ YES |
| 4032986974 | Mitchell Silzer | Mitchell Silzer | ✅ YES | ✅ YES |
| 4032986978 | Wesley Suhai | Wesley Suhai | ✅ YES | ✅ YES |
| 4032986979 | Cameron McIvor | Cameron McIvor | ✅ YES | ✅ YES |
| 4032986981 | Suji Cho | Suji Cho | ✅ YES | ✅ YES |
| 4032986985 | Lauren Hasselback | Lauren Hasselback | ✅ YES | ✅ YES |
| 4032986989 | Andrew Thom | Andrew Thom | ✅ YES | ✅ YES |
| 4032986990 | Brandon Steinke | Brandon Steinke | ✅ YES | ✅ YES |
| 4032986993 | Yannis Kanga | Yannis Kanga | ✅ YES | ✅ YES |
| 4032986995 | Pin-En Richard Ho | Pin-En Richard Ho | ✅ YES | ✅ YES |
| 4032986996 | Jennifer Yum | Jennifer Yum | ✅ YES | ✅ YES |
| 4032987004 | Syed Wajath Ali | Syed Wajath Ali | ✅ YES | ✅ YES |
| 4032987006 | Scott Hipfner | Scott Hipfner | ✅ YES | ✅ YES |
| 4032987010 | Warren Maaskant | Warren Maaskant | ✅ YES | ✅ YES |
| 4032987014 | Warren Kozak | Warren Kozak | ✅ YES | ✅ YES |
| 4032987015 | Gareth Igloliorte | Gareth Igloliorte | ✅ YES | ✅ YES |
| 4032987017 | Neb Korac | Neb Korac | ✅ YES | ✅ YES |
| 4032987020 | Douglas Taylor | Douglas Taylor | ✅ YES | ✅ YES |
| 4032987021 | Brian Arbo | Brian Arbo | ✅ YES | ✅ YES |
| 4032987022 | Ethan Lee | Ethan Lee | ✅ YES | ✅ YES |
| 4032987026 | Joey Miazga | Joey Miazga | ✅ YES | ✅ YES |
| 4032987028 | Louis Ouellette | Louis Ouellette | ✅ YES | ✅ YES |
| 4032987029 | Sheldon Schliemann | Sheldon Schliemann | ✅ YES | ✅ YES |
| 4032987030 | Dean Godfrey | Dean Godfrey | ✅ YES | ✅ YES |
| 4032987032 | Cynthia Kwong | Cynthia Kwong | ✅ YES | ✅ YES |
| 4032987037 | Qusai Al Omari | Qusai Al Omari | ✅ YES | ✅ YES |
| 4032987043 | Lily Duffett | Lily Duffett | ✅ YES | ✅ YES |
| 4032987044 | Robert Lyon | Robert Lyon | ✅ YES | ✅ YES |
| 4032987048 | Ritu Agarwal | Ritu Agarwal | ✅ YES | ✅ YES |
| 4032987052 | Michael Armeneau | Michael Armeneau | ✅ YES | ✅ YES |
| 4032987056 | Kyle Tenney | Kyle Tenney | ✅ YES | ✅ YES |
| 4032987060 | Valerie Vanhooren | Valerie Vanhooren | ✅ YES | ✅ YES |
| 4032987063 | Sheila Taylor | Sheila Taylor | ✅ YES | ✅ YES |
| 4032987065 | Stephanie Carolina Kruger | Stephanie Carolina Kruger | ✅ YES | ✅ YES |
| 4032987071 | Suchun Zhu | Suchun Zhu | ✅ YES | ✅ YES |
| 4032987072 | Scott Emmond | Scott Emmond | ✅ YES | ✅ YES |
| 4032987076 | David Moulton | David Moulton | ✅ YES | ✅ YES |
| 4032987077 | Derek Eiteneier | Derek Eiteneier | ✅ YES | ✅ YES |
| 4032987078 | Wai Sum Ida Hui | Wai Sum Ida Hui | ✅ YES | ✅ YES |
| 4032987080 | David Mans | David Mans | ✅ YES | ✅ YES |
| 4032987082 | Chris Jack | Chris Jack | ✅ YES | ✅ YES |
| 4032987085 | Edward Serhan | Edward Serhan | ✅ YES | ✅ YES |
| 4032987088 | Kimberley Guttormson | Kimberley Guttormson | ✅ YES | ✅ YES |
| 4032987089 | Dara Akitoye | Dara Akitoye | ✅ YES | ✅ YES |
| 4032987090 | Rebecca Lyon | Rebecca Lyon | ✅ YES | ✅ YES |
| 4032987099 | Margaret Dickson | Margaret Dickson | ✅ YES | ✅ YES |
| 4032987103 | Fred Briese | Fred Briese | ✅ YES | ✅ YES |
| 4032987112 | Bridgette Grant | Bridgette Grant | ✅ YES | ✅ YES |
| 4032987113 | Trevor Sawatzky | Trevor Sawatzky | ✅ YES | ✅ YES |
| 4032987116 | Curtis Cymbaluk | Curtis Cymbaluk | ✅ YES | ✅ YES |
| 4032987117 | S. Lyle Arsenault | S. Lyle Arsenault | ✅ YES | ✅ YES |
| 4032987118 | Matteo Barbi | Matteo Barbi | ✅ YES | ✅ YES |
| 4032987121 | Melissa Hui | Melissa Hui | ✅ YES | ✅ YES |
| 4032987124 | Howard Larson | Howard Larson | ✅ YES | ✅ YES |
| 4032987134 | Chung An Tseng | Chung An Tseng | ✅ YES | ✅ YES |
| 4032987137 | Chris Hall | Chris Hall | ✅ YES | ✅ YES |
| 4032987138 | Francis Vandongen | Francis Vandongen | ✅ YES | ✅ YES |
| 4032987139 | Saghar Mohtashami | Saghar Mohtashami | ✅ YES | ✅ YES |
| 4032987142 | Pavan R Jaiprakash | Rose Maria Jose | ❌ NO | ✅ YES |
| 4032987146 | Jiangxue Yan | Jiangxue Yan | ✅ YES | ✅ YES |
| 4032987148 | Nicolas Ho | Nicolas Ho | ✅ YES | ✅ YES |
| 4032987150 | Michael Kenny | Michael Kenny | ✅ YES | ✅ YES |
| 4032987151 | Marc Janisse | Marc Janisse | ✅ YES | ✅ YES |
| 4032987157 | Darryl Borecki | Darryl Borecki | ✅ YES | ✅ YES |
| 4032987158 | Leo Yu | Leo Yu | ✅ YES | ✅ YES |
| 4032987164 | Curtis Wang | Curtis Wang | ✅ YES | ✅ YES |
| 4032987165 | Mikhail Sigachev | Mikhail Sigachev | ✅ YES | ✅ YES |
| 4032987178 | Meenige Chandramohan Reddy | Meenige Chandramohan Reddy | ✅ YES | ✅ YES |
| 4032987184 | Alisa Quinn | Alisa Quinn | ✅ YES | ✅ YES |
| 4032987195 | Kate Anthony | Kate Anthony | ✅ YES | ✅ YES |
| 4032987202 | John Dickey | John Dickey | ✅ YES | ✅ YES |
| 4032987203 | Diliara Khairoullina | Diliara Khairoullina | ✅ YES | ✅ YES |
| 4032987205 | Daniel Scott | Daniel Scott | ✅ YES | ✅ YES |
| 4032987206 | Preetika Ausland | Preetika Ausland | ✅ YES | ✅ YES |
| 4032987209 | Michael Buturla | Michael Buturla | ✅ YES | ✅ YES |
| 4032987210 | Jennifer Tuomi | Jennifer Tuomi | ✅ YES | ✅ YES |
| 4032987217 | Prasanth Viswanathan | Prasanth Viswanathan | ✅ YES | ✅ YES |
| 4032987218 | Susanth Gullapalli | Susanth Gullapalli | ✅ YES | ✅ YES |
| 4032987220 | Agatha Bayer | Agatha Bayer | ✅ YES | ✅ YES |
| 4032987227 | Lora-Lee Neusitzer | Lora-Lee Neusitzer | ✅ YES | ✅ YES |
| 4032987232 | Amanda Szlepka | Amanda Szlepka | ✅ YES | ✅ YES |
| 4032987240 | Wendy Jackson | Wendy Jackson | ✅ YES | ✅ YES |
| 4032987244 | Alan LeMoine | Alan LeMoine | ✅ YES | ✅ YES |
| 4032987247 | Nicholas Dale | Nicholas Dale | ✅ YES | ✅ YES |
| 4032987253 | Michael Chutny | Michael Chutny | ✅ YES | ✅ YES |
| 4032987254 | Farshad Tabasinejad | Farshad Tabasinejad | ✅ YES | ✅ YES |
| 4032987259 | Bryan Rooney | Bryan Rooney | ✅ YES | ✅ YES |
| 4032987261 | Heather Kipp | Heather Kipp | ✅ YES | ✅ YES |
| 4032987282 | Russell Coffey | Russell Coffey | ✅ YES | ✅ YES |
| 4032987285 | Dimitre Kourtev | Dimitre Kourtev | ✅ YES | ✅ YES |
| 4032987288 | Peter Fenton | Peter Fenton | ✅ YES | ✅ YES |
| 4032987290 | Vinky Tse | Vinky Tse | ✅ YES | ✅ YES |
| 4032987292 | Nuha Bazarah | Nuha Bazarah | ✅ YES | ✅ YES |
| 4032987295 | Nathan Pruden | Nathan Pruden | ✅ YES | ✅ YES |
| 4032987298 | Dmitry Segida | Dmitry Segida | ✅ YES | ✅ YES |
| 4032987302 | Anna Ulman | Anna Ulman | ✅ YES | ✅ YES |
| 4032987303 | Susan Anderson | Susan Anderson | ✅ YES | ✅ YES |
| 4032987310 | Shefali Sharma | Shefali Sharma | ✅ YES | ✅ YES |
| 4032987313 | Kathryn Robinson | Kathryn Robinson | ✅ YES | ✅ YES |
| 4032987314 | Brian Gale | Brian Gale | ✅ YES | ✅ YES |
| 4032987315 | Deepti Parmar | Deepti Parmar | ✅ YES | ✅ YES |
| 4032987316 | Gudrun McLean | Gudrun McLean | ✅ YES | ✅ YES |
| 4032987322 | TJ Hammer | TJ Hammer | ✅ YES | ✅ YES |
| 4032987325 | Devin Wagner | Devin Wagner | ✅ YES | ✅ YES |
| 4032987342 | Pierre-Luc Cormier | Pierre-Luc Cormier | ✅ YES | ✅ YES |
| 4032987348 | Kathy Nguyen | Kathy Nguyen | ✅ YES | ✅ YES |
| 4032987349 | David Couchman | David Couchman | ✅ YES | ✅ YES |
| 4032987352 | Kristen Powell | Kristen Powell | ✅ YES | ✅ YES |
| 4032987354 | Sarah Valente | Sarah Valente | ✅ YES | ✅ YES |
| 4032987358 | Muhammad Abbas Ali Madni | Muhammad Abbas Ali Madni | ✅ YES | ✅ YES |
| 4032987359 | Ibrahim Kodssi | Ibrahim Kodssi | ✅ YES | ✅ YES |
| 4032987367 | Vickie Darago | Vickie Darago | ✅ YES | ✅ YES |
| 4032987382 | Justine Strawbridge | Justine Strawbridge | ✅ YES | ✅ YES |
| 4032987384 | Lakhbir Singh | Lakhbir Singh | ✅ YES | ✅ YES |
| 4032987390 | Yuge Jiang | Yuge Jiang | ✅ YES | ✅ YES |
| 4032987399 | Doug Long | Doug Long | ✅ YES | ✅ YES |
| 4032987400 | Edis Karamehic | Edis Karamehic | ✅ YES | ✅ YES |
| 4032987402 | Michael Mellies | Michael Mellies | ✅ YES | ✅ YES |
| 4032987409 | Allison Negrin | Allison Negrin | ✅ YES | ✅ YES |
| 4032987411 | Thomas Janzen | Thomas Janzen | ✅ YES | ✅ YES |
| 4032987413 | Mathew DiNapoli | Mathew DiNapoli | ✅ YES | ✅ YES |
| 4032987416 | Kambie Milnthorp | Kambie Milnthorp | ✅ YES | ✅ YES |
| 4032987421 | Richard Kisinger | Richard Kisinger | ✅ YES | ✅ YES |
| 4032987423 | Cecile Mey | Cecile Mey | ✅ YES | ✅ YES |
| 4032987424 | Chantel Berkley | Chantel Berkley | ✅ YES | ✅ YES |
| 4032987428 | Shoulian Cao | Shoulian Cao | ✅ YES | ✅ YES |
| 4032987429 | Andrew Taylor | Andrew Taylor | ✅ YES | ✅ YES |
| 4032987434 | John Downey | John Downey | ✅ YES | ✅ YES |
| 4032987436 | Allister Cooper | Allister Cooper | ✅ YES | ✅ YES |
| 4032987437 | Renee Larouche-Simmons | Renee Larouche-Simmons | ✅ YES | ✅ YES |
| 4032987440 | Maria Schroeder | Maria Schroeder | ✅ YES | ✅ YES |
| 4032987441 | Jingzhou Liu | Jingzhou Liu | ✅ YES | ✅ YES |
| 4032987445 | Jin Zhou | Jin Zhou | ✅ YES | ✅ YES |
| 4032987446 | Riteshkumar Raysingbhai Bhoi | Riteshkumar Raysingbhai Bhoi | ✅ YES | ✅ YES |
| 4032987448 | Mason Coombs | Mason Coombs | ✅ YES | ✅ YES |
| 4032987449 | Nicholas Smith | Nicholas Smith | ✅ YES | ✅ YES |
| 4032987450 | Jeffrey Townsend | Jeffrey Townsend | ✅ YES | ✅ YES |
| 4032987451 | Mahesh Madhav Thite | Mahesh Madhav Thite | ✅ YES | ✅ YES |
| 4032987455 | Trevor Beauchesne | Trevor Beauchesne | ✅ YES | ✅ YES |
| 4032987457 | Clara Brownlee | Clara Brownlee | ✅ YES | ✅ YES |
| 4032987459 | Skyler Lewis | Skyler Lewis | ✅ YES | ✅ YES |
| 4032987460 | Bryan Findlay | Bryan Findlay | ✅ YES | ✅ YES |
| 4032987461 | Karen Millar | Karen Millar | ✅ YES | ✅ YES |
| 4032987465 | Henry Montpetit | Henry Montpetit | ✅ YES | ✅ YES |
| 4032987470 | Jonathan Chan | Jonathan Chan | ✅ YES | ✅ YES |
| 4032987472 | Gregory Martin | Gregory Martin | ✅ YES | ✅ YES |
| 4032987478 | Lynne Ferguson | Lynne Ferguson | ✅ YES | ✅ YES |
| 4032987482 | Jaime Albrecht | Jaime Albrecht | ✅ YES | ✅ YES |
| 4032987483 | Brian Ngo | Brian Ngo | ✅ YES | ✅ YES |
| 4032987484 | Lana Aumuller | Lana Aumuller | ✅ YES | ✅ YES |
| 4032987486 | Tracy Becker | Tracy Becker | ✅ YES | ✅ YES |
| 4032987492 | Mark Nelson | Mark Nelson | ✅ YES | ✅ YES |
| 4032987493 | Derrick Wong | Derrick Wong | ✅ YES | ✅ YES |
| 4032987494 | Aarondeep Maan | Aarondeep Maan | ✅ YES | ✅ YES |
| 4032987497 | Adam Wojciechowski | Adam Wojciechowski | ✅ YES | ✅ YES |
| 4035137506 | Ariel Smith | Ariel Smith | ✅ YES | ✅ YES |
| 4035137511 | Trevor Knez | Trevor Knez | ✅ YES | ✅ YES |
| 4035137514 | Lorna Kehler | Lorna Kehler | ✅ YES | ✅ YES |
| 4035137517 | Adam McIntyre | Adam McIntyre | ✅ YES | ✅ YES |
| 4035137518 | Kun Cao | Kun Cao | ✅ YES | ✅ YES |
| 4035137520 | Luz Aquino | Luz Aquino | ✅ YES | ✅ YES |
| 4035137525 | Kevin Aardse | Kevin Aardse | ✅ YES | ✅ YES |
| 4035137526 | Stephanie Lindsay | Stephanie Lindsay | ✅ YES | ✅ YES |
| 4035137538 | Brendan Kirkpatrick | Brendan Kirkpatrick | ✅ YES | ✅ YES |
| 4035137539 | Nathaniel Deutsch | Nathaniel Deutsch | ✅ YES | ✅ YES |
| 4035137543 | Carmen Serban | Carmen Serban | ✅ YES | ✅ YES |
| 4035137544 | Rebecca Martin | Rebecca Martin | ✅ YES | ✅ YES |
| 4035137545 | Gregory Wilcox | Gregory Wilcox | ✅ YES | ✅ YES |
| 4035137546 | Christine Seto | Christine Seto | ✅ YES | ✅ YES |
| 4035137548 | Michelle Higby | Michelle Higby | ✅ YES | ✅ YES |
| 4035137559 | Jan Langille | Jan Langille | ✅ YES | ✅ YES |
| 4035137562 | Ryan Dousselaere | Ryan Dousselaere | ✅ YES | ✅ YES |
| 4035137563 | Miriam Canderova | Miriam Canderova | ✅ YES | ✅ YES |
| 4035137568 | Bettina Diaz | Bettina Diaz | ✅ YES | ✅ YES |
| 4035137569 | Kyla Johnston | Kyla Johnston | ✅ YES | ✅ YES |
| 4035137571 | Dustin Doyle | Dustin Doyle | ✅ YES | ✅ YES |
| 4035137579 | Xinxia Wang | Xinxia Wang | ✅ YES | ✅ YES |
| 4035137583 | Nexhmie Sulejmani | Nexhmie Sulejmani | ✅ YES | ✅ YES |
| 4035137587 | Ahmad Nawid Abdul | Ahmad Nawid Abdul | ✅ YES | ✅ YES |
| 4035137596 | Kate Hunter | Kate Hunter | ✅ YES | ✅ YES |
| 4035137597 | Riley Dow | Riley Dow | ✅ YES | ✅ YES |
| 4035137604 | Matthew McLean | Matthew McLean | ✅ YES | ✅ YES |
| 4035137612 | Sean Sands | Sean Sands | ✅ YES | ✅ YES |
| 4035137626 | Michael Akister | Michael Akister | ✅ YES | ✅ YES |
| 4035137628 | Alan Boston | Alan Boston | ✅ YES | ✅ YES |
| 4035137640 | Nicole Harms | Nicole Harms | ✅ YES | ✅ YES |
| 4035137642 | Alma Cimino | Alma Cimino | ✅ YES | ✅ YES |
| 4035137643 | Mohammad Qurbany | Mohammad Qurbany | ✅ YES | ✅ YES |
| 4035137646 | Colin Giles | Colin Giles | ✅ YES | ✅ YES |
| 4035137662 | Galina Kalcheva | Galina Kalcheva | ✅ YES | ✅ YES |
| 4035137663 | Albert To | Albert To | ✅ YES | ✅ YES |
| 4035137669 | Stanley Vu | Stanley Vu | ✅ YES | ✅ YES |
| 4035137677 | Shengdong Wang | Shengdong Wang | ✅ YES | ✅ YES |
| 4035137685 | Samira O'Neal | Samira O'Neal | ✅ YES | ✅ YES |
| 4035137686 | Raheem Rajan | Raheem Rajan | ✅ YES | ✅ YES |
| 4035137688 | Carol Bauwens | Carol Bauwens | ✅ YES | ✅ YES |
| 4035137690 | Tina Noble | Alexander Dolynny | ❌ NO | ✅ YES |
| 4035137696 | Kolawole Rasheed | Kolawole Rasheed | ✅ YES | ✅ YES |
| 4035137697 | Patrick Wong | Patrick Wong | ✅ YES | ✅ YES |
| 4035137708 | Kevin Michael Fielden | Kevin Michael Fielden | ✅ YES | ✅ YES |
| 4035137717 | Shavas Rahman | Shavas Rahman | ✅ YES | ✅ YES |
| 4035137730 | Aaron Spetz | Aaron Spetz | ✅ YES | ✅ YES |
| 4035137735 | Cristina Tanga | Cristina Tanga | ✅ YES | ✅ YES |
| 4035137736 | Heather Archibald | Heather Archibald | ✅ YES | ✅ YES |
| 4035137738 | Christopher May | Christopher May | ✅ YES | ✅ YES |
| 4035137739 | Aaron Rognvaldson | Aaron Rognvaldson | ✅ YES | ✅ YES |
| 4035137741 | Ludan Zhu | Ludan Zhu | ✅ YES | ✅ YES |
| 4035137745 | Zhenxian Liu | Zhenxian Liu | ✅ YES | ✅ YES |
| 4035137749 | Gareth Edwards | Gareth Edwards | ✅ YES | ✅ YES |
| 4035137751 | Marcia Mills | Marcia Mills | ✅ YES | ✅ YES |
| 4035137752 | Ayobarede Okesanya | Ayobarede Okesanya | ✅ YES | ✅ YES |
| 4035137763 | Sunil Kumars | Sunil Kumars | ✅ YES | ✅ YES |
| 4035137771 | Prashant Pandey | Prashant Pandey | ✅ YES | ✅ YES |
| 4035137786 | Priscila Gonzalez | Priscila Gonzalez | ✅ YES | ✅ YES |
| 4035137791 | Stephen Pun | Stephen Pun | ✅ YES | ✅ YES |
| 4035137801 | Megan McDonald | Megan McDonald | ✅ YES | ✅ YES |
| 4035137808 | Lalena Laframboise | Lalena Laframboise | ✅ YES | ✅ YES |
| 4035137818 | Nalin Kasturi | Nalin Kasturi | ✅ YES | ✅ YES |
| 4035137823 | Tao Jiang | Tao Jiang | ✅ YES | ✅ YES |
| 4035137829 | Jason Lentz | Jason Lentz | ✅ YES | ✅ YES |
| 4035137839 | Adam Delday | Adam Delday | ✅ YES | ✅ YES |
| 4035137840 | Nathan Dahlby | Nathan Dahlby | ✅ YES | ✅ YES |
| 4035137847 | Ajay Kumar Poojary | Ajay Kumar Poojary | ✅ YES | ✅ YES |
| 4035137850 | Matthew Rasula | Matthew Rasula | ✅ YES | ✅ YES |
| 4035137858 | Anakarina Berezowski | Anakarina Berezowski | ✅ YES | ✅ YES |
| 4035137859 | Nadia McDougall | Nadia McDougall | ✅ YES | ✅ YES |
| 4035137876 | Jason Emond | Jason Emond | ✅ YES | ✅ YES |
| 4035137880 | Andrew Dhami | Andrew Dhami | ✅ YES | ✅ YES |
| 4035137882 | Deanna Chow | Deanna Chow | ✅ YES | ✅ YES |
| 4035137893 | Tarulkumar Parekh | Tarulkumar Parekh | ✅ YES | ✅ YES |
| 4035137894 | Ahmad Mirzaei | Ahmad Mirzaei | ✅ YES | ✅ YES |
| 4035137902 | Jamie Dalla Costa | Jamie Dalla Costa | ✅ YES | ✅ YES |
| 4035137927 | Michael Quail | Michael Quail | ✅ YES | ✅ YES |
| 4035137934 | Sabrina Sison | Sabrina Sison | ✅ YES | ✅ YES |
| 4035137935 | Jianhua Xu | Jianhua Xu | ✅ YES | ✅ YES |
| 4035137942 | Loribelle Abunda | Loribelle Abunda | ✅ YES | ✅ YES |
| 4035137946 | Crystal McCormack | Crystal McCormack | ✅ YES | ✅ YES |
| 4035137949 | Ozioma Ofoegbu | Ozioma Ofoegbu | ✅ YES | ✅ YES |
| 4035137960 | Winnie Wong | Winnie Wong | ✅ YES | ✅ YES |
| 4035137964 | Juliana LeClair | Juliana LeClair | ✅ YES | ✅ YES |
| 4035137967 | Lindsay McTavish | Lindsay McTavish | ✅ YES | ✅ YES |
| 4035137974 | David Sheptycki | David Sheptycki | ✅ YES | ✅ YES |
| 4035137977 | Randall Okuma | Randall Okuma | ✅ YES | ✅ YES |
| 4035232212 | Zarmena Cook | Zarmena Cook | ✅ YES | ✅ YES |
| 4035232216 | Paul Boni | Paul Boni | ✅ YES | ✅ YES |
| 4035232222 | Antonia Kourteva | Antonia Kourteva | ✅ YES | ✅ YES |
| 4035232229 | Anthony Ovientaba | Anthony Ovientaba | ✅ YES | ✅ YES |
| 4035232231 | Kathleen Montgomery | Kathleen Montgomery | ✅ YES | ✅ YES |
| 4035232232 | Kelsey Wharton | Kelsey Wharton | ✅ YES | ✅ YES |
| 4035232233 | Lane Boswell | Lane Boswell | ✅ YES | ✅ YES |
| 4035232247 | Severin Werner | Severin Werner | ✅ YES | ✅ YES |
| 4035232248 | Carli Sanderson | Carli Sanderson | ✅ YES | ✅ YES |
| 4035232249 | Barret Munton | Barret Munton | ✅ YES | ✅ YES |
| 4035232262 | Andrea Serebryansky | Andrea Serebryansky | ✅ YES | ✅ YES |
| 4035232266 | Reymond Mercado | Reymond Mercado | ✅ YES | ✅ YES |
| 4035232273 | Mark Wilson | Mark Wilson | ✅ YES | ✅ YES |
| 4035232280 | Suzanne Guthrie-Romero | Suzanne Guthrie-Romero | ✅ YES | ✅ YES |
| 4035232283 | Cailin Drain | Cailin Drain | ✅ YES | ✅ YES |
| 4035232291 | Vani Neelagund | Vani Neelagund | ✅ YES | ✅ YES |
| 4035232315 | Janet Thompson | Janet Thompson | ✅ YES | ✅ YES |
| 4035232337 | Bruce McInall | Bruce McInall | ✅ YES | ✅ YES |
| 4035232370 | Yana Kostonyan | Yana Kostonyan | ✅ YES | ✅ YES |
| 4035232375 | Sai Durga Reddy | Sai Durga Reddy | ✅ YES | ✅ YES |
| 4035232415 | Mario Leone | Mario Leone | ✅ YES | ✅ YES |
| 4035232422 | Susan Austin | Susan Austin | ✅ YES | ✅ YES |
| 4035232426 | Daniel Pols | Daniel Pols | ✅ YES | ✅ YES |
| 4035232434 | Courtney Makkinga | Courtney Makkinga | ✅ YES | ✅ YES |
| 4035232441 | Leah Makin | Leah Makin | ✅ YES | ✅ YES |
| 4035232449 | Christopher Watson | Christopher Watson | ✅ YES | ✅ YES |
| 4035232453 | Jeremy Wolfe | Jeremy Wolfe | ✅ YES | ✅ YES |
| 4035232456 | Jason Middleton | Jason Middleton | ✅ YES | ✅ YES |
| 4035232487 | Miguel Escobar | Miguel Escobar | ✅ YES | ✅ YES |
| 4035232494 | Bhavesh Amin | Bhavesh Amin | ✅ YES | ✅ YES |
| 4035702870 | Dwayne Price | Dwayne Price | ✅ YES | ✅ YES |
| 4037501301 | Janet Rudnicki | Janet Rudnicki | ✅ YES | ✅ YES |
| 4037501302 | Jason McCallum | Jason McCallum | ✅ YES | ✅ YES |
| 4037501305 | Kun Shan | Kun Shan | ✅ YES | ✅ YES |
| 4037501306 | Polyanna David | Polyanna David | ✅ YES | ✅ YES |
| 4037501307 | Pierre Auger | Pierre Auger | ✅ YES | ✅ YES |
| 4037501308 | Torey McLeish | Torey McLeish | ✅ YES | ✅ YES |
| 4037501310 | Bree Phillips | Bree Phillips | ✅ YES | ✅ YES |
| 4037501311 | Eshant Kalra | Eshant Kalra | ✅ YES | ✅ YES |
| 4037501313 | Sudhir Giri | Sudhir Giri | ✅ YES | ✅ YES |
| 4037501316 | Manfred Eggebrecht | Manfred Eggebrecht | ✅ YES | ✅ YES |
| 4037501320 | Elizabeth Hamilton | Elizabeth Hamilton | ✅ YES | ✅ YES |
| 4037501324 | Barbara Sinclair | Barbara Sinclair | ✅ YES | ✅ YES |
| 4037501339 | Pastora Ramirez | Pastora Ramirez | ✅ YES | ✅ YES |
| 4037501342 | Boun Manivong | Boun Manivong | ✅ YES | ✅ YES |
| 4037501343 | Carolyn Gaydosh | Carolyn Gaydosh | ✅ YES | ✅ YES |
| 4037501345 | Caitlin Myers | Caitlin Myers | ✅ YES | ✅ YES |
| 4037501352 | Trevor Sutton | Trevor Sutton | ✅ YES | ✅ YES |
| 4037501354 | Indrani Chundur | Indrani Chundur | ✅ YES | ✅ YES |
| 4037501355 | Stephen Ingram | Stephen Ingram | ✅ YES | ✅ YES |
| 4037501356 | Kevin To | Kevin To | ✅ YES | ✅ YES |
| 4037501357 | Sandeep Shukla | Sandeep Shukla | ✅ YES | ✅ YES |
| 4037501359 | Michelle Zacher | Michelle Zacher | ✅ YES | ✅ YES |
| 4037501361 | Adriana Figueredo | Adriana Figueredo | ✅ YES | ✅ YES |
| 4037501362 | Erwin Bauman | Erwin Bauman | ✅ YES | ✅ YES |
| 4037501364 | Sam Sanati | Sam Sanati | ✅ YES | ✅ YES |
| 4037501367 | Kathy Nguyen | Kathy Nguyen | ✅ YES | ✅ YES |
| 4037501369 | Ashley Arena | Ashley Arena | ✅ YES | ✅ YES |
| 4037501371 | Lise Lennon | Lise Lennon | ✅ YES | ✅ YES |
| 4037501373 | Krista-Lee Terry | Krista-Lee Terry | ✅ YES | ✅ YES |
| 4037501376 | Joshuah Dube | Joshuah Dube | ✅ YES | ✅ YES |
| 4037501377 | William Hernandez | William Hernandez | ✅ YES | ✅ YES |
| 4037501382 | Layne Pynten | Layne Pynten | ✅ YES | ✅ YES |
| 4037501391 | Sijia Zheng | Sijia Zheng | ✅ YES | ✅ YES |
| 4037501394 | Shayla Bennato | Shayla Bennato | ✅ YES | ✅ YES |
| 4037501397 | John Soini | John Soini | ✅ YES | ✅ YES |
| 4037501398 | Mark Breker | Mark Breker | ✅ YES | ✅ YES |
| 4037501405 | Steven Tulissi | Steven Tulissi | ✅ YES | ✅ YES |
| 4037501410 | Sandeep Randhawa | Sandeep Randhawa | ✅ YES | ✅ YES |
| 4037501412 | Patricia Yu | Patricia Yu | ✅ YES | ✅ YES |
| 4037501413 | Catriona Chorney | Catriona Chorney | ✅ YES | ✅ YES |
| 4037501414 | Derek Pretula | Derek Pretula | ✅ YES | ✅ YES |
| 4037501426 | Yi Zhao | Yi Zhao | ✅ YES | ✅ YES |
| 4037501428 | John McCormick | John McCormick | ✅ YES | ✅ YES |
| 4037501429 | Surani Ellepola | Surani Ellepola | ✅ YES | ✅ YES |
| 4037501436 | Michael Lackey | Michael Lackey | ✅ YES | ✅ YES |
| 4037501437 | Wendy Detrey | Wendy Detrey | ✅ YES | ✅ YES |
| 4037501442 | Shawn Forster | Shawn Forster | ✅ YES | ✅ YES |
| 4037501445 | Kyle Frey | Kyle Frey | ✅ YES | ✅ YES |
| 4037501454 | Victoria Ngo | Victoria Ngo | ✅ YES | ✅ YES |
| 4037501464 | Rory Livingston | Rory Livingston | ✅ YES | ✅ YES |
| 4037501469 | Xiaokang Kent Qin | Xiaokang Kent Qin | ✅ YES | ✅ YES |
| 4037501470 | Chian Teo | Chian Teo | ✅ YES | ✅ YES |
| 4037501477 | Jessica Bailey | Jessica Bailey | ✅ YES | ✅ YES |
| 4037501478 | Lucy Lu | Lucy Lu | ✅ YES | ✅ YES |
| 4037501482 | Naveen Tondeti | Naveen Tondeti | ✅ YES | ✅ YES |
| 4037501492 | Colleen Robertson | Colleen Robertson | ✅ YES | ✅ YES |
| 4037501494 | Khtan Hussain | Khtan Hussain | ✅ YES | ✅ YES |
| 4037501495 | Winner Viagularaj | Winner Viagularaj | ✅ YES | ✅ YES |
| 4037501496 | Anuradha Hindurao Erudhkar | Anuradha Hindurao Erudhkar | ✅ YES | ✅ YES |
| 4037501500 | Judith Kilborn | Judith Kilborn | ✅ YES | ✅ YES |
| 4037501503 | Travis Davies | Travis Davies | ✅ YES | ✅ YES |
| 4037501509 | Maryum Javaid | Maryum Javaid | ✅ YES | ✅ YES |
| 4037501513 | Jia Li | Jia Li | ✅ YES | ✅ YES |
| 4037501538 | Yun Mi Lee | Yun Mi Lee | ✅ YES | ✅ YES |
| 4037501557 | Lei Jia | Lei Jia | ✅ YES | ✅ YES |
| 4037501559 | Ndombele Henrique Jose | Ndombele Henrique Jose | ✅ YES | ✅ YES |
| 4037501568 | Unna Kathiresan | Unna Kathiresan | ✅ YES | ✅ YES |
| 4037501570 | Frank Kemeri | Frank Kemeri | ✅ YES | ✅ YES |
| 4037501571 | Halyna Artus | Halyna Artus | ✅ YES | ✅ YES |
| 4037501578 | Ishtiaq Ahmed | Ishtiaq Ahmed | ✅ YES | ✅ YES |
| 4037501580 | Kendra Zilla | Kendra Zilla | ✅ YES | ✅ YES |
| 4037501593 | Tracy Millar | Tracy Millar | ✅ YES | ✅ YES |
| 4037501600 | Todd Rensing | Todd Rensing | ✅ YES | ✅ YES |
| 4037501601 | Teresa Funk | Teresa Funk | ✅ YES | ✅ YES |
| 4037501608 | Jennifer Ruthven | Jennifer Ruthven | ✅ YES | ✅ YES |
| 4037501615 | Elizabeth Tuggle | Elizabeth Tuggle | ✅ YES | ✅ YES |
| 4037501616 | Doris Ventosilla | Doris Ventosilla | ✅ YES | ✅ YES |
| 4037501618 | Sandip Sagare | Sandip Sagare | ✅ YES | ✅ YES |
| 4037501623 | Jane Quon | Jane Quon | ✅ YES | ✅ YES |
| 4037501626 | James Jelinski | James Jelinski | ✅ YES | ✅ YES |
| 4037501632 | Jibran Abrar | Jibran Abrar | ✅ YES | ✅ YES |
| 4037501633 | Poonam Bhatnagar | Poonam Bhatnagar | ✅ YES | ✅ YES |
| 4037501635 | Laura Popa | Laura Popa | ✅ YES | ✅ YES |
| 4037501643 | Corina Baciu | Corina Baciu | ✅ YES | ✅ YES |
| 4037501646 | Merilla Riehl | Merilla Riehl | ✅ YES | ✅ YES |
| 4037501653 | Tanya Nader | Tanya Nader | ✅ YES | ✅ YES |
| 4037501663 | Marilou Moton | Marilou Moton | ✅ YES | ✅ YES |
| 4037501667 | Joanne Grace | Joanne Grace | ✅ YES | ✅ YES |
| 4037501668 | Nicholas Corcoran | Nicholas Corcoran | ✅ YES | ✅ YES |
| 4037501671 | Jin Zeng | Jin Zeng | ✅ YES | ✅ YES |
| 4037501672 | Mun Tatt Yap | Mun Tatt Yap | ✅ YES | ✅ YES |
| 4037501676 | Restuti Sasmita | Restuti Sasmita | ✅ YES | ✅ YES |
| 4037501683 | Christina Cox | Christina Cox | ✅ YES | ✅ YES |
| 4037501684 | Chad Frizzle | Chad Frizzle | ✅ YES | ✅ YES |
| 4037501686 | Lijie Zhu | Lijie Zhu | ✅ YES | ✅ YES |
| 4037501688 | Ian Torry | Gabriel Marra | ❌ NO | ✅ YES |
| 4037501712 | Ajay Mishra | Ajay Mishra | ✅ YES | ✅ YES |
| 4037501716 | Evanna Shirwan | Evanna Shirwan | ✅ YES | ✅ YES |
| 4037501717 | Sean Hammell | Sean Hammell | ✅ YES | ✅ YES |
| 4037501719 | Adrian Dowsett | Adrian Dowsett | ✅ YES | ✅ YES |
| 4037501728 | Andrea Urciuoli | Andrea Urciuoli | ✅ YES | ✅ YES |
| 4037501733 | Dana Hanson | Dana Hanson | ✅ YES | ✅ YES |
| 4037501740 | Julius Strachan | Julius Strachan | ✅ YES | ✅ YES |
| 4037501745 | Robin Kudding | Robin Kudding | ✅ YES | ✅ YES |
| 4037501746 | Dwayne Gomboc | Dwayne Gomboc | ✅ YES | ✅ YES |
| 4037501747 | Dayle MacDougall | Dayle MacDougall | ✅ YES | ✅ YES |
| 4037501754 | Kristine Yalbir | Kristine Yalbir | ✅ YES | ✅ YES |
| 4037501757 | Austin Bauer | Austin Bauer | ✅ YES | ✅ YES |
| 4037501758 | Alex Nakagawa | Alex Nakagawa | ✅ YES | ✅ YES |
| 4037501762 | Leah Cherneski | Leah Cherneski | ✅ YES | ✅ YES |
| 4037501763 | Jayden Hagemann | Jayden Hagemann | ✅ YES | ✅ YES |
| 4037501764 | Rachelle Bremault | Rachelle Bremault | ✅ YES | ✅ YES |
| 4037501772 | Emily Leong | Emily Leong | ✅ YES | ✅ YES |
| 4037501775 | Jugal Patra | Jugal Patra | ✅ YES | ✅ YES |
| 4037501776 | Rae Fox | Rae Fox | ✅ YES | ✅ YES |
| 4037501782 | Oliver Tang | Oliver Tang | ✅ YES | ✅ YES |
| 4037501784 | Sujata Verma | Sujata Verma | ✅ YES | ✅ YES |
| 4037501788 | Jaden Cruthers | Jaden Cruthers | ✅ YES | ✅ YES |
| 4037501789 | Cameron Hardy | Cameron Hardy | ✅ YES | ✅ YES |
| 4037501792 | Mubashshir Mirza | Mubashshir Mirza | ✅ YES | ✅ YES |
| 4037501801 | Thanh-Van Lam | Thanh-Van Lam | ✅ YES | ✅ YES |
| 4037501806 | Martin Olkowski | Martin Olkowski | ✅ YES | ✅ YES |
| 4037501808 | Shivnandan Sharma | Shivnandan Sharma | ✅ YES | ✅ YES |
| 4037501813 | Lynn Ho | Lynn Ho | ✅ YES | ✅ YES |
| 4037501814 | Jolene Fleming | Jolene Fleming | ✅ YES | ✅ YES |
| 4037501815 | James McArthur | James McArthur | ✅ YES | ✅ YES |
| 4037501818 | Desiree Breault | Desiree Breault | ✅ YES | ✅ YES |
| 4037501819 | Minkyu Ko | Minkyu Ko | ✅ YES | ✅ YES |
| 4037501823 | Mayra Meza Gonzales | Mayra Meza Gonzales | ✅ YES | ✅ YES |
| 4037501824 | Malcolm Brown | Malcolm Brown | ✅ YES | ✅ YES |
| 4037501826 | Pavan K Bathala | Pavan K Bathala | ✅ YES | ✅ YES |
| 4037501831 | David Bramwell | David Bramwell | ✅ YES | ✅ YES |
| 4037501833 | Sean Prior | Sean Prior | ✅ YES | ✅ YES |
| 4037501834 | Brendan Rothwell | Brendan Rothwell | ✅ YES | ✅ YES |
| 4037501836 | Jennifer Neault | Jennifer Neault | ✅ YES | ✅ YES |
| 4037501837 | Bret Shannon | Bret Shannon | ✅ YES | ✅ YES |
| 4037501840 | Autumn Abrey-Johnston | Autumn Abrey-Johnston | ✅ YES | ✅ YES |
| 4037501841 | Mandy Cheng | Mandy Cheng | ✅ YES | ✅ YES |
| 4037501844 | Bazlur Rahman | Bazlur Rahman | ✅ YES | ✅ YES |
| 4037501851 | Blaine Jeffery | Blaine Jeffery | ✅ YES | ✅ YES |
| 4037501856 | Gayle Fontaine | Gayle Fontaine | ✅ YES | ✅ YES |
| 4037501860 | WeiJun Guo | WeiJun Guo | ✅ YES | ✅ YES |
| 4037501861 | Abdulhamid Abdi | Abdulhamid Abdi | ✅ YES | ✅ YES |
| 4037501873 | Pradhyumna Bondu | Pradhyumna Bondu | ✅ YES | ✅ YES |
| 4037501874 | Benson Ogbonnaya | Benson Ogbonnaya | ✅ YES | ✅ YES |
| 4037501875 | Elisabeth Calderwood | Elisabeth Calderwood | ✅ YES | ✅ YES |
| 4037501877 | Nathan Lecerf | Nathan Lecerf | ✅ YES | ✅ YES |
| 4037501880 | Christopher Horton | Christopher Horton | ✅ YES | ✅ YES |
| 4037501881 | Tina Mikrot | Tina Mikrot | ✅ YES | ✅ YES |
| 4037501882 | Jenna Pickering | Jenna Pickering | ✅ YES | ✅ YES |
| 4037501884 | Susan Blakely | Susan Blakely | ✅ YES | ✅ YES |
| 4037501888 | AbdiRahman Keinan | AbdiRahman Keinan | ✅ YES | ✅ YES |
| 4037501890 | Robin Labensky | Robin Labensky | ✅ YES | ✅ YES |
| 4037501902 | Hamir Riaz | Hamir Riaz | ✅ YES | ✅ YES |
| 4037501910 | Amanda Addo | Amanda Addo | ✅ YES | ✅ YES |
| 4037501919 | Cheryl Toal | Cheryl Toal | ✅ YES | ✅ YES |
| 4037501925 | Rachel Aldridge | Rachel Aldridge | ✅ YES | ✅ YES |
| 4037501926 | Megan Banning | Megan Banning | ✅ YES | ✅ YES |
| 4037501927 | Patrick Read | Patrick Read | ✅ YES | ✅ YES |
| 4037501931 | Eloisa Kloster | Eloisa Kloster | ✅ YES | ✅ YES |
| 4037501935 | Kapil Jain | Kapil Jain | ✅ YES | ✅ YES |
| 4037501939 | Sai Kiran Patil | Sai Kiran Patil | ✅ YES | ✅ YES |
| 4037501940 | Justin Fischer | Justin Fischer | ✅ YES | ✅ YES |
| 4037501952 | Sheena Mills | Sheena Mills | ✅ YES | ✅ YES |
| 4037501957 | Jason Hinchliff | Jason Hinchliff | ✅ YES | ✅ YES |
| 4037501958 | Dylan Sawatzky | Dylan Sawatzky | ✅ YES | ✅ YES |
| 4037501965 | Roxi Smysniuk | Roxi Smysniuk | ✅ YES | ✅ YES |
| 4037501966 | Eric Tran | Eric Tran | ✅ YES | ✅ YES |
| 4037501968 | Abhinav Mittal | Abhinav Mittal | ✅ YES | ✅ YES |
| 4037501985 | Xin Zhang | Xin Zhang | ✅ YES | ✅ YES |
| 4037501986 | Shawn Buksa | Shawn Buksa | ✅ YES | ✅ YES |
| 4037501987 | Chris Arsenault | Chris Arsenault | ✅ YES | ✅ YES |
| 4037501988 | Joshua West | Joshua West | ✅ YES | ✅ YES |
| 4037501993 | Robert Brandt | Robert Brandt | ✅ YES | ✅ YES |
| 4037501998 | Monica Majcher | Monica Majcher | ✅ YES | ✅ YES |
| 4037503557 | Randy Lee | Randy Lee | ✅ YES | ✅ YES |
| 4037503565 | Ryan Curry | Ryan Curry | ✅ YES | ✅ YES |
| 4037504933 | Lindsay Mitchell | Lindsay Mitchell | ✅ YES | ✅ YES |
| 4037504938 | Benjamin Feist | Benjamin Feist | ✅ YES | ✅ YES |
| 4037504939 | Kishan Wickremeratna | Kishan Wickremeratna | ✅ YES | ✅ YES |
| 4037504940 | Cory Blair | Cory Blair | ✅ YES | ✅ YES |
| 4037504943 | Rohit Kumar Pahwa | Rohit Kumar Pahwa | ✅ YES | ✅ YES |
| 4037504945 | Judy Robinson | Judy Robinson | ✅ YES | ✅ YES |
| 4037504946 | Yongtao Jiang | Yongtao Jiang | ✅ YES | ✅ YES |
| 4037504947 | John Rhodes | John Rhodes | ✅ YES | ✅ YES |
| 4037504948 | Cody Rothenburger | Cody Rothenburger | ✅ YES | ✅ YES |
| 4037504955 | Heather Ungless | Heather Ungless | ✅ YES | ✅ YES |
| 4037504976 | Estella Li | Estella Li | ✅ YES | ✅ YES |
| 4037504978 | Randal Petrie | Randal Petrie | ✅ YES | ✅ YES |
| 4037504982 | Qaiser Mohammad | Qaiser Mohammad | ✅ YES | ✅ YES |
| 4037504984 | Abdullah Yousaf | Abdullah Yousaf | ✅ YES | ✅ YES |
| 4037504992 | Wesley Klassen | Wesley Klassen | ✅ YES | ✅ YES |
| 4037505001 | Michael Stewart | Michael Stewart | ✅ YES | ✅ YES |
| 4037505002 | Jingquan Li | Jingquan Li | ✅ YES | ✅ YES |
| 4037505006 | Navina Haque | Navina Haque | ✅ YES | ✅ YES |
| 4037505009 | Sharla Howard | Sharla Howard | ✅ YES | ✅ YES |
| 4037505010 | Erin Stephens | Erin Stephens | ✅ YES | ✅ YES |
| 4037505011 | Ryland Percival | Ryland Percival | ✅ YES | ✅ YES |
| 4037505018 | Michael Elumir | Michael Elumir | ✅ YES | ✅ YES |
| 4037505032 | Wei Long Hu | Wei Long Hu | ✅ YES | ✅ YES |
| 4037505047 | Dorithy Kemp | Dorithy Kemp | ✅ YES | ✅ YES |
| 4037505052 | Gord Howell | Gord Howell | ✅ YES | ✅ YES |
| 4037505056 | Christa Ferguson | Christa Ferguson | ✅ YES | ✅ YES |
| 4037505059 | Vanja Knezevic | Vanja Knezevic | ✅ YES | ✅ YES |
| 4037505061 | Sean Weber | Sean Weber | ✅ YES | ✅ YES |
| 4037505064 | Michael Guzik | Michael Guzik | ✅ YES | ✅ YES |
| 4037505071 | Komal Walsh | Komal Walsh | ✅ YES | ✅ YES |
| 4037505072 | Scott McGlashing | Scott McGlashing | ✅ YES | ✅ YES |
| 4037505085 | Aisling Baird | Aisling Baird | ✅ YES | ✅ YES |
| 4037505086 | Amy Lee | Amy Lee | ✅ YES | ✅ YES |
| 4037505098 | Lolita Gin-Klimack | Lolita Gin-Klimack | ✅ YES | ✅ YES |
| 4037675206 | Thai Vu | Thai Vu | ✅ YES | ✅ YES |
| 4037675214 | Rupesh Patel | Rupesh Patel | ✅ YES | ✅ YES |
| 4037675219 | Maxim Skliarov | Maxim Skliarov | ✅ YES | ✅ YES |
| 4037675224 | Kevin Ough | Kevin Ough | ✅ YES | ✅ YES |
| 4037675228 | Nicolaas Geldenhuys | Nicolaas Geldenhuys | ✅ YES | ✅ YES |
| 4037675241 | Joseph Turner | Joseph Turner | ✅ YES | ✅ YES |
| 4037675243 | Mark Jeroncic | Mark Jeroncic | ✅ YES | ✅ YES |
| 4037675244 | Brian Baron | Brian Baron | ✅ YES | ✅ YES |
| 4037675259 | Michelle Weigel | Michelle Weigel | ✅ YES | ✅ YES |
| 4037675268 | Brandi Shuttleworth | Brandi Shuttleworth | ✅ YES | ✅ YES |
| 4037675297 | Kimberly Grette | Kimberly Grette | ✅ YES | ✅ YES |
| 4037675311 | Cindy Barnett | Cindy Barnett | ✅ YES | ✅ YES |
| 4037675312 | Shannon Albrecht | Shannon Albrecht | ✅ YES | ✅ YES |
| 4037675318 | Michael Palka | Michael Palka | ✅ YES | ✅ YES |
| 4037675325 | Gaurav Gaba | Gaurav Gaba | ✅ YES | ✅ YES |
| 4037675328 | Mariya Yemelyanova | Mariya Yemelyanova | ✅ YES | ✅ YES |
| 4037675337 | Syed Muhammad Arfeen Najeeb | Syed Muhammad Arfeen Najeeb | ✅ YES | ✅ YES |
| 4037675338 | Maged Farahat | Maged Farahat | ✅ YES | ✅ YES |
| 4037675344 | Kiel Douglas | Kiel Douglas | ✅ YES | ✅ YES |
| 4037675345 | Deanna Moody | Deanna Moody | ✅ YES | ✅ YES |
| 4037675366 | Jessica Wuttunee-Campbell | Jessica Wuttunee-Campbell | ✅ YES | ✅ YES |
| 4037675369 | Jeremy Omelchuk | Jeremy Omelchuk | ✅ YES | ✅ YES |
| 4037675370 | Karen Graham | Karen Graham | ✅ YES | ✅ YES |
| 4037675396 | Aaron Keobke | Aaron Keobke | ✅ YES | ✅ YES |
| 4037675399 | Kailee Hong | Kailee Hong | ✅ YES | ✅ YES |
| 4037675419 | Ololade Akanni | Ololade Akanni | ✅ YES | ✅ YES |
| 4037675423 | Erin Mandziak | Erin Mandziak | ✅ YES | ✅ YES |
| 4037675426 | Hon Trang | Hon Trang | ✅ YES | ✅ YES |
| 4037675429 | Michael McGuire | Michael McGuire | ✅ YES | ✅ YES |
| 4037675432 | Ayden Gelfand | Ayden Gelfand | ✅ YES | ✅ YES |
| 4037675439 | Abdullah Khalid | Abdullah Khalid | ✅ YES | ✅ YES |
| 4037675441 | Sherry Trippel | Sherry Trippel | ✅ YES | ✅ YES |
| 4037675446 | Scott Andrews | Scott Andrews | ✅ YES | ✅ YES |
| 4037675448 | Joshua Chow | Joshua Chow | ✅ YES | ✅ YES |
| 4037675480 | Franklyn Charles | Franklyn Charles | ✅ YES | ✅ YES |
| 4037675483 | Taban Sabih | Taban Sabih | ✅ YES | ✅ YES |
| 4037675487 | Daniel Bradich | Daniel Bradich | ✅ YES | ✅ YES |
| 4037675512 | Alexander Fabbi | Alexander Fabbi | ✅ YES | ✅ YES |
| 4037675516 | Chloe Laprise | Chloe Laprise | ✅ YES | ✅ YES |
| 4037675521 | Andrew Neave | Andrew Neave | ✅ YES | ✅ YES |
| 4037675523 | Matthew Gregoire | Matthew Gregoire | ✅ YES | ✅ YES |
| 4037675524 | Christina Tokarz | Christina Tokarz | ✅ YES | ✅ YES |
| 4037675530 | Guillaume Noel | Guillaume Noel | ✅ YES | ✅ YES |
| 4037675536 | Zeeshan Pasha | Zeeshan Pasha | ✅ YES | ✅ YES |
| 4037675548 | Ting Xiong | Ting Xiong | ✅ YES | ✅ YES |
| 4037675557 | Pawandeep Kaur | Pawandeep Kaur | ✅ YES | ✅ YES |
| 4037675570 | Brandon Bolkowy | Brandon Bolkowy | ✅ YES | ✅ YES |
| 4037675574 | Rajesh Polavarapu | Rajesh Polavarapu | ✅ YES | ✅ YES |
| 4037675578 | George Oprisor | George Oprisor | ✅ YES | ✅ YES |
| 4037675583 | YiJun Wang | YiJun Wang | ✅ YES | ✅ YES |
| 4037675587 | Pascal De Montigny | Pascal De Montigny | ✅ YES | ✅ YES |
| 4037675600 | Robberta Perreault | Robberta Perreault | ✅ YES | ✅ YES |
| 4037675632 | Jayne Owchar | Jayne Owchar | ✅ YES | ✅ YES |
| 4037675636 | Bryan Huff | Bryan Huff | ✅ YES | ✅ YES |
| 4037675667 | Tyler Ivie | Tyler Ivie | ✅ YES | ✅ YES |
| 4037675668 | Kanyon Gielen | Kanyon Gielen | ✅ YES | ✅ YES |
| 4037675685 | Jeremy Yun | Jeremy Yun | ✅ YES | ✅ YES |
| 4037675689 | Alycia Barabash | Alycia Barabash | ✅ YES | ✅ YES |
| 4037675693 | Michelle Ekvall | Michelle Ekvall | ✅ YES | ✅ YES |
| 4037675696 | Lindsay Jakab | Lindsay Jakab | ✅ YES | ✅ YES |
| 4039070129 | Ana Francheska Mabanta | Ana Francheska Mabanta | ✅ YES | ✅ YES |
| 4039101860 | Sean Parenteau | Sean Parenteau | ✅ YES | ✅ YES |
| 4039101866 | Patrizia Miel Magalong | Patrizia Miel Magalong | ✅ YES | ✅ YES |
| 4039101877 | Laura Dmytryk | Laura Dmytryk | ✅ YES | ✅ YES |
| 4039101883 | Jamila Mahjor | Jamila Mahjor | ✅ YES | ✅ YES |
| 4039101884 | Brendan Drew-Brook | Brendan Drew-Brook | ✅ YES | ✅ YES |
| 4039101887 | Chris Awe | Chris Awe | ✅ YES | ✅ YES |
| 4039101901 | Trevor Faunt | Trevor Faunt | ✅ YES | ✅ YES |
| 4039101902 | David Scott | David Scott | ✅ YES | ✅ YES |
| 4039101907 | Julie Eckert | Julie Eckert | ✅ YES | ✅ YES |
| 4039101914 | Aaron Au-Yeung | Aaron Au-Yeung | ✅ YES | ✅ YES |
| 4039101922 | Lana Johnson | Lana Johnson | ✅ YES | ✅ YES |
| 4039101924 | Vignesh Sundar | Vignesh Sundar | ✅ YES | ✅ YES |
| 4039102382 | Kevin Bruce | Kevin Bruce | ✅ YES | ✅ YES |
| 4039102414 | Nizamuddin Ahmady | Nizamuddin Ahmady | ✅ YES | ✅ YES |
| 4039102594 | Ranjeet Kumar | Ranjeet Kumar | ✅ YES | ✅ YES |
| 4039102914 | Richard Anderson | Richard Anderson | ✅ YES | ✅ YES |
| 4039102918 | Bilky Eapen | Bilky Eapen | ✅ YES | ✅ YES |
| 4039102928 | Niyas Muhammed | Niyas Muhammed | ✅ YES | ✅ YES |
| 4039102938 | Cindy Rowley | Cindy Rowley | ✅ YES | ✅ YES |
| 4039102944 | Houman Mobarrez | Houman Mobarrez | ✅ YES | ✅ YES |
| 4039102948 | Rahul Dullu | Rahul Dullu | ✅ YES | ✅ YES |
| 4373175400 | Amir Tufail | Amir Tufail | ✅ YES | ✅ YES |
| 4373175401 | Santhosh Gangadharan | Santhosh Gangadharan | ✅ YES | ✅ YES |
| 4373175497 | Shelby Perreault | Shelby Perreault | ✅ YES | ✅ YES |
| 5876740261 | Erika Gorgichuk | Erika Gorgichuk | ✅ YES | ✅ YES |
| 5876740262 | Andy Gouliquer | Andy Gouliquer | ✅ YES | ✅ YES |
| 5876740263 | Dustin Watson | Dustin Watson | ✅ YES | ✅ YES |
| 5876740264 | Jeffrey Cordingley | Jeffrey Cordingley | ✅ YES | ✅ YES |
| 5876740267 | Sajeev Menoth | Sajeev Menoth | ✅ YES | ✅ YES |
| 5876740282 | Anil Shinde | Anil Shinde | ✅ YES | ✅ YES |
| 5876740290 | Collin Machtans | Collin Machtans | ✅ YES | ✅ YES |
| 5876740291 | David Tchir | David Tchir | ✅ YES | ✅ YES |
| 5876740295 | Troy Kachmarchyk | Troy Kachmarchyk | ✅ YES | ✅ YES |
| 5876740297 | Heather Wurz | Heather Wurz | ✅ YES | ✅ YES |
| 5876740298 | Daniel Kuraitis | Daniel Kuraitis | ✅ YES | ✅ YES |
| 5876740299 | Brett Hagerman | Brett Hagerman | ✅ YES | ✅ YES |
| 5876740303 | Darren Schafer | Darren Schafer | ✅ YES | ✅ YES |
| 5876740312 | Jayden Syrota | Jayden Syrota | ✅ YES | ✅ YES |
| 5876740318 | Daniel Birkbeck | Daniel Birkbeck | ✅ YES | ✅ YES |
| 5876740334 | Scott Thornitt | Scott Thornitt | ✅ YES | ✅ YES |
| 5876740339 | Cory Kitt | Cory Kitt | ✅ YES | ✅ YES |
| 5876740340 | Dean Pare | Dean Pare | ✅ YES | ✅ YES |
| 5876740348 | Tyler Price | Tyler Price | ✅ YES | ✅ YES |
| 5876740351 | Doug Bird | Doug Bird | ✅ YES | ✅ YES |
| 5876740352 | Leonard Schulz | Leonard Schulz | ✅ YES | ✅ YES |
| 5876740358 | Gominda Ratnayake | Gominda Ratnayake | ✅ YES | ✅ YES |
| 5876740651 | Martin Ross | Martin Ross | ✅ YES | ✅ YES |
| 5876740653 | Rene Morales | Rene Morales | ✅ YES | ✅ YES |
| 5876740660 | Justin Hingsburger | Justin Hingsburger | ✅ YES | ✅ YES |
| 5876740662 | Dallas Piche | Dallas Piche | ✅ YES | ✅ YES |
| 5876740670 | Marc Nicholson | Marc Nicholson | ✅ YES | ✅ YES |
| 5876740671 | Shaun Hambley | Shaun Hambley | ✅ YES | ✅ YES |
| 5876740674 | Mitchell McConaghy | Mitchell McConaghy | ✅ YES | ✅ YES |
| 5876740675 | Matthew Bergquist | Matthew Bergquist | ✅ YES | ✅ YES |
| 5876740683 | Neil Power | Neil Power | ✅ YES | ✅ YES |
| 5876740693 | Bradley Kercher | Bradley Kercher | ✅ YES | ✅ YES |
| 5876740694 | Alexander Clowater | Alexander Clowater | ✅ YES | ✅ YES |
| 5876740706 | David Stoner | David Stoner | ✅ YES | ✅ YES |
| 5876740707 | Ryan Thiessen | Ryan Thiessen | ✅ YES | ✅ YES |
| 5876740708 | Kari Furey | Kari Furey | ✅ YES | ✅ YES |
| 5876740711 | Robert Smith | Robert Smith | ✅ YES | ✅ YES |
| 5876740730 | Robert Henstridge | Robert Henstridge | ✅ YES | ✅ YES |
| 5876740733 | Gregory Cottrell | Gregory Cottrell | ✅ YES | ✅ YES |
| 5876740735 | Bradley Mauch | Bradley Mauch | ✅ YES | ✅ YES |
| 5876741001 | Michael Clark | Michael Clark | ✅ YES | ✅ YES |
| 5876741022 | Jeremy Tabish | Terry Kalupar | ❌ NO | ✅ YES |
| 5876741043 | Darcy Mitchell | Darcy Mitchell | ✅ YES | ✅ YES |
| 5876741085 | Ryan Moggert | Ryan Moggert | ✅ YES | ✅ YES |
| 5876741093 | Geoff Sutherland | Geoff Sutherland | ✅ YES | ✅ YES |
| 5876741110 | Marcel Stone | Marcel Stone | ✅ YES | ✅ YES |
| 5876741119 | Eric Walther | Eric Walther | ✅ YES | ✅ YES |
| 5876741383 | Angela van de Hoef | Angela van de Hoef | ✅ YES | ✅ YES |
| 5876741421 | Danny Perkins | Danny Perkins | ✅ YES | ✅ YES |
| 5876741768 | Azeem Khan | Azeem Khan | ✅ YES | ✅ YES |
| 5876741771 | Jeffrey Chambers | Jeffrey Chambers | ✅ YES | ✅ YES |
| 5876741774 | Matthew Roth | Matthew Roth | ✅ YES | ✅ YES |
| 5876742135 | Colleen Kubis | Colleen Kubis | ✅ YES | ✅ YES |
| 5876742136 | Ramesh Gopalsamy | Ramesh Gopalsamy | ✅ YES | ✅ YES |
| 5876742141 | Dylan Davis | Dylan Davis | ✅ YES | ✅ YES |
| 5876742142 | Daniel Rix | Daniel Rix | ✅ YES | ✅ YES |
| 5876742143 | Neil LaGrange | Neil LaGrange | ✅ YES | ✅ YES |
| 5876742147 | Casey Neale | Casey Neale | ✅ YES | ✅ YES |
| 5876742148 | Moustafa Mohammadi | Moustafa Mohammadi | ✅ YES | ✅ YES |
| 5877471214 | Rebecca Jacksteit | Rebecca Jacksteit | ✅ YES | ✅ YES |
| 5877471361 | Steven Nguyen | Steven Nguyen | ✅ YES | ✅ YES |
| 5877471366 | Jessica Mayden | Jessica Mayden | ✅ YES | ✅ YES |
| 5877472041 | Chris Weekes | Chris Weekes | ✅ YES | ✅ YES |
| 5877472046 | Heather Ahearn | Heather Ahearn | ✅ YES | ✅ YES |
| 5877472100 | Angelica Yao | Angelica Yao | ✅ YES | ✅ YES |
| 5877472106 | Danielle Casuga | Danielle Casuga | ✅ YES | ✅ YES |
| 5877472118 | Geoff Robertson | Geoff Robertson | ✅ YES | ✅ YES |
| 5877473083 | Brenda Westren | Brenda Westren | ✅ YES | ✅ YES |
| 5877473088 | Venkateswarlu Pasupuleti | Venkateswarlu Pasupuleti | ✅ YES | ✅ YES |
| 5877473092 | Roberta Brost | Roberta Brost | ✅ YES | ✅ YES |
| 5877473096 | Betty Seto Tang | Betty Seto Tang | ✅ YES | ✅ YES |
| 5877475076 | Bobbi Kudding | Bobbi Kudding | ✅ YES | ✅ YES |
| 5877475082 | James Hawkins | James Hawkins | ✅ YES | ✅ YES |
| 5877475085 | Marshall Horne | Marshall Horne | ✅ YES | ✅ YES |
| 5877478163 | Darris Perzan | Darris Perzan | ✅ YES | ✅ YES |
| 5877478168 | Jeffrey Wiggers | Jeffrey Wiggers | ✅ YES | ✅ YES |
| 5877478173 | Sarah Salawu | Sarah Salawu | ✅ YES | ✅ YES |
| 5877478201 | Israel Nandez Hernandez | Israel Nandez Hernandez | ✅ YES | ✅ YES |
| 5877478206 | Braydon Rideout | Braydon Rideout | ✅ YES | ✅ YES |
| 5877478272 | Mary Younis | Mary Younis | ✅ YES | ✅ YES |
| 5877478278 | Justin Kudel | Justin Kudel | ✅ YES | ✅ YES |
| 5877478284 | Shannon Taylor | Shannon Taylor | ✅ YES | ✅ YES |
| 5877478289 | Robert Lillehei | Robert Lillehei | ✅ YES | ✅ YES |
| 5877478291 | Holly Macfarlane | Holly Macfarlane | ✅ YES | ✅ YES |
| 5877478298 | Brandon Choy | Brandon Choy | ✅ YES | ✅ YES |
| 5877478301 | Yunyi Huang | Yunyi Huang | ✅ YES | ✅ YES |
| 5877478305 | Sabrina Young | Sabrina Young | ✅ YES | ✅ YES |
| 5877478311 | Alisdair McRobbie | Alisdair McRobbie | ✅ YES | ✅ YES |
| 5877478316 | Xiaowen Luo | Xiaowen Luo | ✅ YES | ✅ YES |
| 5877478318 | Tanner Makepeace | Tanner Makepeace | ✅ YES | ✅ YES |
| 5877478328 | Fern Maas | Fern Maas | ✅ YES | ✅ YES |
| 5877478329 | Xiang Tan | Xiang Tan | ✅ YES | ✅ YES |
| 5877478331 | Michael Lali | Michael Lali | ✅ YES | ✅ YES |
| 5877478341 | Kai Yuen Lam | Kai Yuen Lam | ✅ YES | ✅ YES |
| 5877478343 | Zekai Jia | Zekai Jia | ✅ YES | ✅ YES |
| 5877478344 | Ian Perry | Ian Perry | ✅ YES | ✅ YES |
| 5877478347 | Zhijie Xu | Zhijie Xu | ✅ YES | ✅ YES |
| 5877478351 | Matthew Ng | Matthew Ng | ✅ YES | ✅ YES |
| 5877478352 | Michael Eaton | Michael Eaton | ✅ YES | ✅ YES |
| 5877478353 | Jordon Mitchell | Jordon Mitchell | ✅ YES | ✅ YES |
| 5877478361 | Olanrewaju Otusanya | Olanrewaju Otusanya | ✅ YES | ✅ YES |
| 5877478362 | Chad Bannert | Chad Bannert | ✅ YES | ✅ YES |
| 5877478365 | Rechelle Wallis | Rechelle Wallis | ✅ YES | ✅ YES |
| 5877478367 | Nancy Fernandes-Mendonca | Nancy Fernandes-Mendonca | ✅ YES | ✅ YES |
| 5877478371 | Lorraine Brands | Lorraine Brands | ✅ YES | ✅ YES |
| 5877478380 | Ryan Dormer | Ryan Dormer | ✅ YES | ✅ YES |
| 5877478389 | Galvinder Hoondal | Galvinder Hoondal | ✅ YES | ✅ YES |
| 5877478390 | Stephen McCrum | Stephen McCrum | ✅ YES | ✅ YES |
| 5877712753 | Steven Bredeson | Steven Bredeson | ✅ YES | ✅ YES |
| 5877712759 | Brian Persaud | Brian Persaud | ✅ YES | ✅ YES |
| 5877742409 | Michael Mikuska | Michael Mikuska | ✅ YES | ✅ YES |
| 5877742626 | Anum Ghazanfar | Anum Ghazanfar | ✅ YES | ✅ YES |
| 5877742627 | Natasha Nolan | Natasha Nolan | ✅ YES | ✅ YES |
| 5877742891 | Jordan Driessen | Jordan Driessen | ✅ YES | ✅ YES |
| 5877744693 | Heather Bigoraj | Heather Bigoraj | ✅ YES | ✅ YES |
| 5877744695 | Landon Friesen | Landon Friesen | ✅ YES | ✅ YES |
| 5877744699 | Steve Ma | Steve Ma | ✅ YES | ✅ YES |
| 5877744702 | Blake Vickery | Blake Vickery | ✅ YES | ✅ YES |
| 5877744715 | Amer Swadi | Amer Swadi | ✅ YES | ✅ YES |
| 5877745722 | Carina Blohm | Carina Blohm | ✅ YES | ✅ YES |
| 5877745742 | Julio Martinez | Julio Martinez | ✅ YES | ✅ YES |
| 5877745745 | Simone Stewart | Simone Stewart | ✅ YES | ✅ YES |
| 5877745748 | Patrick Quan | Patrick Quan | ✅ YES | ✅ YES |
| 5877745752 | Natasha Foy | Natasha Foy | ✅ YES | ✅ YES |
| 5877745755 | Tetiana Hutsol | Tetiana Hutsol | ✅ YES | ✅ YES |
| 5877745767 | Milan Shah | Sheri Heiduk | ❌ NO | ✅ YES |
| 5877745770 | Adam Hen | Adam Hen | ✅ YES | ✅ YES |
| 5877745776 | Sara-Jane Hunt | Sara-Jane Hunt | ✅ YES | ✅ YES |
| 5877745777 | Raouf Sherourou | Raouf Sherourou | ✅ YES | ✅ YES |
| 5877745779 | Holly Kelly | Holly Kelly | ✅ YES | ✅ YES |
| 5877745783 | Minh Huyen Nguyen | Minh Huyen Nguyen | ✅ YES | ✅ YES |
| 5877745787 | Joshua Garnhum | Joshua Garnhum | ✅ YES | ✅ YES |
| 5877745788 | Jeff Wong | Jeff Wong | ✅ YES | ✅ YES |
| 5877745804 | Kimberly Dizon | Kimberly Dizon | ✅ YES | ✅ YES |
| 5877745805 | Andrea Riemer | Andrea Riemer | ✅ YES | ✅ YES |
| 5877745807 | Madeline Newbigging | Madeline Newbigging | ✅ YES | ✅ YES |
| 5877745814 | Pan Gi Park | Pan Gi Park | ✅ YES | ✅ YES |
| 5877745830 | Scott Linklater | Scott Linklater | ✅ YES | ✅ YES |
| 5877745855 | Jason Hong | Jason Hong | ✅ YES | ✅ YES |
| 5877745856 | Jamie Thomson | Jamie Thomson | ✅ YES | ✅ YES |
| 5877745907 | Kim DeCorby | Kim DeCorby | ✅ YES | ✅ YES |
| 5877745913 | Matthew Noble | Matthew Noble | ✅ YES | ✅ YES |
| 5877745921 | Kie Knox | Kie Knox | ✅ YES | ✅ YES |
| 5877745925 | Prestan DMello | Prestan DMello | ✅ YES | ✅ YES |
| 5877745930 | Sandhya Reddy | Sandhya Reddy | ✅ YES | ✅ YES |
| 5877745936 | Kenneth Clement | Kenneth Clement | ✅ YES | ✅ YES |
| 5877745937 | Pit Hang Ng | Pit Hang Ng | ✅ YES | ✅ YES |
| 5877745968 | Charanjit Kaur | Charanjit Kaur | ✅ YES | ✅ YES |
| 5877745981 | Mateo Abella | Mateo Abella | ✅ YES | ✅ YES |
| 5877745982 | Kristin Skrivanos | Kristin Skrivanos | ✅ YES | ✅ YES |
| 5877745988 | Matthew Omelchuk | Matthew Omelchuk | ✅ YES | ✅ YES |
| 5877745996 | Jeanette Tran | Jeanette Tran | ✅ YES | ✅ YES |
| 5877746001 | Sasha Krayzel | Sasha Krayzel | ✅ YES | ✅ YES |
| 5877746011 | Abdullah Abid | Abdullah Abid | ✅ YES | ✅ YES |
| 5877746018 | Paul Malone | Paul Malone | ✅ YES | ✅ YES |
| 5877746019 | Heather Sazdov | Heather Sazdov | ✅ YES | ✅ YES |
| 5877746025 | Lyaila Marculescu | Lyaila Marculescu | ✅ YES | ✅ YES |
| 5877746028 | Anita Gill | Anita Gill | ✅ YES | ✅ YES |
| 5877746050 | Jonelle Pike | Jonelle Pike | ✅ YES | ✅ YES |
| 5877746054 | Daniel Lord | Daniel Lord | ✅ YES | ✅ YES |
| 5877746064 | Chris MacMullin | Chris MacMullin | ✅ YES | ✅ YES |
| 5877746078 | Mikaila Mangone | Sarah Magee | ❌ NO | ✅ YES |
| 5877746086 | Minoru Teramoto | Minoru Teramoto | ✅ YES | ✅ YES |
| 5877746088 | Jonathan Chow | Jonathan Chow | ✅ YES | ✅ YES |
| 5877746329 | Joe Ricciardi | Joe Ricciardi | ✅ YES | ✅ YES |
| 5877746361 | Zhendong Zhou | Zhendong Zhou | ✅ YES | ✅ YES |
| 5877746390 | Dionne Paul | Dionne Paul | ✅ YES | ✅ YES |
| 5877746395 | Jinxia Yu | Jinxia Yu | ✅ YES | ✅ YES |
| 5877746401 | Sarah Brochu | Sarah Brochu | ✅ YES | ✅ YES |
| 5877746404 | Grace Cheung | Grace Cheung | ✅ YES | ✅ YES |
| 5877746406 | Guillermo Silva | Guillermo Silva | ✅ YES | ✅ YES |
| 5877746407 | Katelyn Gardner | Katelyn Gardner | ✅ YES | ✅ YES |
| 5877746410 | Brady Mah | Brady Mah | ✅ YES | ✅ YES |
| 5877747873 | Leevon Bennett | Leevon Bennett | ✅ YES | ✅ YES |
| 5877747888 | Carrie Grimes | Carrie Grimes | ✅ YES | ✅ YES |
| 5877747891 | Nicole Labrecque | Nicole Labrecque | ✅ YES | ✅ YES |
| 5877747895 | Amanpreet Sidhu | Amanpreet Sidhu | ✅ YES | ✅ YES |
| 5877747912 | Han Yang | Han Yang | ✅ YES | ✅ YES |
| 5877747915 | Irene Pascual | Irene Pascual | ✅ YES | ✅ YES |
| 5877747921 | Vincent Te | Vincent Te | ✅ YES | ✅ YES |
| 5877747926 | Blair Schiffner | Blair Schiffner | ✅ YES | ✅ YES |
| 5877747940 | Mary Pereira | Mary Pereira | ✅ YES | ✅ YES |
| 5877747941 | Meaghen MacEachern | Meaghen MacEachern | ✅ YES | ✅ YES |
| 5877747942 | Aleem Tejani | Aleem Tejani | ✅ YES | ✅ YES |
| 5877747945 | Erick Aliaga | Erick Aliaga | ✅ YES | ✅ YES |
| 5877747981 | Jayme Scott | Jayme Scott | ✅ YES | ✅ YES |
| 5877748000 | Eric Wakley | Eric Wakley | ✅ YES | ✅ YES |
| 5877748001 | Xinchao Zhao | Xinchao Zhao | ✅ YES | ✅ YES |
| 5877748016 | Caitlin McCullough | Caitlin McCullough | ✅ YES | ✅ YES |
| 5877748020 | Jordan Kean | Jordan Kean | ✅ YES | ✅ YES |
| 5877748024 | Hitomi Sato | Hitomi Sato | ✅ YES | ✅ YES |
| 5877748030 | Doug Radke | Doug Radke | ✅ YES | ✅ YES |
| 5877748038 | Adam Staruiala | Adam Staruiala | ✅ YES | ✅ YES |
| 5877748047 | Tomislav Rupert | Tomislav Rupert | ✅ YES | ✅ YES |
| 5877749414 | Tiffany Goh | Tiffany Goh | ✅ YES | ✅ YES |
| 5877749415 | Trevor Henschel | Trevor Henschel | ✅ YES | ✅ YES |
| 5877749417 | Justin Wenger | Justin Wenger | ✅ YES | ✅ YES |
| 5877749419 | Jilly Tagore | Jilly Tagore | ✅ YES | ✅ YES |
| 5877749421 | Bhuvaneshwary Dudyala | Bhuvaneshwary Dudyala | ✅ YES | ✅ YES |
| 5877749423 | Julie Cameron | Julie Cameron | ✅ YES | ✅ YES |
| 5877749426 | Owen Tait | Owen Tait | ✅ YES | ✅ YES |
| 5877749430 | Renu Pal | Renu Pal | ✅ YES | ✅ YES |
| 5877749432 | Dwayne Palmer | Dwayne Palmer | ✅ YES | ✅ YES |
| 5877749434 | Tsz Ching Wu | Tsz Ching Wu | ✅ YES | ✅ YES |
| 5877749435 | Kristina Koch | Kristina Koch | ✅ YES | ✅ YES |
| 5877749438 | Scott McCamis | Scott McCamis | ✅ YES | ✅ YES |
| 5877749455 | Warren Cookson | Warren Cookson | ✅ YES | ✅ YES |
| 5877749460 | John Keating | John Keating | ✅ YES | ✅ YES |
| 5877749463 | May Nnorom | May Nnorom | ✅ YES | ✅ YES |
| 5877749467 | Nicholas Haley | Nicholas Haley | ✅ YES | ✅ YES |
| 5877749483 | Connor Doherty | Connor Doherty | ✅ YES | ✅ YES |
| 5877749486 | Ryan Bjornsen | Ryan Bjornsen | ✅ YES | ✅ YES |
| 5877749512 | Yueqi Wang | Yueqi Wang | ✅ YES | ✅ YES |
| 5877749521 | Curtis Chapman | Curtis Chapman | ✅ YES | ✅ YES |
| 5877749523 | Sarah Lamb | Sarah Lamb | ✅ YES | ✅ YES |
| 5877749529 | Britt Nadeau | Britt Nadeau | ✅ YES | ✅ YES |
| 5877749535 | Kent Simpson | Kent Simpson | ✅ YES | ✅ YES |
| 5877749539 | John Catolico | John Catolico | ✅ YES | ✅ YES |
| 5877749541 | Patrick Wojcik | Patrick Wojcik | ✅ YES | ✅ YES |
| 5877792603 | Hang Song | Hang Song | ✅ YES | ✅ YES |
| 5877792608 | Feng Ying Gibson | Feng Ying Gibson | ✅ YES | ✅ YES |
| 5877792609 | Ahmed Saidah | Ahmed Saidah | ✅ YES | ✅ YES |
| 5877792617 | Scott Sander | Scott Sander | ✅ YES | ✅ YES |
| 5877792618 | Gordon Farquharson | Gordon Farquharson | ✅ YES | ✅ YES |
| 5877792619 | Ethan Braun | Ethan Braun | ✅ YES | ✅ YES |
| 5877793258 | Laine Laudenklos | Laine Laudenklos | ✅ YES | ✅ YES |
| 5877793264 | Elizabeth Tait | Elizabeth Tait | ✅ YES | ✅ YES |
| 5877793269 | Nicholas Bickford | Nicholas Bickford | ✅ YES | ✅ YES |
| 5877793270 | Christopher Hegler | Christopher Hegler | ✅ YES | ✅ YES |
| 5877793272 | Andrew Matthews | Andrew Matthews | ✅ YES | ✅ YES |
| 5877793273 | Andrada Ciulavu | Andrada Ciulavu | ✅ YES | ✅ YES |
| 5877793278 | Brendan Bennett-Chevarie | Brendan Bennett-Chevarie | ✅ YES | ✅ YES |
| 5877793302 | Btrose Arslan Oghly | Btrose Arslan Oghly | ✅ YES | ✅ YES |
| 5877793305 | Melissa Chafe | Melissa Chafe | ✅ YES | ✅ YES |
| 5877793307 | Dharmayanti Sasmita | Dharmayanti Sasmita | ✅ YES | ✅ YES |
| 5877793317 | Hannah Devereux | Hannah Devereux | ✅ YES | ✅ YES |
| 5877793319 | Ashley Meade | Ashley Meade | ✅ YES | ✅ YES |
| 5877793320 | Luke Timmerman | Luke Timmerman | ✅ YES | ✅ YES |
| 5877793321 | Isabel Louie | Isabel Louie | ✅ YES | ✅ YES |
| 5877793327 | Darcy Hoffus | Darcy Hoffus | ✅ YES | ✅ YES |
| 5877793328 | Tanmay Godara | Tanmay Godara | ✅ YES | ✅ YES |
| 5877793355 | Nicolas Karam | Nicolas Karam | ✅ YES | ✅ YES |
| 5877793357 | Audrey Etherington | Audrey Etherington | ✅ YES | ✅ YES |
| 5877793362 | William Sheppard | William Sheppard | ✅ YES | ✅ YES |
| 5877793363 | Mounir Nasser | Mounir Nasser | ✅ YES | ✅ YES |
| 5877793364 | Zuzana Nedeljakova | Zuzana Nedeljakova | ✅ YES | ✅ YES |
| 5877793372 | Drew Carpenter | Drew Carpenter | ✅ YES | ✅ YES |
| 5877793381 | Melanie Wood | Melanie Wood | ✅ YES | ✅ YES |
| 5877793382 | Joe Chi Chung Ng | Joe Chi Chung Ng | ✅ YES | ✅ YES |
| 5877793385 | Bing Rong Ho | Bing Rong Ho | ✅ YES | ✅ YES |
| 5877793664 | Prashant Shelar | Prashant Shelar | ✅ YES | ✅ YES |
| 5877793674 | Kent Haidl | Kent Haidl | ✅ YES | ✅ YES |
| 5877793682 | Stanley Young | Stanley Young | ✅ YES | ✅ YES |
| 5877793684 | Giovanna Brookes | Giovanna Brookes | ✅ YES | ✅ YES |
| 5877793686 | Jan Ondracek | Jan Ondracek | ✅ YES | ✅ YES |
| 5877793688 | Mohammed Jefrin A J | Mohammed Jefrin A J | ✅ YES | ✅ YES |
| 5877793699 | Gustavo Moreno | Gustavo Moreno | ✅ YES | ✅ YES |
| 5877793700 | Michael LeBlanc | Michael LeBlanc | ✅ YES | ✅ YES |
| 5877793703 | Todd Jersak | Todd Jersak | ✅ YES | ✅ YES |
| 5877793705 | Harsimranjit Mudher | Harsimranjit Mudher | ✅ YES | ✅ YES |
| 5877793707 | Christopher Nygaard | Christopher Nygaard | ✅ YES | ✅ YES |
| 5877890890 | Forrest Lambkin | Forrest Lambkin | ✅ YES | ✅ YES |
| 5877911110 | Travis Berg | Travis Berg | ✅ YES | ✅ YES |
| 5877943090 | Alex Isis Bruno | Alex Isis Bruno | ✅ YES | ✅ YES |
| 5877943404 | Anna-Marie Laird | Anna-Marie Laird | ✅ YES | ✅ YES |
| 5877943409 | Kris Gaskell | Kris Gaskell | ✅ YES | ✅ YES |
| 5877943442 | Terence Hwang | Terence Hwang | ✅ YES | ✅ YES |
| 5879433404 | Albert Whitford | Albert Whitford | ✅ YES | ✅ YES |
| 5879522276 | Hammad Rahim | Hammad Rahim | ✅ YES | ✅ YES |
| 5879522278 | Natalie Fahey | Natalie Fahey | ✅ YES | ✅ YES |
| 5879522282 | Dongguang Li | Dongguang Li | ✅ YES | ✅ YES |
| 5879522283 | John Ritz | John Ritz | ✅ YES | ✅ YES |
| 5879750251 | Jose Carlos Alvarez | Jose Carlos Alvarez | ✅ YES | ✅ YES |
| 5879750258 | Reid Munro | Reid Munro | ✅ YES | ✅ YES |
| 5879750260 | Meghan Anshelm | Meghan Anshelm | ✅ YES | ✅ YES |
| 5879750261 | Jefferson Hudson | Jefferson Hudson | ✅ YES | ✅ YES |
| 5879750264 | Rocio Jara | Rocio Jara | ✅ YES | ✅ YES |
| 5879750265 | Eryn Rizzoli | Eryn Rizzoli | ✅ YES | ✅ YES |
| 5879750269 | ShiRong Ye | ShiRong Ye | ✅ YES | ✅ YES |
| 5879750279 | Paul Prakash | Paul Prakash | ✅ YES | ✅ YES |
| 5879750286 | Natalya Cordingley | Natalya Cordingley | ✅ YES | ✅ YES |
| 5879750287 | Victor Lam | Victor Lam | ✅ YES | ✅ YES |
| 5879750289 | Nandita Sheth | Nandita Sheth | ✅ YES | ✅ YES |
| 5879750290 | Diana Ebbern | Diana Ebbern | ✅ YES | ✅ YES |
| 5879750296 | Shawn Hinch | Shawn Hinch | ✅ YES | ✅ YES |
| 5879750297 | Wendy Connors | Wendy Connors | ✅ YES | ✅ YES |
| 5879750307 | Zachary Johnson | Zachary Johnson | ✅ YES | ✅ YES |
| 5879750308 | Matt Crockett | Matt Crockett | ✅ YES | ✅ YES |
| 5879750312 | Alan Oulette | Alan Oulette | ✅ YES | ✅ YES |
| 5879750317 | Lucas Franklin | Lucas Franklin | ✅ YES | ✅ YES |
| 5879750319 | Wesley Delisle | Wesley Delisle | ✅ YES | ✅ YES |
| 5879750320 | Daniel Cronin | Daniel Cronin | ✅ YES | ✅ YES |
| 5879750321 | Christopher LeBeau | Christopher LeBeau | ✅ YES | ✅ YES |
| 5879750331 | Mary Vodden | Mary Vodden | ✅ YES | ✅ YES |
| 5879750338 | Santosh Kumar Pallikila | Santosh Kumar Pallikila | ✅ YES | ✅ YES |
| 5879750355 | James Leach | James Leach | ✅ YES | ✅ YES |
| 5879750356 | Shawna Irwin | Shawna Irwin | ✅ YES | ✅ YES |
| 5879750359 | Katrina Trottier | Katrina Trottier | ✅ YES | ✅ YES |
| 5879750363 | Elso Sneha K A | Elso Sneha K A | ✅ YES | ✅ YES |
| 5879750366 | Arun Sood | Arun Sood | ✅ YES | ✅ YES |
| 5879750367 | Andrew Fowler | Andrew Fowler | ✅ YES | ✅ YES |
| 5879750370 | Megan Deforest | Megan Deforest | ✅ YES | ✅ YES |
| 5879750371 | Peter Young | Peter Young | ✅ YES | ✅ YES |
| 5879750382 | Nikhitha Medi | Nikhitha Medi | ✅ YES | ✅ YES |
| 5879750383 | Shelby Salt | Shelby Salt | ✅ YES | ✅ YES |
| 5879750388 | Georgina Anderson | Georgina Anderson | ✅ YES | ✅ YES |
| 5879750392 | Zachary Colyer | Zachary Colyer | ✅ YES | ✅ YES |
| 5879750393 | Shamel Boothe | Shamel Boothe | ✅ YES | ✅ YES |
| 5879750396 | Clay Paul | Clay Paul | ✅ YES | ✅ YES |
| 6142102300 | RoseMarie DelSignore | RoseMarie DelSignore | ✅ YES | ✅ YES |
| 6142102301 | Lesley Fry | Lesley Fry | ✅ YES | ✅ YES |
| 6142102303 | Scott Howard | Scott Howard | ✅ YES | ✅ YES |
| 6142102304 | Sabrina Silva | Sabrina Silva | ✅ YES | ✅ YES |
| 6142102306 | Samuel Sander | Samuel Sander | ✅ YES | ✅ YES |
| 6142102307 | Neil Ulrich | Neil Ulrich | ✅ YES | ✅ YES |
| 6142102308 | Deanna Pegg | Deanna Pegg | ✅ YES | ✅ YES |
| 6142102309 | Andrea Helton | Andrea Helton | ✅ YES | ✅ YES |
| 6142102311 | Alexander Brown | Alexander Brown | ✅ YES | ✅ YES |
| 6142102312 | Jodi Poeppelman | Jodi Poeppelman | ✅ YES | ✅ YES |
| 6142102313 | Daniel Fairchild | Daniel Fairchild | ✅ YES | ✅ YES |
| 6142102314 | Jeffrey Hairston | Jeffrey Hairston | ✅ YES | ✅ YES |
| 6142102315 | Talore Browning | Talore Browning | ✅ YES | ✅ YES |
| 6142102316 | Todd Washam | Todd Washam | ✅ YES | ✅ YES |
| 6142102317 | Evelette Johnson | Evelette Johnson | ✅ YES | ✅ YES |
| 6142102318 | Tracey Wicks | Tracey Wicks | ✅ YES | ✅ YES |
| 6142102320 | Mariah Graham | Mariah Graham | ✅ YES | ✅ YES |
| 6142102321 | Kyle Gantt | Kyle Gantt | ✅ YES | ✅ YES |
| 6142102323 | Maguette Gueye | Maguette Gueye | ✅ YES | ✅ YES |
| 6142102325 | Victor Banjo | Victor Banjo | ✅ YES | ✅ YES |
| 6142102327 | Kyle Lescoezec | Kyle Lescoezec | ✅ YES | ✅ YES |
| 6142102328 | Jerry Joyeux | Jerry Joyeux | ✅ YES | ❌ NO |
| 6142102329 | Daniel Ujczo | Daniel Ujczo | ✅ YES | ✅ YES |
| 6142102330 | Jane Martino | Jane Martino | ✅ YES | ✅ YES |
| 6142102331 | Geoffrey Delman | Geoffrey Delman | ✅ YES | ✅ YES |
| 6142102332 | Cassandra Benfield | Cassandra Benfield | ✅ YES | ✅ YES |
| 6142102333 | Robert Seipel | Robert Seipel | ✅ YES | ✅ YES |
| 6142102336 | Dan Syphard | Dan Syphard | ✅ YES | ✅ YES |
| 6142102338 | Clifford Utethe | Clifford Utethe | ✅ YES | ✅ YES |
| 6142102339 | Alysha Knab | Alysha Knab | ✅ YES | ✅ YES |
| 6142102340 | Joshua Cedoz | Joshua Cedoz | ✅ YES | ✅ YES |
| 6142102341 | Marvin Briggs | Marvin Briggs | ✅ YES | ✅ YES |
| 6142102342 | Jason English | Jason English | ✅ YES | ✅ YES |
| 6142102343 | Maxwell Rubin | Maxwell Rubin | ✅ YES | ✅ YES |
| 6142102344 | Boluwatife Onamusi | Boluwatife Onamusi | ✅ YES | ✅ YES |
| 6142102346 | Alejandro Arriaga | Alejandro Arriaga | ✅ YES | ✅ YES |
| 6142102347 | Christopher McLaughlin | Christopher McLaughlin | ✅ YES | ✅ YES |
| 6142102348 | Katherine White | Katherine White | ✅ YES | ✅ YES |
| 6142102349 | Ian Keller | Ian Keller | ✅ YES | ✅ YES |
| 6143393089 | Christopher Marrion | Christopher Marrion | ✅ YES | ✅ YES |
| 6143393115 | Anne Todd | Anne Todd | ✅ YES | ✅ YES |
| 6143393117 | Amy Kocher | Amy Kocher | ✅ YES | ✅ YES |
| 6143394350 | Austin Iatonna | Austin Iatonna | ✅ YES | ✅ YES |
| 6143394905 | James Heine | James Heine | ✅ YES | ✅ YES |
| 6144015230 | Harrison Thompson | Harrison Thompson | ✅ YES | ✅ YES |
| 6144015231 | Matthew Neitz | Matthew Neitz | ✅ YES | ✅ YES |
| 6144015232 | Neha Shah | Neha Shah | ✅ YES | ✅ YES |
| 6144015233 | Elena Spinu | Elena Spinu | ✅ YES | ✅ YES |
| 6144015234 | RoseMarie DelSignore | Quinn Patterson | ❌ NO | ✅ YES |
| 6144015235 | Katherine Norton | Lolita Dmello | ❌ NO | ✅ YES |
| 6144015236 | John Obery | John Obery | ✅ YES | ✅ YES |
| 6144015237 | Rebecca Wolcott | Rebecca Wolcott | ✅ YES | ✅ YES |
| 6144015238 | Matthew Geiyer | Matthew Geiyer | ✅ YES | ✅ YES |
| 6144015239 | Paul Meline | Paul Meline | ✅ YES | ✅ YES |
| 6147631122 | Miles Manley | Miles Manley | ✅ YES | ✅ YES |
| 6147631123 | Zhengang Han | Zhengang Han | ✅ YES | ✅ YES |
| 6147631124 | Brandon Nickoli | Brandon Nickoli | ✅ YES | ✅ YES |
| 6147631125 | Gary Edley | Gary Edley | ✅ YES | ✅ YES |
| 6147631126 | Gerrett Ellett | Gerrett Ellett | ✅ YES | ✅ YES |
| 6147631127 | Logan King | Logan King | ✅ YES | ✅ YES |
| 6147631129 | Emily Rindfleisch | Emily Rindfleisch | ✅ YES | ✅ YES |
| 6147631567 | Daniel Murtha | Daniel Murtha | ✅ YES | ✅ YES |
| 6147631568 | Ryan Connelly | Ryan Connelly | ✅ YES | ✅ YES |
| 6147631569 | Sasha Markovic | Sasha Markovic | ✅ YES | ✅ YES |
| 6147631570 | Colin Radke | Colin Radke | ✅ YES | ✅ YES |
| 6147631571 | Tyler Lape | Kevin Robertson | ❌ NO | ✅ YES |
| 6147631572 | Mason Ziegler | Mason Ziegler | ✅ YES | ✅ YES |
| 6147631573 | Michael Morimoto | Michael Morimoto | ✅ YES | ✅ YES |
| 6147631574 | Thomas Isaacs | Thomas Isaacs | ✅ YES | ✅ YES |
| 6147631575 | Jessica Barkan | Jessica Barkan | ✅ YES | ✅ YES |
| 6147631576 | Nicholas Hefner | Nicholas Hefner | ✅ YES | ✅ YES |
| 6147631578 | Andrew Spies | Andrew Spies | ✅ YES | ✅ YES |
| 6147631579 | Daniel Knapp | Daniel Knapp | ✅ YES | ✅ YES |
| 6147631580 | Daniel Oseguera | Daniel Oseguera | ✅ YES | ✅ YES |
| 6147631581 | Allison Moss | Allison Moss | ✅ YES | ✅ YES |
| 6147631583 | Ryan Kahle | Ryan Kahle | ✅ YES | ✅ YES |
| 6147631584 | Mitch Beekman | Mitch Beekman | ✅ YES | ✅ YES |
| 6149560764 | Paityn Bowman | Paityn Bowman | ✅ YES | ✅ YES |
| 6149560765 | Phillip Burns | Phillip Burns | ✅ YES | ✅ YES |
| 6149560770 | Eric Zimpfer | Eric Zimpfer | ✅ YES | ✅ YES |
| 6149560772 | James Garland | James Garland | ✅ YES | ✅ YES |
| 6149560773 | Michael Pynn | Michael Pynn | ✅ YES | ✅ YES |
| 6149560776 | Seyed Arash Hosseini | Seyed Arash Hosseini | ✅ YES | ✅ YES |
| 6149560782 | Wendy Rieser | Joao Zandona | ❌ NO | ✅ YES |
| 6149560785 | Delisa Thomas | Delisa Thomas | ✅ YES | ✅ YES |
| 6149560787 | Sara Blair | Sara Blair | ✅ YES | ✅ YES |
| 6149560790 | Jon Stroup | Bradley Schulze | ❌ NO | ✅ YES |
| 7805594850 | Quinnton Aginas | Quinnton Aginas | ✅ YES | ✅ YES |
| 7805598400 | Colin Fodor | Slimane Bensidi-Aissa | ❌ NO | ✅ YES |
| 7807236947 | Charles Canning | Curtis Mulligan | ❌ NO | ✅ YES |
| 7807254901 | Rhonda Robinson | Rhonda Robinson | ✅ YES | ✅ YES |
| 7807254902 | Blaine Watson | Blaine Watson | ✅ YES | ✅ YES |
| 7807254908 | Gregory Smith | Gregory Smith | ✅ YES | ✅ YES |
| 7807254912 | Amy Rushton | Amy Rushton | ✅ YES | ✅ YES |
| 7807254913 | Stephen Collins | Stephen Collins | ✅ YES | ✅ YES |
| 7807254914 | Lee Ferriss | Lee Ferriss | ✅ YES | ✅ YES |
| 7807254915 | Logan Meropoulis | Logan Meropoulis | ✅ YES | ✅ YES |
| 7807254917 | Marshall Wild | Marshall Wild | ✅ YES | ✅ YES |
| 7807254918 | Anthony J Frison | Anthony J Frison | ✅ YES | ✅ YES |
| 7807254919 | Kimberly Sarafinchen | Kimberly Sarafinchen | ✅ YES | ✅ YES |
| 7807254923 | Vern Runge | Vern Runge | ✅ YES | ✅ YES |
| 7807254930 | Troy Claridge | Troy Claridge | ✅ YES | ✅ YES |
| 7807254935 | Michelle Mole | Michelle Mole | ✅ YES | ✅ YES |
| 7807254938 | Darrel Setzer | Darrel Setzer | ✅ YES | ✅ YES |
| 7807254939 | Larry L'Hirondelle | Larry L'Hirondelle | ✅ YES | ✅ YES |
| 7807254941 | Alexandre Deschenes | Alexandre Deschenes | ✅ YES | ✅ YES |
| 7807254961 | Christopher Liebig | Christopher Liebig | ✅ YES | ✅ YES |
| 7807254963 | Michelle Nairn | Michelle Nairn | ✅ YES | ✅ YES |
| 7807254965 | Blake Rider | Blake Rider | ✅ YES | ✅ YES |
| 7807254967 | Brendon Emmett | Brendon Emmett | ✅ YES | ✅ YES |
| 7807254968 | Paul Cokes | Paul Cokes | ✅ YES | ✅ YES |
| 7807254972 | Michael Landry | Michael Landry | ✅ YES | ✅ YES |
| 7807255002 | Melissa Blue | Melissa Blue | ✅ YES | ✅ YES |
| 7807255005 | Gregory Guenette | Gregory Guenette | ✅ YES | ✅ YES |
| 7807255006 | Ryan Baudin | Ryan Baudin | ✅ YES | ✅ YES |
| 7807255007 | Devan Sieben | Devan Sieben | ✅ YES | ✅ YES |
| 7807255008 | Philip Germann | Philip Germann | ✅ YES | ✅ YES |
| 7807255013 | Rickaya Lachance | Rickaya Lachance | ✅ YES | ✅ YES |
| 7807255014 | Shawn Weeteringen | Shawn Weeteringen | ✅ YES | ✅ YES |
| 7807255019 | Shawn Mole | Shawn Mole | ✅ YES | ✅ YES |
| 7807255025 | Cole Petersen | Cole Petersen | ✅ YES | ✅ YES |
| 7807255030 | Raymond Douville | Raymond Douville | ✅ YES | ✅ YES |
| 7807255031 | Jason Williams | Jason Williams | ✅ YES | ✅ YES |
| 7807255034 | Alvin Olchowy | Alvin Olchowy | ✅ YES | ✅ YES |
| 7807255042 | Dustin Simmons | Dustin Simmons | ✅ YES | ✅ YES |
| 7807255043 | Vicki Rolling | Vicki Rolling | ✅ YES | ✅ YES |
| 7807255046 | Steven Zaporosky | Steven Zaporosky | ✅ YES | ✅ YES |
| 7807255053 | Stacy Arndt | Stacy Arndt | ✅ YES | ✅ YES |
| 7807255054 | Derek Rangen | Derek Rangen | ✅ YES | ✅ YES |
| 7807255059 | Michael Semotiuk | Michael Semotiuk | ✅ YES | ✅ YES |
| 7807255060 | Gord MacGregor | Gord MacGregor | ✅ YES | ✅ YES |
| 7807255067 | Mark Staves | Mark Staves | ✅ YES | ✅ YES |
| 7807255071 | Kevin James | Kevin James | ✅ YES | ✅ YES |
| 7807255072 | Jacob Banack | Jacob Banack | ✅ YES | ✅ YES |
| 7807490085 | Melissa Chrunik | Melissa Chrunik | ✅ YES | ✅ YES |
| 7807490087 | Jennifer Lovely | Jennifer Lovely | ✅ YES | ✅ YES |
| 7807490426 | Joel Lysak | Joel Lysak | ✅ YES | ✅ YES |
| 7807490428 | Issabella LeDrew Guthrie | Issabella LeDrew Guthrie | ✅ YES | ✅ YES |
| 7807490433 | Miles Brown | Miles Brown | ✅ YES | ✅ YES |
| 7807490436 | Mark Donegani | Mark Donegani | ✅ YES | ✅ YES |
| 7807490440 | Kent Osborne | Kent Osborne | ✅ YES | ✅ YES |
| 7807490442 | Justin VanMaarion | Justin VanMaarion | ✅ YES | ✅ YES |
| 7807490446 | Tracy Kembel | Tracy Kembel | ✅ YES | ✅ YES |
| 7807490466 | Devin Keller | Devin Keller | ✅ YES | ✅ YES |
| 7807490471 | Anthony Winquist | Anthony Winquist | ✅ YES | ✅ YES |
| 7807490472 | Christopher Banman | Christopher Banman | ✅ YES | ✅ YES |
| 7807490474 | Roman Bourque | Roman Bourque | ✅ YES | ✅ YES |
| 7807490476 | Roderico Aure | Roderico Aure | ✅ YES | ✅ YES |
| 7807490483 | Mike Nicholson | Mike Nicholson | ✅ YES | ✅ YES |
| 7807490490 | James Halfacre | Graeme Schulz | ❌ NO | ✅ YES |
| 7807493304 | Shawn Hare | Shawn Hare | ✅ YES | ✅ YES |
| 7807493308 | Clayton Harrison | Clayton Harrison | ✅ YES | ✅ YES |
| 7807493309 | Ke Zhang | Ke Zhang | ✅ YES | ✅ YES |
| 7807493310 | Daniel Hewitt | Daniel Hewitt | ✅ YES | ✅ YES |
| 7807493314 | Darren Lambert | Robert Tullikopf | ❌ NO | ✅ YES |
| 7807493331 | Michael Knowles | Michael Knowles | ✅ YES | ✅ YES |
| 7807493332 | Ketan Prasad | Ketan Prasad | ✅ YES | ✅ YES |
| 7807493335 | Jean-Marc Jossinet | Jean-Marc Jossinet | ✅ YES | ✅ YES |
| 7807493337 | Ryan Buckman | Ryan Buckman | ✅ YES | ✅ YES |
| 7807493340 | Brian Harmatiuk | Brian Harmatiuk | ✅ YES | ✅ YES |
| 7807493352 | Robert Bannatyne | Robert Bannatyne | ✅ YES | ✅ YES |
| 7807493364 | Joseph Garnett | Joseph Garnett | ✅ YES | ✅ YES |
| 7807493371 | Matthew Thiel | Matthew Thiel | ✅ YES | ✅ YES |
| 7807493374 | Brenna Smith | Brenna Smith | ✅ YES | ✅ YES |
| 7807493375 | Ian Nicolay | Ian Nicolay | ✅ YES | ✅ YES |
| 7807493376 | Wesley Graves | Wesley Graves | ✅ YES | ✅ YES |
| 7807493377 | Matt Roy | Matt Roy | ✅ YES | ✅ YES |
| 7807493381 | Barrett Wieler | Barrett Wieler | ✅ YES | ✅ YES |
| 7807493386 | Cameron Luchak | Cameron Luchak | ✅ YES | ✅ YES |
| 7807493397 | Jesse Gawryletz | Jesse Gawryletz | ✅ YES | ✅ YES |
| 7807493399 | Ben Piers | Ben Piers | ✅ YES | ✅ YES |
| 7808303126 | Sydney Desgagne | Sydney Desgagne | ✅ YES | ✅ YES |
| 7808303129 | Noel Roberts | Noel Roberts | ✅ YES | ✅ YES |
| 7808303138 | Barb Empey | Barb Empey | ✅ YES | ✅ YES |
| 7808303143 | Robert Logan | Robert Logan | ✅ YES | ✅ YES |
| 7808303145 | Jordan Sivorot | Jordan Sivorot | ✅ YES | ✅ YES |
| 7808303150 | Chelsea House | Chelsea House | ✅ YES | ✅ YES |
| 7808303156 | Calvin Grant | Calvin Grant | ✅ YES | ✅ YES |
| 7808303157 | Randy Noseworthy | Randy Noseworthy | ✅ YES | ✅ YES |
| 7808303163 | David Brown | David Brown | ✅ YES | ✅ YES |
| 7808424550 | Darren Jury | Darren Jury | ✅ YES | ✅ YES |
| 7808426476 | Vernon Turnbull | Vernon Turnbull | ✅ YES | ✅ YES |
| 7808716500 | Rachelle Bygrove | Rachelle Bygrove | ✅ YES | ✅ YES |
| 7808716501 | Roy Andreason | Roy Andreason | ✅ YES | ✅ YES |
| 7808716502 | Jason Whitley | Jason Whitley | ✅ YES | ✅ YES |
| 7808716503 | Vanessa Reid | Vanessa Reid | ✅ YES | ✅ YES |
| 7808716505 | Alton Hunter | Alton Hunter | ✅ YES | ✅ YES |
| 7808716507 | Gregory Phillips | Gregory Phillips | ✅ YES | ✅ YES |
| 7808716509 | Tarah Huhn | Tarah Huhn | ✅ YES | ✅ YES |
| 7808716510 | Thomas Edel | Thomas Edel | ✅ YES | ✅ YES |
| 7808716511 | Shaun Payne | Shaun Payne | ✅ YES | ✅ YES |
| 7808716512 | Cara Muench | Cara Muench | ✅ YES | ✅ YES |
| 7808716516 | Cortnee Adam | Cortnee Adam | ✅ YES | ✅ YES |
| 7808716517 | Kelly Anticknap | Kelly Anticknap | ✅ YES | ✅ YES |
| 7808716519 | Donelda Hunter | Donelda Hunter | ✅ YES | ✅ YES |
| 7808716525 | Derek Crites | Derek Crites | ✅ YES | ✅ YES |
| 7808716526 | Jodie Keough | Jodie Keough | ✅ YES | ✅ YES |
| 7808716530 | Brayden Sagert | Brayden Sagert | ✅ YES | ✅ YES |
| 7808716533 | Derrick Kinchen | Derrick Kinchen | ✅ YES | ✅ YES |
| 7808716539 | Troy Mohns | Troy Mohns | ✅ YES | ✅ YES |
| 7808716543 | Taryn Schreiner | Taryn Schreiner | ✅ YES | ✅ YES |
| 7808716544 | Crystal Scribbans | Crystal Scribbans | ✅ YES | ✅ YES |
| 7808716547 | Riley Wolters | Riley Wolters | ✅ YES | ✅ YES |
| 7808716548 | Allen Kendel | Allen Kendel | ✅ YES | ✅ YES |
| 7808716553 | Graeme Cornfoot | Graeme Cornfoot | ✅ YES | ✅ YES |
| 7808716554 | Daniel Gravel | Daniel Gravel | ✅ YES | ✅ YES |
| 7808716555 | Edward Hurford | Edward Hurford | ✅ YES | ✅ YES |
| 7808716556 | Bernard Weber | Bernard Weber | ✅ YES | ✅ YES |
| 7808716557 | Drew Lake | Drew Lake | ✅ YES | ✅ YES |
| 7808716558 | Dennis Chaychuk | Dennis Chaychuk | ✅ YES | ✅ YES |
| 7808716559 | Sheila Jade Sokulski | Sheila Jade Sokulski | ✅ YES | ✅ YES |
| 7808716561 | Nicholas Lundquist | Nicholas Lundquist | ✅ YES | ✅ YES |
| 7808716570 | Luke Holmes | Luke Holmes | ✅ YES | ✅ YES |
| 7808716579 | Ron Semeniuk | Ron Semeniuk | ✅ YES | ✅ YES |
| 7808716582 | Kim Payne | Kim Payne | ✅ YES | ✅ YES |
| 7808716583 | Elias Bulhoes | Andrew Dempsey | ❌ NO | ✅ YES |
| 7808716584 | Robert Gramlich | Robert Gramlich | ✅ YES | ✅ YES |
| 7808716587 | Graham Blore | Graham Blore | ✅ YES | ✅ YES |
| 7808716589 | Kurt Kainer | Kurt Kainer | ✅ YES | ✅ YES |
| 7808716591 | Anthony Wysoskey | Anthony Wysoskey | ✅ YES | ✅ YES |
| 7808716599 | Marvin Smith | Marvin Smith | ✅ YES | ✅ YES |
| 7808716601 | Timothy McGillis | Timothy McGillis | ✅ YES | ✅ YES |
| 7808716602 | Jongwook Park | Jongwook Park | ✅ YES | ✅ YES |
| 7808716603 | Blou Klisowsky | Blou Klisowsky | ✅ YES | ✅ YES |
| 7808716605 | Brooke Trefry | Brooke Trefry | ✅ YES | ✅ YES |
| 7808716607 | Wendy Dickie | Wendy Dickie | ✅ YES | ✅ YES |
| 7808716612 | Barry Parkin | Barry Parkin | ✅ YES | ✅ YES |
| 7808716613 | Jennifer Penill | Jennifer Penill | ✅ YES | ✅ YES |
| 7808716614 | Pierre Pittman | Pierre Pittman | ✅ YES | ✅ YES |
| 7808716615 | Ezinwa Onuogu | Ezinwa Onuogu | ✅ YES | ✅ YES |
| 7808716619 | Kateryna Soucess | Kateryna Soucess | ✅ YES | ✅ YES |
| 7808716620 | Corinna Kohlman | Diane James | ❌ NO | ✅ YES |
| 7808716622 | Ty Kainer | Ty Kainer | ✅ YES | ✅ YES |
| 7808716627 | Michael Holman | Michael Holman | ✅ YES | ✅ YES |
| 7808716629 | Matthew Schlacht | Matthew Schlacht | ✅ YES | ✅ YES |
| 7808716632 | Marla Weber | Marla Weber | ✅ YES | ✅ YES |
| 7808716635 | Victoria Abbott | Victoria Abbott | ✅ YES | ✅ YES |
| 7808716641 | Austin Dennie | Austin Dennie | ✅ YES | ✅ YES |
| 7808716642 | Keri Smith | Keri Smith | ✅ YES | ✅ YES |
| 7808716650 | James Mcneil | James Mcneil | ✅ YES | ✅ YES |
| 7808716651 | Troy Johnston | Troy Johnston | ✅ YES | ✅ YES |
| 7808716655 | Scott Phillips | Scott Phillips | ✅ YES | ✅ YES |
| 7808716659 | Joanne Thompson | Joanne Thompson | ✅ YES | ✅ YES |
| 7808716667 | Craig McInnes | Craig McInnes | ✅ YES | ✅ YES |
| 7808716668 | Xinwen Zhang | Xinwen Zhang | ✅ YES | ✅ YES |
| 7808716669 | Rizalia Hernandez | Rizalia Hernandez | ✅ YES | ✅ YES |
| 7808716671 | Thomas Lawrence | Thomas Lawrence | ✅ YES | ✅ YES |
| 7808716672 | Casey Seier | Casey Seier | ✅ YES | ✅ YES |
| 7808716679 | Tanya Turcotte | Tanya Turcotte | ✅ YES | ✅ YES |
| 7808716685 | Aaron Butt | Aaron Butt | ✅ YES | ✅ YES |
| 7808716687 | Kim Lider | Kim Lider | ✅ YES | ✅ YES |
| 7808716695 | Lyle Harrower | Lyle Harrower | ✅ YES | ✅ YES |
| 7808716698 | Lorraine Langier | Lorraine Langier | ✅ YES | ✅ YES |
| 7808743300 | Les Haugland | Les Haugland | ✅ YES | ✅ YES |
| 7808743302 | Dillon Beaudoin | Dillon Beaudoin | ✅ YES | ✅ YES |
| 7808743304 | Trystan Young | Trystan Young | ✅ YES | ✅ YES |
| 7808743305 | Callan Lowe | Christian Bainard | ❌ NO | ✅ YES |
| 7808743307 | Wayne Keber | Wayne Keber | ✅ YES | ✅ YES |
| 7808743310 | Trevor Nelson | Trevor Nelson | ✅ YES | ✅ YES |
| 7808743323 | Deepak Wazir | Deepak Wazir | ✅ YES | ✅ YES |
| 7808743325 | Gurvir Singh Malhi | Gurvir Singh Malhi | ✅ YES | ✅ YES |
| 7808743327 | Dawn Scott | Dawn Scott | ✅ YES | ✅ YES |
| 7808743336 | Conrad Austerman | Conrad Austerman | ✅ YES | ✅ YES |
| 7808743342 | Jeannine Querubin | Jeannine Querubin | ✅ YES | ✅ YES |
| 7808743345 | Ryan Corbett | Ryan Corbett | ✅ YES | ✅ YES |
| 7808743348 | Justin Quinn | Justin Quinn | ✅ YES | ✅ YES |
| 7808743351 | Visar Beci | Visar Beci | ✅ YES | ✅ YES |
| 7808743353 | Stephen Doering | Stephen Doering | ✅ YES | ✅ YES |
| 7808743354 | Michael Armstrong | Michael Armstrong | ✅ YES | ✅ YES |
| 7808743360 | Kashif Dada | Kashif Dada | ✅ YES | ✅ YES |
| 7808743363 | Rhonda Bonick | Rhonda Bonick | ✅ YES | ✅ YES |
| 7808743364 | Nicole Noseworthy | Nicole Noseworthy | ✅ YES | ✅ YES |
| 7808743365 | Leigh Schooley | Leigh Schooley | ✅ YES | ✅ YES |
| 7808743366 | Adam Gerwing | Adam Gerwing | ✅ YES | ✅ YES |
| 7808743368 | Philip Boycott | Philip Boycott | ✅ YES | ✅ YES |
| 7808743369 | Jade Roberton | Jade Roberton | ✅ YES | ✅ YES |
| 7808743370 | Jason Adams | Dru Franklin | ❌ NO | ✅ YES |
| 7808743371 | Jeffrey Northrup | Jeffrey Northrup | ✅ YES | ✅ YES |
| 7808743372 | Brett Stansfield | Brett Stansfield | ✅ YES | ✅ YES |
| 7808743373 | Barb Gauthier | Barb Gauthier | ✅ YES | ✅ YES |
| 7808743374 | Spencer Aulenback | Spencer Aulenback | ✅ YES | ✅ YES |
| 7808883033 | Eugene Dennis | Eugene Dennis | ✅ YES | ✅ YES |
| 7808883035 | Bradley Fox | Bradley Fox | ✅ YES | ✅ YES |
| 7808883036 | Kevin Metz | Kevin Metz | ✅ YES | ✅ YES |
| 7808883929 | Ryan Lake | Blair Basterash | ❌ NO | ✅ YES |
| 7809568001 | Christopher Mitchell | Christopher Mitchell | ✅ YES | ✅ YES |
| 7809568025 | Marcel Vacon | Marcel Vacon | ✅ YES | ✅ YES |
| 7809568050 | Saad Rasool | Saad Rasool | ✅ YES | ✅ YES |
| 7809568052 | James Barnhill | James Barnhill | ✅ YES | ✅ YES |
| 7809568068 | Alana Thede | Alana Thede | ✅ YES | ✅ YES |
| 7809568073 | Keirsten Maloney | Keirsten Maloney | ✅ YES | ✅ YES |
| 7809568080 | Jenna Brazeau | Jenna Brazeau | ✅ YES | ✅ YES |
| 7809568094 | Gregory Epp | Gregory Epp | ✅ YES | ✅ YES |
| 7809568700 | Christopher Ukrainetz | Christopher Ukrainetz | ✅ YES | ✅ YES |
| 7809568718 | Philip Pavich | Philip Pavich | ✅ YES | ✅ YES |
| 7809568720 | Rory Paul | Rory Paul | ✅ YES | ✅ YES |
| 7809568723 | Jason Bath | Jason Bath | ✅ YES | ✅ YES |
| 7809568725 | Juliette Moore | Juliette Moore | ✅ YES | ✅ YES |
| 7809568754 | Bryan Hendricks | Bryan Hendricks | ✅ YES | ✅ YES |
| 7809568774 | Trinh Phu | Trinh Phu | ✅ YES | ✅ YES |
| 8252960041 | Shawn Drager | Shawn Drager | ✅ YES | ✅ YES |
| 8252960042 | Maxime Tenn | Maxime Tenn | ✅ YES | ✅ YES |

**Cross-Reference Summary:**
- Phone numbers with matching users: 2209/2266 (97.5%)
- Phone numbers with consistent status: 2265/2266 (100.0%)

## 📱 Phone Number Reassignments (57 found)

**🚨 CRITICAL ISSUE:** These phone numbers have different users in Service Overview vs Active Directory:

| Phone Number | Service Overview User | Active Directory User | Service Status | AD Status |
|--------------|----------------------|----------------------|----------------|----------|
| 3068201250 | Pauline Kovacs | Kevin Greenaway | Active | Enabled |
| 3068202493 | Brennan Tebay | Ryan DeRaps | Active | Enabled |
| 3068204467 | Darren Haller | Justin Jess | Active | Enabled |
| 3068204470 | Bogdan Orchyshko | Jiao Du | Active | Enabled |
| 3068204472 | Tyson Crookedneck | Ehsan Rizwan | Active | Enabled |
| 3068204473 | Kyle Jupe | Dwayne Lawryk | Active | Enabled |
| 3068208255 | Bradley Bendick | Jose Gutierrez | Active | Enabled |
| 3068208258 | Michael Babchuk | Aaron Davidson | Active | Enabled |
| 3068208284 | Brandon Taylor | Brent Dyhm | Active | Enabled |
| 3068208759 | Katie Diamond | Khawja Mezbah Moin Uddin | Active | Enabled |
| 3068208796 | Joshua Regnier | Craig Yung | Active | Enabled |
| 3068208797 | Steven Scott | Nicole Budzey | Active | Enabled |
| 3068251500 | Zheridonn De Los Reyes | Tanner Shaw | Active | Enabled |
| 3068251521 | Lee Uhrich | Jesse Peyton | Active | Enabled |
| 3068251523 | Danton Berg | Yunpeng Wang | Active | Enabled |
| 3068251524 | Evan Risling | Jonathon Bonnar | Active | Enabled |
| 3068251525 | Walter Gullion | Terrell Turgeon | Active | Enabled |
| 3068251527 | Mathew Looy | Vaughn Bugler | Active | Enabled |
| 3068251528 | Reid Harty | Shane Eyben | Active | Enabled |
| 3068251531 | Kyle Adams | Braeden Luedtke | Active | Enabled |
| ... | *(37 more reassignments)* | ... | ... | ... |

**This is the core problem:** When John Doe leaves and Sarah McLachlan gets his phone number,
the Service Overview still shows John Doe but AD shows Sarah McLachlan.

## 🚨 Critical Issues Requiring Immediate Attention

### 🟡 Phone Assignment Issues (1 found)

These phone numbers are assigned to **EXPIRED users** in Service Overview, but the phones actually belong to **ACTIVE employees** in Active Directory:

| Phone Number | Service Overview User | Active Directory User | Problem |
|--------------|----------------------|----------------------|---------|
| 6142102328 | Jerry Joyeux | Jerry Joyeux | Service shows Expired but AD shows Enabled |

### 🔴 Users Who Should Be EXPIRED (588 found)

**💰 FINANCIAL IMPACT:** These are users NOT in Active Directory but we're still paying for their phone services.

| Phone Number | Service Overview User | Problem |
|--------------|----------------------|---------|
| 07001004001 | HOI-Husky Oil Operations Ltd | Service shows Active but phone not in AD |
| 07001044001 | Airdrie AB (Global payment) | Service shows Active but phone not in AD |
| 08000874001 | HOI-Husky Oil Operations Ltd. | Service shows Active but phone not in AD |
| 2509602563 | 00:90:8f:32:38:0e | Service shows Active but phone not in AD |
| 3068201207 | Heather Yuzik | Service shows Active but phone not in AD |
| 3068201233 | Jordan Kean | Service shows Active but phone not in AD |
| 3068201241 | Kishore Reddy Gali | Service shows Active but phone not in AD |
| 3068201273 | Jenny Li | Service shows Active but phone not in AD |
| 3068201274 | Rosemary Eileen Aldrich | Service shows Active but phone not in AD |
| 3068201283 | Guy Normand | Service shows Active but phone not in AD |
| 3068202466 | Teva Heide | Service shows Active but phone not in AD |
| 3068202491 | Tyler Long | Service shows Active but phone not in AD |
| 3068204017 | Rob Bell | Service shows Active but phone not in AD |
| 3068204040 | Daniel Wilson | Service shows Active but phone not in AD |
| 3068204052 | Tarrelle LaClare | Service shows Active but phone not in AD |
| 3068204333 | Ryan Novick | Service shows Active but phone not in AD |
| 3068204367 | Katherine Janisse | Service shows Active but phone not in AD |
| 3068204368 | Ben Saam | Service shows Active but phone not in AD |
| 3068204401 | Zachary Chorneyko | Service shows Active but phone not in AD |
| 3068208230 | Kristian Sawyshyn | Service shows Active but phone not in AD |
| 3068208245 | Remi Lacasse | Service shows Active but phone not in AD |
| 3068208277 | Winson Avara | Service shows Active but phone not in AD |
| 3068208280 | Michael Hill | Service shows Active but phone not in AD |
| 3068208307 | Scott Saunders | Service shows Active but phone not in AD |
| 3068208315 | Morgan Blakely | Service shows Active but phone not in AD |
| 3068208324 | Tanya Turcotte | Service shows Active but phone not in AD |
| 3068208346 | Peter Herle | Service shows Active but phone not in AD |
| 3068208347 | Chantelle Peat | Service shows Active but phone not in AD |
| 3068208369 | Sheena Mills | Service shows Active but phone not in AD |
| 3068208711 | Rory O'Brien | Service shows Active but phone not in AD |
| 3068208712 | Brittney Prosser | Service shows Active but phone not in AD |
| 3068208721 | Mohsin Mazhar | Service shows Active but phone not in AD |
| 3068208729 | Troy Salzl-Borzel | Service shows Active but phone not in AD |
| 3068208755 | Rylee Wallington | Service shows Active but phone not in AD |
| 3068208776 | Angela Lowe | Service shows Active but phone not in AD |
| 3068208849 | Brian Young | Service shows Active but phone not in AD |
| 3068251109 | Krista Arseneault | Service shows Active but phone not in AD |
| 3068251115 | Chad Stacey | Service shows Active but phone not in AD |
| 3068251141 | Guoxiong Xie | Service shows Active but phone not in AD |
| 3068251168 | Mahmoud Etemadi | Service shows Active but phone not in AD |
| 3068251218 | Lauren Jones | Service shows Active but phone not in AD |
| 3068251519 | Caitlyn Phillips | Service shows Active but phone not in AD |
| 3068251533 | Robin Skavberg | Service shows Active but phone not in AD |
| 3068251591 | Branden Stefanizyn | Service shows Active but phone not in AD |
| 3068251620 | Michael Thompson | Service shows Active but phone not in AD |
| 3068251695 | Kent Miller | Service shows Active but phone not in AD |
| 3068251774 | Ashley Richard | Service shows Active but phone not in AD |
| 3068251812 | Justin Novak | Service shows Active but phone not in AD |
| 3068251846 | Vaughn Oberst | Service shows Active but phone not in AD |
| 3068251922 | Tracey Molloy | Service shows Active but phone not in AD |
| 3068251999 | Christopher McQuid | Service shows Active but phone not in AD |
| 3068454468 | Michael Lalonde | Service shows Active but phone not in AD |
| 3069341500 | Available | Service shows Active but phone not in AD |
| 3069557901 | ROOM SKEMUL Breakout Room 416 | Service shows Active but phone not in AD |
| 3069557905 | User- Room Skemul- Boardroom 404 Standard | Service shows Active but phone not in AD |
| 3069557906 | CAP - Saskatoon Lab Office 103 | Service shows Active but phone not in AD |
| 3069557907 | Saskatoon lab | Service shows Active but phone not in AD |
| 3069557914 | CAP - Saskatoon Marketing | Service shows Active but phone not in AD |
| 3069557915 | CAP - SAS Conference Room 209 | Service shows Active but phone not in AD |
| 3069557920 | ANALOG - SAS Plant Ringer | Service shows Active but phone not in AD |
| 3069557923 | ROOM SKEMUL Breakout Room 415 | Service shows Active but phone not in AD |
| 3069557927 | Jeff Dick | Service shows Active but phone not in AD |
| 3069557930 | ROOM SKEMUL Telephone Room 423 | Service shows Active but phone not in AD |
| 3069557931 | ROOM SKEMUL Telephone Room 414 | Service shows Active but phone not in AD |
| 3069557933 | CAP - SAS ROOM SKEMUL Lobby Phone | Service shows Active but phone not in AD |
| 3069557939 | CAP - SAO Hotel Room 410 A | Service shows Active but phone not in AD |
| 3069557942 | Hotel | Service shows Active but phone not in AD |
| 3069557945 | Daniel Sparkes | Service shows Active but phone not in AD |
| 4032986000 | user | Service shows Active but phone not in AD |
| 4032986008 | Custom - Zeacom Technical Support | Service shows Active but phone not in AD |
| 4032986023 | Md Arshad Hossain | Service shows Active but phone not in AD |
| 4032986042 | Taryn Nickel | Service shows Active but phone not in AD |
| 4032986051 | Filip Jovanovic | Service shows Active but phone not in AD |
| 4032986060 | Coco Wang | Service shows Active but phone not in AD |
| 4032986063 | Celina Nelson | Service shows Active but phone not in AD |
| 4032986072 | Ethan Fisher | Service shows Active but phone not in AD |
| 4032986083 | Lauren Michaud | Service shows Active but phone not in AD |
| 4032986106 | Priyanshu Bhattacharya | Service shows Active but phone not in AD |
| 4032986111 | Getting Lot of Spam calls.-Not in use | Service shows Active but phone not in AD |
| 4032986113 | Ben cho | Service shows Active but phone not in AD |
| 4032986131 | T. Minh Nguy | Service shows Active but phone not in AD |
| 4032986136 | Joab Braganza | Service shows Active but phone not in AD |
| 4032986150 | withaq al shibani | Service shows Active but phone not in AD |
| 4032986162 | Rohit Gurung | Service shows Active but phone not in AD |
| 4032986173 | Waniya Khan | Service shows Active but phone not in AD |
| 4032986176 | Jameson Smith | Service shows Active but phone not in AD |
| 4032986179 | Jack Ferneyhough | Service shows Active but phone not in AD |
| 4032986190 | Fabian Wong | Service shows Active but phone not in AD |
| 4032986204 | Carmelita Panorel | Service shows Active but phone not in AD |
| 4032986205 | Jai Joon | Service shows Active but phone not in AD |
| 4032986207 | Kathleen Martin | Service shows Active but phone not in AD |
| 4032986218 | Shafiuddin Mohammed | Service shows Active but phone not in AD |
| 4032986271 | david sun | Service shows Active but phone not in AD |
| 4032986286 | Allyssa Guillermo | Service shows Active but phone not in AD |
| 4032986296 | Reem Asif | Service shows Active but phone not in AD |
| 4032986297 | Raihan Qurashi | Service shows Active but phone not in AD |
| 4032986315 | CAP - HSE - Room N3446 | Not in use | Service shows Active but phone not in AD |
| 4032986322 | AA - WCP-CommercialCustomerLine | Service shows Active but phone not in AD |
| 4032986335 | CAP - HSE - Room N3306 | Service shows Active but phone not in AD |
| 4032986336 | Elena Spinu | Service shows Active but phone not in AD |
| 4032986348 | Luka Cigler | Service shows Active but phone not in AD |
| 4032986359 | Raj Maan | Service shows Active but phone not in AD |
| 4032986367 | Vinh Tran | Service shows Active but phone not in AD |
| 4032986376 | Mounir Nasser | Service shows Active but phone not in AD |
| 4032986429 | Custom - E&PS - Logistics - Rig - Lloyd | Service shows Active but phone not in AD |
| 4032986442 | Christine Waiand | Service shows Active but phone not in AD |
| 4032986448 | Jason Xu | Service shows Active but phone not in AD |
| 4032986457 | Jesse.Sallis | Service shows Active but phone not in AD |
| 4032986468 | Jaime Albrecht | Service shows Active but phone not in AD |
| 4032986567 | ayush savani | Service shows Active but phone not in AD |
| 4032986604 | Devin Halko | Service shows Active but phone not in AD |
| 4032986623 | leu cheuk | Service shows Active but phone not in AD |
| 4032986632 | myrna nichole | Service shows Active but phone not in AD |
| 4032986658 | Custom - AA -NA-AB-CAL-4-DIGIT-WCP_Info_Line | Service shows Active but phone not in AD |
| 4032986659 | Sara Lakhram | Service shows Active but phone not in AD |
| 4032986671 | Custom - E&PS Logistics - Response Group | Service shows Active but phone not in AD |
| 4032986682 | Marie Sopko | Service shows Active but phone not in AD |
| 4032986694 | Garrett Novak | Service shows Active but phone not in AD |
| 4032986723 | Frank Zou | Service shows Active but phone not in AD |
| 4032986763 | Natalie Larson | Service shows Active but phone not in AD |
| 4032986771 | Michael Edmunds | Service shows Active but phone not in AD |
| 4032986778 | Andrew Dexter | Service shows Active but phone not in AD |
| 4032986795 | Charlotte Richardson | Service shows Active but phone not in AD |
| 4032986815 | Diane Kukulski | Service shows Active but phone not in AD |
| 4032986844 | Custom - E&PS Logistics - Rig Moves | Service shows Active but phone not in AD |
| 4032986849 | Alex.vanRemmen@cenovus.com | Service shows Active but phone not in AD |
| 4032986893 | Ryan McAndrews | Service shows Active but phone not in AD |
| 4032986941 | Amy Mochnacz | Service shows Active but phone not in AD |
| 4032986957 | Addison Casali | Service shows Active but phone not in AD |
| 4032986982 | Sudheesh Kumar M | Service shows Active but phone not in AD |
| 4032986998 | Manisha Kumanayaka | Service shows Active but phone not in AD |
| 4032987000 | Service desk number | Service shows Active but phone not in AD |
| 4032987100 | Custom - Zeacom Technical Support | Service shows Active but phone not in AD |
| 4032987109 | Custom - WCP_Service_Desk | Service shows Active but phone not in AD |
| 4032987186 | Brady Reiter | Service shows Active but phone not in AD |
| 4032987196 | CAP - Room HSE - N 810 | Service shows Active but phone not in AD |
| 4032987279 | Custom - E&PS - Logistics - Rig - NW AB and BC | Service shows Active but phone not in AD |
| 4032987281 | Custom - E&PS - Logistics - Drilling Rental | Service shows Active but phone not in AD |
| 4032987372 | Julian Lam | Service shows Active but phone not in AD |
| 4032987373 | Custom - Zeacom Technical Support | Service shows Active but phone not in AD |
| 4032987464 | Mailroom FAX | Service shows Active but phone not in AD |
| 4032987499 | Custom - Zeacom Emergency Technical Support | Service shows Active but phone not in AD |
| 4033700488 | RGS - Communications Officer | Service shows Active but phone not in AD |
| 4035137711 | WCP - Contract Labour Program Office | Service shows Active but phone not in AD |
| 4035137878 | Douglas Coon | Service shows Active but phone not in AD |
| 4037501453 | CAP - ROOM HSE - N 820 | Service shows Active but phone not in AD |
| 4037501698 | Kevin Campbell | Service shows Active but phone not in AD |
| 4037501865 | CAP - ROOM HSE - N 844 | Service shows Active but phone not in AD |
| 4037501876 | CAP - Room Hse - N 822 | Service shows Active but phone not in AD |
| 4037501938 | Mohammed Fakrul | Service shows Active but phone not in AD |
| 4037505069 | WCP -  CCCR Support Desk | Service shows Active but phone not in AD |
| 4037675269 | Nicholas Haley | Service shows Active but phone not in AD |
| 4037675499 | Christopher Crane | Service shows Active but phone not in AD |
| 4037769603 | Dublin | Service shows Active but phone not in AD |
| 4038013225 | CENOVUSENERGYINC | Service shows Active but phone not in AD |
| 4039100848 | Lima Fax - LimaHLC - Barry Fellows | Service shows Active but phone not in AD |
| 4039101875 | WCP_Ground_Disturbance_Damage_Prevention_Portal | Service shows Active but phone not in AD |
| 4039102912 | candice dhaliwal | Service shows Active but phone not in AD |
| 5872152119 | CENOVUSENERGYINC | Service shows Active but phone not in AD |
| 5872267747 | CENOVUSENERGYINC | Service shows Active but phone not in AD |
| 5872279375 | CENOVUSENERGYINC | Service shows Active but phone not in AD |
| 5872279387 | CENOVUSENERGYINC | Service shows Active but phone not in AD |
| 5876740279 | LRS - ROOMSRDOCVIDEO | Service shows Active but phone not in AD |
| 5876740300 | Group - Sunrise Support On-Call | Service shows Active but phone not in AD |
| 5876740301 | CAP - Sunrise OCC Field Ops 214J | Service shows Active but phone not in AD |
| 5876740308 | call forwarding - Mikhail Karpushin | Service shows Active but phone not in AD |
| 5876740310 | Sunrise Turnaround | Service shows Active but phone not in AD |
| 5876740314 | Call forwading for Nathan. Dont use it | Service shows Active but phone not in AD |
| 5876740317 | Collin Machtans | Service shows Active but phone not in AD |
| 5876740320 | Sunrise.ProcessCE | Service shows Active but phone not in AD |
| 5876740328 | Dean Hawkey | Service shows Active but phone not in AD |
| 5876740329 | Call forwarding - Greg Murphy | Service shows Active but phone not in AD |
| 5876740599 | Sunrise | Service shows Active but phone not in AD |
| 5876740601 | Sunrise | Service shows Active but phone not in AD |
| 5876740656 | CAP - Sunrise OCC Field Ops 201C | Service shows Active but phone not in AD |
| 5876740668 | Custom - LRS - Sunrise OCC 118 | Service shows Active but phone not in AD |
| 5876740686 | sunrise ware house | Service shows Active but phone not in AD |
| 5876740687 | Jeremy Glasgow | Service shows Active but phone not in AD |
| 5876740690 | CAP - Sunrise CPF 1B Steam Lab | Service shows Active but phone not in AD |
| 5876740696 | CAP - Sunrise CPF 1B Water Lab | Service shows Active but phone not in AD |
| 5876740697 | Custom - LRS - Sunrise OCC 202 | Service shows Active but phone not in AD |
| 5876740698 | Custom - LRS Sunrise MNT 205 | Service shows Active but phone not in AD |
| 5876740702 | CAP - Sunrise CPF 1B Process Lab | Service shows Active but phone not in AD |
| 5876740725 | Call forwarding - Amer Hafeez | Service shows Active but phone not in AD |
| 5876740740 | Room OTS Training - Skype Room System (Restricted) | Service shows Active but phone not in AD |
| 5876740745 | craig baier | Service shows Active but phone not in AD |
| 5876740746 | Available | Service shows Active but phone not in AD |
| 5876740747 | CAP - Sunrise HDR control room | Service shows Active but phone not in AD |
| 5876741005 | LRS - roomsroplaydown5 | Service shows Active but phone not in AD |
| 5876741007 | Stephanie Holinaty | Service shows Active but phone not in AD |
| 5876741009 | Available | Service shows Active but phone not in AD |
| 5876741015 | CAP - Sunrise OCC Field Ops 214H | Service shows Active but phone not in AD |
| 5876741021 | CAP - Sunrise OCC CPF 1A Panel | Service shows Active but phone not in AD |
| 5876741044 | sunrisesupport | Service shows Active but phone not in AD |
| 5876741101 | RGS - SUN - Sunrise Support | Service shows Active but phone not in AD |
| 5876741104 | CAP - Sunrise PoP | Service shows Active but phone not in AD |
| 5876741106 | Available | Service shows Active but phone not in AD |
| 5876741111 | Custom - Save for Switchboard | Service shows Active but phone not in AD |
| 5876741112 | CAP - Sunrise OCC Server Room | Service shows Active but phone not in AD |
| 5876741395 | custom - SunTenor2a | Service shows Active but phone not in AD |
| 5876741397 | custom - SunTenor2a | Service shows Active but phone not in AD |
| 5876741439 | CAP - Sunrise CPF 1A Steam Lab | Service shows Active but phone not in AD |
| 5876741757 | CAP - Sunrise CPF 1A Water Lab | Service shows Active but phone not in AD |
| 5876741765 | Available | Service shows Active but phone not in AD |
| 5876741769 | Available | Service shows Active but phone not in AD |
| 5876742130 | available | Service shows Active but phone not in AD |
| 5876742137 | available | Service shows Active but phone not in AD |
| 5876742138 | CAP - Sunrise Firehall | Service shows Active but phone not in AD |
| 5876742139 | available | Service shows Active but phone not in AD |
| 5876742144 | available | Service shows Active but phone not in AD |
| 5876742145 | available | Service shows Active but phone not in AD |
| 5876742149 | available | Service shows Active but phone not in AD |
| 5877430646 | CAP - RLO - CAP Test 1 | Service shows Active but phone not in AD |
| 5877430647 | Kyle Beaulieu | Service shows Active but phone not in AD |
| 5877430648 | Available | Service shows Active but phone not in AD |
| 5877430649 | Available | Service shows Active but phone not in AD |
| 5877430650 | ANALOG - RLO Analog Test | Service shows Active but phone not in AD |
| 5877733242 | Rainbow Lake District Office | Service shows Active but phone not in AD |
| 5877733717 | Saskatoon, Saskatchewan | Service shows Active but phone not in AD |
| 5877741363 | available | Service shows Active but phone not in AD |
| 5877741657 | Foothills@huskyenergy.com | Service shows Active but phone not in AD |
| 5877741663 | RainbowLake@huskyenergy.com | Service shows Active but phone not in AD |
| 5877741666 | NorthwestOperations@huskyenergy.com | Service shows Active but phone not in AD |
| 5877741667 | SoutheastOperations@huskyenergy.com | Service shows Active but phone not in AD |
| 5877741668 | GasReserve@huskyenergy.com | Service shows Active but phone not in AD |
| 5877741831 | pipelineconstruction@huskyenergy.com | Service shows Active but phone not in AD |
| 5877741832 | corporatefunctions@huskyenergy.com | Service shows Active but phone not in AD |
| 5877741833 | exploration@huskyenergy.com | Service shows Active but phone not in AD |
| 5877741835 | oilsands@huskyenergy.com | Service shows Active but phone not in AD |
| 5877742316 | eps@huskyenergy.com | Service shows Active but phone not in AD |
| 5877743062 | CPMProcurement@huskyenergy.com | Service shows Active but phone not in AD |
| 5877745725 | Sheri Heiduk | Service shows Active but phone not in AD |
| 5877745728 | Travis Rotariu | Service shows Active but phone not in AD |
| 5877745801 | SCADA Pipeline Lloyd Application Support | Service shows Active but phone not in AD |
| 5877745880 | HLR: Refinery Spare | Service shows Active but phone not in AD |
| 5877745924 | Corinne Paul | Service shows Active but phone not in AD |
| 5877745939 | Yongxin Wang | Service shows Active but phone not in AD |
| 5877747259 | Sherry Glover Temp | Service shows Active but phone not in AD |
| 5877749418 | Aminat Abiola | Service shows Active but phone not in AD |
| 5877749427 | Sarah feschu | Service shows Active but phone not in AD |
| 5877749442 | yiyang DU | Service shows Active but phone not in AD |
| 5877749479 | Robyn Watkins | Service shows Active but phone not in AD |
| 5877749500 | Custom - Response Group - OnCall Forwarding | Service shows Active but phone not in AD |
| 5877749511 | WCP - Commander On-Call | Service shows Active but phone not in AD |
| 5877792614 | CAP - HSE - A&D Workroom N3606- not in use | Service shows Active but phone not in AD |
| 5877793661 | Stuart Harkness | Service shows Active but phone not in AD |
| 5877793670 | Sanmoy Maity | Service shows Active but phone not in AD |
| 5877863640 | Edson Office | Service shows Active but phone not in AD |
| 5877890625 | HLR: Contractor Building Fax | Service shows Active but phone not in AD |
| 5877890637 | HLR: MPB Fax Room 209 | Service shows Active but phone not in AD |
| 5877890639 | Paradise Hill | Service shows Active but phone not in AD |
| 5877890642 | Lloydminster: Spare | Service shows Active but phone not in AD |
| 5877890704 | HLR: MPB Fax Scalehouse | Service shows Active but phone not in AD |
| 5877890707 | Sandall Thermal | Service shows Active but phone not in AD |
| 5877890829 | HOGConstruction@huskyenergy.com | Service shows Active but phone not in AD |
| 5877890830 | Downstreamtickets@huskyenergy.com | Service shows Active but phone not in AD |
| 5877890891 | Available | Service shows Active but phone not in AD |
| 5877890892 | Available | Service shows Active but phone not in AD |
| 5877890893 | Available | Service shows Active but phone not in AD |
| 5877890894 | Available | Service shows Active but phone not in AD |
| 5877890895 | Available | Service shows Active but phone not in AD |
| 5877890896 | Available | Service shows Active but phone not in AD |
| 5877890897 | Testing -fax | Service shows Active but phone not in AD |
| 5877890954 | CAP - OCC Mailroom | Service shows Active but phone not in AD |
| 5877891070 | Lloydminster Refinery | Service shows Active but phone not in AD |
| 5877892726 | Lloyd Refinery-Cisco UC SIP trunk | Service shows Active but phone not in AD |
| 5877910755 | Hardisty | Service shows Active but phone not in AD |
| 5877911108 | CAP - Wainwright Terminal Conference Room | Service shows Active but phone not in AD |
| 5877943594 | Cochrane | Service shows Active but phone not in AD |
| 5877944878 | Sunrise | Service shows Active but phone not in AD |
| 5879434699 | SIP trunk (Enghouse) | Service shows Active but phone not in AD |
| 5879437184 | Retail Helpdesk-Test | Service shows Active but phone not in AD |
| 5879437185 | Retail Helpdesk-Test | Service shows Active but phone not in AD |
| 5879993524 | Hugh Bradley | Service shows Active but phone not in AD |
| 6142102302 | CAP - Dublin - Room 247 | Service shows Active but phone not in AD |
| 6142102319 | Custom - Do not use - Rick Walters old number | Service shows Active but phone not in AD |
| 6142102322 | CAP - ROOM COL - 203 | Service shows Active but phone not in AD |
| 6142102324 | ROOM Dublin - 205 Standard | Service shows Active but phone not in AD |
| 6142102334 | CAP - Dublin - Room 248 | Service shows Active but phone not in AD |
| 6147631128 | Available | Service shows Active but phone not in AD |
| 6147631585 | CAP - Dublin - Room 109 | Service shows Active but phone not in AD |
| 6147631586 | CAP - Dublin - Room 113 | Service shows Active but phone not in AD |
| 6147665634 | CFW - 6148896361 | Service shows Active but phone not in AD |
| 6149560767 | Available | Service shows Active but phone not in AD |
| 6149560771 | Available | Service shows Active but phone not in AD |
| 6149560774 | Seamus Gibbons | Service shows Active but phone not in AD |
| 7097243917 | STJPROCUREMENT | Service shows Active but phone not in AD |
| 7097244016 | STJDCC | Service shows Active but phone not in AD |
| 7097244017 | STJ4ADM | Service shows Active but phone not in AD |
| 7097246505 | STJ5DEV | Service shows Active but phone not in AD |
| 7098002722 | glenn.cribb@huskyenergy.com | Service shows Active but phone not in AD |
| 7786932538 | fax_pgr_mainoffice@huskyenergy.com | Service shows Active but phone not in AD |
| 7805942554 | Robert Osborne | Service shows Active but phone not in AD |
| 7805987422 | Sunrise Emergency | Service shows Active but phone not in AD |
| 7807233532 | Jian Huang | Service shows Active but phone not in AD |
| 7807234317 | Auto Attendant - Edson | Service shows Active but phone not in AD |
| 7807236136 | Auto Attendant - Peco | Service shows Active but phone not in AD |
| 7807254921 | CAP - Peco Control Room | Service shows Active but phone not in AD |
| 7807254922 | CAP - Wolf Ops. Control Room | Service shows Active but phone not in AD |
| 7807254924 | Clayton Ulrich | Service shows Active but phone not in AD |
| 7807254928 | CAP - Edson IOC | Service shows Active but phone not in AD |
| 7807254929 | CAP - Peco Conference Room | Service shows Active but phone not in AD |
| 7807254934 | CAP - Edson Work Station | Service shows Active but phone not in AD |
| 7807254936 | CAP - Peco Conference Room | Service shows Active but phone not in AD |
| 7807254937 | CAP - Peco Lunch Room | Service shows Active but phone not in AD |
| 7807254940 | CAP - Edson Operator's Office | Service shows Active but phone not in AD |
| 7807254942 | CAP - Edson Hotel Station | Service shows Active but phone not in AD |
| 7807254950 | CAP - Edson Hotel Station-206A | Service shows Active but phone not in AD |
| 7807254951 | CAP - Edson Hotel Station-206C | Service shows Active but phone not in AD |
| 7807254953 | CAP - Edson Hotel Station | Service shows Active but phone not in AD |
| 7807254955 | CAP - Wolf Conference Phone | Service shows Active but phone not in AD |
| 7807254958 | CAP - Alder Flats Plant Maintenance | Service shows Active but phone not in AD |
| 7807254959 | CAP - Alder Flats Plant Conference Phone | Service shows Active but phone not in AD |
| 7807254969 | CAP - Edson Hotel Station-201B | Service shows Active but phone not in AD |
| 7807254970 | CAP - Edson Hotel Station-313 | Service shows Active but phone not in AD |
| 7807254974 | CAP - Sand Creek Meeting Room | Service shows Active but phone not in AD |
| 7807254975 | CAP - Edson Control Room 1 | Service shows Active but phone not in AD |
| 7807254976 | CAP - Edson Control Room 2 | Service shows Active but phone not in AD |
| 7807254978 | CAP - Edson Hotel Station | Service shows Active but phone not in AD |
| 7807254985 | CAP - Berland Op Station By Back Door | Service shows Active but phone not in AD |
| 7807254986 | CAP - Berland Bigstone Main Office | Service shows Active but phone not in AD |
| 7807255003 | Yunji Jiang | Service shows Active but phone not in AD |
| 7807255009 | Available | Service shows Active but phone not in AD |
| 7807255010 | Available | Service shows Active but phone not in AD |
| 7807255015 | CAP - Edson Meeting Room 108 | Service shows Active but phone not in AD |
| 7807255016 | Available | Service shows Active but phone not in AD |
| 7807255017 | CAP - Edson Meeting Room 123 | Service shows Active but phone not in AD |
| 7807255020 | Available | Service shows Active but phone not in AD |
| 7807255021 | Available | Service shows Active but phone not in AD |
| 7807255024 | Available | Service shows Active but phone not in AD |
| 7807255026 | Available | Service shows Active but phone not in AD |
| 7807255032 | Available | Service shows Active but phone not in AD |
| 7807255033 | Available | Service shows Active but phone not in AD |
| 7807255036 | Available | Service shows Active but phone not in AD |
| 7807255038 | CAP - Edson Room 201B | Service shows Active but phone not in AD |
| 7807255039 | CAP - Edson Room 201C | Service shows Active but phone not in AD |
| 7807255040 | CAP - Edson Room 204A | Service shows Active but phone not in AD |
| 7807255041 | Available | Service shows Active but phone not in AD |
| 7807255044 | Dan Zhao | Service shows Active but phone not in AD |
| 7807255045 | CAP - Corser Conference Room | Service shows Active but phone not in AD |
| 7807255047 | CAP - Galloway Plant | Service shows Active but phone not in AD |
| 7807255048 | CAP - Ansell Conference Room | Service shows Active but phone not in AD |
| 7807255049 | Marc Meunier | Service shows Active but phone not in AD |
| 7807255050 | available | Service shows Active but phone not in AD |
| 7807255051 | available | Service shows Active but phone not in AD |
| 7807255052 | Available | Service shows Active but phone not in AD |
| 7807255055 | Available | Service shows Active but phone not in AD |
| 7807255056 | Available | Service shows Active but phone not in AD |
| 7807255058 | Available | Service shows Active but phone not in AD |
| 7807255061 | Available | Service shows Active but phone not in AD |
| 7807255062 | available | Service shows Active but phone not in AD |
| 7807255063 | Available | Service shows Active but phone not in AD |
| 7807255064 | Available | Service shows Active but phone not in AD |
| 7807255065 | Available | Service shows Active but phone not in AD |
| 7807255066 | Available | Service shows Active but phone not in AD |
| 7807255068 | Available | Service shows Active but phone not in AD |
| 7807255069 | Available | Service shows Active but phone not in AD |
| 7807255073 | Available | Service shows Active but phone not in AD |
| 7807255074 | Available | Service shows Active but phone not in AD |
| 7807490080 | CAP - Sunrise OCC Field Ops 214I | Service shows Active but phone not in AD |
| 7807490083 | CAP - Sunrise Wellpad A | Service shows Active but phone not in AD |
| 7807490084 | CAP - Sunrise Wellpad B | Service shows Active but phone not in AD |
| 7807490086 | CAP - Sunrise Wellpad C | Service shows Active but phone not in AD |
| 7807490405 | Call forwarding - Amy Zhang | Service shows Active but phone not in AD |
| 7807490407 | Available | Service shows Active but phone not in AD |
| 7807490411 | Available | Service shows Active but phone not in AD |
| 7807490412 | CAP - Sunrise Aspen EOC Room | Service shows Active but phone not in AD |
| 7807490413 | Available | Service shows Active but phone not in AD |
| 7807490414 | CAP - Sunrise Wellpad D | Service shows Active but phone not in AD |
| 7807490415 | CAP - Sunrise Wellpad E | Service shows Active but phone not in AD |
| 7807490416 | Available | Service shows Active but phone not in AD |
| 7807490424 | CAP - Sunrise Wellpad F | Service shows Active but phone not in AD |
| 7807490429 | CAP - Sunrise Wellpad G | Service shows Active but phone not in AD |
| 7807490437 | LRS - ROOMSUNRISEOCCTUNDRA | Service shows Active but phone not in AD |
| 7807490438 | CAP - Sunrise Wellpad H | Service shows Active but phone not in AD |
| 7807490443 | Available | Service shows Active but phone not in AD |
| 7807490444 | CAP - Sunrise CPF 1A Process Lab | Service shows Active but phone not in AD |
| 7807490465 | Available | Service shows Active but phone not in AD |
| 7807490480 | Sunrise | Service shows Active but phone not in AD |
| 7807490481 | Available | Service shows Active but phone not in AD |
| 7807490482 | Sunrise Maintenance Infrastructure | Service shows Active but phone not in AD |
| 7807490493 | Oilsands HS Advisor | Service shows Active but phone not in AD |
| 7807490499 | Lonnie - Test number for Teams | Service shows Active but phone not in AD |
| 7807493306 | Available | Service shows Active but phone not in AD |
| 7807493307 | CAP - Sunrise Wellpad N | Service shows Active but phone not in AD |
| 7807493311 | Available | Service shows Active but phone not in AD |
| 7807493325 | CAP - Sunrise Logistics and Surface Development | Service shows Active but phone not in AD |
| 7807493329 | Available | Service shows Active but phone not in AD |
| 7807493330 | Available | Service shows Active but phone not in AD |
| 7807493333 | CAP - SWS EMERGENCY | Service shows Active but phone not in AD |
| 7807493334 | Available | Service shows Active but phone not in AD |
| 7807493338 | CAP - SWS CONFERENCE1 | Service shows Active but phone not in AD |
| 7807493339 | Available | Service shows Active but phone not in AD |
| 7807493342 | Andrew Fowler | Service shows Active but phone not in AD |
| 7807493343 | Available | Service shows Active but phone not in AD |
| 7807493344 | RGS - Sunrise Medical Centre | Service shows Active but phone not in AD |
| 7807493345 | CAP - TREATMENT PHONE1 | Service shows Active but phone not in AD |
| 7807493346 | Available | Service shows Active but phone not in AD |
| 7807493347 | Available | Service shows Active but phone not in AD |
| 7807493350 | RGS - SUN - Sunrise Security Lead | Service shows Active but phone not in AD |
| 7807493351 | Available | Service shows Active but phone not in AD |
| 7807493353 | RGS - Sunrise Emergency Services Captain | Service shows Active but phone not in AD |
| 7807493354 | Available | Service shows Active but phone not in AD |
| 7807493356 | Available | Service shows Active but phone not in AD |
| 7807493357 | Available | Service shows Active but phone not in AD |
| 7807493358 | Available | Service shows Active but phone not in AD |
| 7807493360 | CAP - Sunrise Main Lab | Service shows Active but phone not in AD |
| 7807493361 | CAP - Sunrise Wolf's Den | Service shows Active but phone not in AD |
| 7807493366 | Matthew Nelson | Service shows Active but phone not in AD |
| 7807493367 | Available | Service shows Active but phone not in AD |
| 7807493369 | Caitlyn Phillips | Service shows Active but phone not in AD |
| 7807493372 | available | Service shows Active but phone not in AD |
| 7807493373 | Available | Service shows Active but phone not in AD |
| 7807493378 | Available | Service shows Active but phone not in AD |
| 7807493379 | Available | Service shows Active but phone not in AD |
| 7807493383 | Reginald Scott Sooley | Service shows Active but phone not in AD |
| 7807493384 | Available | Service shows Active but phone not in AD |
| 7807493390 | CAP - Sunrise Command Centre B | Service shows Active but phone not in AD |
| 7807493391 | Ryan Monaco | Service shows Active but phone not in AD |
| 7807493392 | Available | Service shows Active but phone not in AD |
| 7807493394 | available | Service shows Active but phone not in AD |
| 7807493396 | Kevin Shearer | Service shows Active but phone not in AD |
| 7807953750 | Jillian Rathje | Service shows Active but phone not in AD |
| 7808303165 | Trista Ullock | Service shows Active but phone not in AD |
| 7808424515 | Available | Service shows Active but phone not in AD |
| 7808651714 | Shawn Fraser | Service shows Active but phone not in AD |
| 7808716504 | ANALOG - HLR MCC4 | Service shows Active but phone not in AD |
| 7808716508 | HOG Idle Equipment | Service shows Active but phone not in AD |
| 7808716518 | ProductionWarehouse109 | Service shows Active but phone not in AD |
| 7808716520 | CAP - HLR Test | Service shows Active but phone not in AD |
| 7808716521 | ANALOG - HLR Gate PL01 | Service shows Active but phone not in AD |
| 7808716523 | ANALOG - HLR Steam Plant Bell | Service shows Active but phone not in AD |
| 7808716524 | Eric Wallace | Service shows Active but phone not in AD |
| 7808716527 | ANALOG - HLR Conference Room 222 | Service shows Active but phone not in AD |
| 7808716531 | Ref Maint Fax Rm 2B | Service shows Active but phone not in AD |
| 7808716532 | AbdiRahman Keinan | Service shows Active but phone not in AD |
| 7808716535 | CAP - HLR OCC IS Tech RM 261 | Service shows Active but phone not in AD |
| 7808716536 | Shawn Malinowski | Service shows Active but phone not in AD |
| 7808716540 | Derek Kopyshenski | Service shows Active but phone not in AD |
| 7808716541 | LloydRef Administration | Service shows Active but phone not in AD |
| 7808716545 | CAP - HLR OCC IS Storage RM 262 | Service shows Active but phone not in AD |
| 7808716550 | CAP - HLR OCC Instrument Lab | Service shows Active but phone not in AD |
| 7808716562 | ANALOG - HLR Conference Room xxx | Service shows Active but phone not in AD |
| 7808716563 | OCC Fax Rm230 | Service shows Active but phone not in AD |
| 7808716566 | HLR scalehouse2 | Service shows Active but phone not in AD |
| 7808716567 | ANALOG - HLR ERP Room 137 | Service shows Active but phone not in AD |
| 7808716576 | ROOM HLR ACC CONFERENCE ROOM | Service shows Active but phone not in AD |
| 7808716577 | Derek Crites | Service shows Active but phone not in AD |
| 7808716581 | ANALOG - HLR Butane Gate | Service shows Active but phone not in AD |
| 7808716588 | NGL Fax | Service shows Active but phone not in AD |
| 7808716590 | HLR meterprover | Service shows Active but phone not in AD |
| 7808716593 | Chad Wood | Service shows Active but phone not in AD |
| 7808716597 | CAP - HLR Pipeline Maintenance Shop Room 201 | Service shows Active but phone not in AD |
| 7808716600 | ANALOG - HLR OCC Lobby | Service shows Active but phone not in AD |
| 7808716604 | Midstream Control Room extra line | Service shows Active but phone not in AD |
| 7808716606 | ANALOG - HLR OCC261 Modem | Service shows Active but phone not in AD |
| 7808716608 | ANALOG - HLR ProdWhse Lunchroom | Service shows Active but phone not in AD |
| 7808716610 | Ref Maint Fax Rm 8B | Service shows Active but phone not in AD |
| 7808716611 | ACC Fax Rm 122 | Service shows Active but phone not in AD |
| 7808716616 | HLR occhealth | Service shows Active but phone not in AD |
| 7808716617 | CAP - HLR ACC Lunch Room 102 | Service shows Active but phone not in AD |
| 7808716618 | ANALOG - HLR OCC Protalk | Service shows Active but phone not in AD |
| 7808716623 | SRS - ROOM HLR COB MEETING ROOM | Service shows Active but phone not in AD |
| 7808716624 | ANALOG - HLR Modem ACC | Service shows Active but phone not in AD |
| 7808716625 | OCC Fax Rm 138 | Service shows Active but phone not in AD |
| 7808716628 | ANALOG - HLR ACC Conference Room 111 | Service shows Active but phone not in AD |
| 7808716631 | LRS - ROOMOCC-137 | Service shows Active but phone not in AD |
| 7808716634 | ANALOG - HLR Gate A10 | Service shows Active but phone not in AD |
| 7808716636 | ANALOG - HLR Conference Room 140 | Service shows Active but phone not in AD |
| 7808716637 | OCC Fax Rm 233 | Service shows Active but phone not in AD |
| 7808716638 | ANALOG - HLR Pipeline Shop | Service shows Active but phone not in AD |
| 7808716640 | Prod Whse Fax Rm 104B | Service shows Active but phone not in AD |
| 7808716643 | Midstream simulator Room | Service shows Active but phone not in AD |
| 7808716644 | ANALOG - HLR Refinery Control Room4 | Service shows Active but phone not in AD |
| 7808716648 | ANALOG - HLR Analytical Lab | Service shows Active but phone not in AD |
| 7808716649 | P/L Mtce Fax Rm 205 | Service shows Active but phone not in AD |
| 7808716653 | HLR productionwhse | Service shows Active but phone not in AD |
| 7808716654 | CAP - HLR Delta V OCC Room 133 | Service shows Active but phone not in AD |
| 7808716656 | Jason Malanowich | Service shows Active but phone not in AD |
| 7808716658 | Midstream testing lab | Service shows Active but phone not in AD |
| 7808716660 | NGL Office Trailer | Service shows Active but phone not in AD |
| 7808716661 | Matthew Dolsen | Service shows Active but phone not in AD |
| 7808716662 | ANALOG - HLR OCC261A Modem | Service shows Active but phone not in AD |
| 7808716663 | ANALOG - HLR Scale HS Modem | Service shows Active but phone not in AD |
| 7808716664 | ANALOG - HLR Fire Alarm Dialer | Service shows Active but phone not in AD |
| 7808716665 | ANALOG - HLR OCC261B Modem | Service shows Active but phone not in AD |
| 7808716666 | HLR Butane Gate | Service shows Active but phone not in AD |
| 7808716670 | RGS - HLR Midstream Maintenance | Service shows Active but phone not in AD |
| 7808716673 | ANALOG - HLR OCC Elevator Phone | Service shows Active but phone not in AD |
| 7808716677 | ANALOG - HLR Prod Auction Modem | Service shows Active but phone not in AD |
| 7808716680 | CAP - HLR OCC Room 140 | Service shows Active but phone not in AD |
| 7808716681 | Available | Service shows Active but phone not in AD |
| 7808716682 | CAP - HLR OCC Room 222 | Service shows Active but phone not in AD |
| 7808716683 | Available | Service shows Active but phone not in AD |
| 7808716684 | ANALOG - HLR Gate A1 | Service shows Active but phone not in AD |
| 7808716688 | Cindy Rowley | Service shows Active but phone not in AD |
| 7808716689 | Available | Service shows Active but phone not in AD |
| 7808716690 | CAP - HLR refinerycontrol4 | Service shows Active but phone not in AD |
| 7808716691 | Available | Service shows Active but phone not in AD |
| 7808716692 | Available | Service shows Active but phone not in AD |
| 7808716693 | ANALOG - HLR Refinery SE Gate | Service shows Active but phone not in AD |
| 7808716694 | CAP - HLR OCC Server Room 203 | Service shows Active but phone not in AD |
| 7808743301 | CAP - HLR Firehall | Service shows Active but phone not in AD |
| 7808743303 | Available | Service shows Active but phone not in AD |
| 7808743306 | Luke Baron | Service shows Active but phone not in AD |
| 7808743308 | test sip registrar | Service shows Active but phone not in AD |
| 7808743309 | CAP - HLR MPB Conference Room 201 | Service shows Active but phone not in AD |
| 7808743311 | LRS - ROOMOCC-140 | Service shows Active but phone not in AD |
| 7808743312 | Available | Service shows Active but phone not in AD |
| 7808743313 | Available | Service shows Active but phone not in AD |
| 7808743314 | Available | Service shows Active but phone not in AD |
| 7808743315 | Prod Whse Fax Rm 113 | Service shows Active but phone not in AD |
| 7808743316 | Available | Service shows Active but phone not in AD |
| 7808743317 | Tracy Wiltermuth | Service shows Active but phone not in AD |
| 7808743321 | Available | Service shows Active but phone not in AD |
| 7808743322 | Travis Berg | Service shows Active but phone not in AD |
| 7808743324 | Chanel E. Munro | Service shows Active but phone not in AD |
| 7808743326 | Available | Service shows Active but phone not in AD |
| 7808743329 | Ref Control Rm | Service shows Active but phone not in AD |
| 7808743331 | HLR Instrumentation testing | Service shows Active but phone not in AD |
| 7808743332 | Thomas Edwards | Service shows Active but phone not in AD |
| 7808743333 | Available | Service shows Active but phone not in AD |
| 7808743334 | Available | Service shows Active but phone not in AD |
| 7808743335 | Available | Service shows Active but phone not in AD |
| 7808743337 | Available | Service shows Active but phone not in AD |
| 7808743338 | Available | Service shows Active but phone not in AD |
| 7808743339 | Available | Service shows Active but phone not in AD |
| 7808743340 | CAP - HLR - Pre Job Conference Room | Service shows Active but phone not in AD |
| 7808743343 | Kelly Scott | Service shows Active but phone not in AD |
| 7808743344 | Available | Service shows Active but phone not in AD |
| 7808743346 | Available | Service shows Active but phone not in AD |
| 7808743347 | Available | Service shows Active but phone not in AD |
| 7808743349 | Available | Service shows Active but phone not in AD |
| 7808743350 | Available | Service shows Active but phone not in AD |
| 7808743352 | Available | Service shows Active but phone not in AD |
| 7808743355 | Available | Service shows Active but phone not in AD |
| 7808743356 | Available | Service shows Active but phone not in AD |
| 7808743357 | Available | Service shows Active but phone not in AD |
| 7808743358 | Available | Service shows Active but phone not in AD |
| 7808743359 | Available | Service shows Active but phone not in AD |
| 7808743361 | Available | Service shows Active but phone not in AD |
| 7808743362 | Available | Service shows Active but phone not in AD |
| 7808883025 | Douglas Simpson | Service shows Active but phone not in AD |
| 7808883026 | Available | Service shows Active but phone not in AD |
| 7808883027 | CAP - Hardisty MCC1 Data Room | Service shows Active but phone not in AD |
| 7808883028 | Jason Nozdryn | Service shows Active but phone not in AD |
| 7808883030 | Hardisty Construction1 | Service shows Active but phone not in AD |
| 7808883031 | Hardisty Construction2 | Service shows Active but phone not in AD |
| 7808883034 | Junbin Huang | Service shows Active but phone not in AD |
| 7808883038 | ANALOG - Hardisty North Gate | Service shows Active but phone not in AD |
| 7808883039 | CAP - Hardisty Conference Room | Service shows Active but phone not in AD |
| 7809568002 | Available | Service shows Active but phone not in AD |
| 7809568020 | Lonnie - Test number for Teams | Service shows Active but phone not in AD |
| 7809568056 | Available | Service shows Active but phone not in AD |
| 7809568071 | Lonnie Nielson | Service shows Active but phone not in AD |
| 7809568072 | ANALOG - RLO Postage Meter | Service shows Active but phone not in AD |
| 7809568075 | Available | Service shows Active but phone not in AD |
| 7809568078 | Rainbow lake warehouse | Service shows Active but phone not in AD |
| 7809568088 | Fax ATA | Service shows Active but phone not in AD |
| 7809568095 | CAP - RBL Housing | Service shows Active but phone not in AD |
| 7809568702 | Daniel Ayee | Service shows Active but phone not in AD |
| 7809568711 | 00908F3D6F02 | Service shows Active but phone not in AD |
| 7809568728 | CAP - RBLPlantElectricians | Service shows Active but phone not in AD |
| 7809568729 | CAP - RLO - Meeting Room 101 | Service shows Active but phone not in AD |
| 7809568731 | CAP - RLO - Telephone Room 104 | Service shows Active but phone not in AD |
| 7809568738 | CAP - RLO - Telephone Room 124 | Service shows Active but phone not in AD |
| 7809568740 | CAP - RLO - Breakout Room 109 | Service shows Active but phone not in AD |
| 7809568759 | CAP - RLO - Breakout Room 131 | Service shows Active but phone not in AD |
| 7809568761 | Available | Service shows Active but phone not in AD |
| 7809568763 | Available | Service shows Active but phone not in AD |
| 7809568764 | Available | Service shows Active but phone not in AD |
| 7809568773 | RBL Housing Emergency | Service shows Active but phone not in AD |
| 7809568783 | Available | Service shows Active but phone not in AD |
| 7809568785 | Available | Service shows Active but phone not in AD |
| 7809568788 | Available | Service shows Active but phone not in AD |
| 7809568789 | Available | Service shows Active but phone not in AD |
| 8254170435 | Test SIP trunk (Enghouse | Service shows Active but phone not in AD |
| 8552204792 | Custom - CLPO Calgary | Service shows Active but phone not in AD |
| 8552325828 | Brittany Firth | Service shows Active but phone not in AD |
| 8553464737 | Custom- WCP-ISDisasterRecoveryMGT-not in use | Service shows Active but phone not in AD |
| 8554014640 | Custom - Yorkton Plant | Service shows Active but phone not in AD |
| 8554014642 | Custom - Yorkton Ringer | Service shows Active but phone not in AD |
| 8555275001 | Custom - Office 365 CAL Subscriber access number | Service shows Active but phone not in AD |
| 8555275004 | Custom - Exchange UM - HPL2 | Service shows Active but phone not in AD |
| 8776974480 | Response Group for Miguel | Service shows Active but phone not in AD |
| 8777349910 | Response group  - DUB- HMSC-Credit | Service shows Active but phone not in AD |
| 00001 | HOI-Husky Oil Operations Ltd | Service shows Active but phone not in AD |
| 222872 | Husky MTS NNI L3 | Service shows Active but phone not in AD |

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

2. **Review 588 users marked as active**
   - Cross-reference with UserManagement.csv for verification
   - Check for phone number reassignments
   - Identify service accounts vs actual users

3. **Clean up 1501 duplicate records**
   - Remove duplicate entries from People database
   - Ensure processor doesn't create new duplicates

## 🚀 Strategic Recommendations

### 💰 Cost Optimization (High Priority)
1. **Audit Expired Services** - Review 588 services marked as active but not in AD
   - Potential monthly savings by cancelling unused services
   - Identify service accounts vs former employees
   - Implement automated service termination for departed staff

2. **Phone Number Management** - Address 57 user mismatches
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
