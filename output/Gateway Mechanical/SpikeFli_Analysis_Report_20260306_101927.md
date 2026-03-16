# SpikeFli Data Analysis Report

**Generated:** March 06, 2026 at 10:19 AM

---

## 🎯 Key Metrics Summary

### 📱 Phone Number Analysis (278 phones analyzed)

| Metric | Count | Percentage | Status |
|--------|-------|------------|--------|
| **Users Match Correctly** | **278** | **100.0%** | ✅ Good |
| **User Mismatches** | **0** | **0.0%** | 🚨 Needs Fix |
| Status Consistency | 278 | 100.0% | ✅ Good |

**🔍 What User Mismatches Mean:**
When a phone number shows **different users** in Service Overview vs Active Directory:
- Service Overview: `John Smith` has phone `555-1234`
- Active Directory: `Sarah Johnson` has phone `555-1234`
- **Root Cause:** Phone was reassigned but Service Overview wasn't updated
- **Impact:** Billing/services assigned to wrong person
- **Solution:** Update Service Overview to match Active Directory

### 🚨 Critical Status Issues (34 total)

| Issue Type | Count | Impact | Priority |
|------------|-------|--------|----------|
| Phone Assignment Issues | 1 | Active employees can't access their phones | 🔴 High |
| **Should be EXPIRED** | **33** | **Paying for unused services** | **🔴 Critical** |
| Correctly EXPIRED | 0 | No action needed | ✅ Good |

**🔍 What These Issues Mean:**
- **Should be EXPIRED:** Users left company but we're still paying for their phone service
- **Phone Assignment Issues:** Phone numbers assigned to wrong users (active employees can't access their phones)

## 🗂️ Active Directory Analysis

| Metric | Count | Percentage |
|--------|-------|------------|
| Total Users | 335 | 100% |
| **Enabled Users** | **335** | **100.0%** |
| Disabled Users | 0 | 0.0% |
| Users with Mobile | 290 | 86.6% |
| Users with Phone | 25 | 7.5% |

## 👥 User Management System Analysis

| Metric | Count | Percentage |
|--------|-------|------------|
| Total User Records | 470 | 100% |
| **Active Users** | **316** | **67.2%** |
| Expired Users | 131 | 27.9% |
| AD-Sourced Records | 469 | 99.8% |
| Other Sources | 1 | 0.2% |

## 🗃️ People Database Analysis

| Metric | Count | Percentage |
|--------|-------|------------|
| Total AD Records | 469 | 100% |
| **Active Records** | **316** | **67.4%** |
| Expired Records | 130 | 27.7% |
| Duplicate Records | 2 | - |

⚠️ **WARNING: 2 duplicate records found in People database**

## 📋 Service Overview Analysis

| Metric | Count |
|--------|-------|
| Total Entries with Users | 367 |
| Active Entries | 311 |
| Expired Entries | 57 |

## 📞 Phone Number Cross-Reference Analysis (278 phones matched)

**THIS IS THE CORE ANALYSIS:** Shows how phone numbers match between Service Overview and Active Directory:

| Phone Number | Service Overview User | AD User | Users Match | Status Consistent |
|--------------|----------------------|---------|-------------|-------------------|
| 2042180150 | Shawn Schaffer | Shawn Schaffer | ✅ YES | ✅ YES |
| 2042180610 | Beau Bezdek | Beau Bezdek | ✅ YES | ✅ YES |
| 2043301850 | Justin Czarnecki | Justin Czarnecki | ✅ YES | ✅ YES |
| 2043301877 | Dylan Cassie | Dylan Cassie | ✅ YES | ❌ NO |
| 2043338747 | Julia Bartlett | Julia Bartlett | ✅ YES | ✅ YES |
| 2043965446 | Curtis Trudeau | Curtis Trudeau | ✅ YES | ✅ YES |
| 2044020032 | Keri Van De Mosselaer | Keri Van De Mosselaer | ✅ YES | ✅ YES |
| 2044020072 | Drake Watson | Drake Watson | ✅ YES | ✅ YES |
| 2044020558 | Benedict Reginald | Benedict Reginald | ✅ YES | ✅ YES |
| 2044020667 | Taylor Hogan | Taylor Hogan | ✅ YES | ✅ YES |
| 2044410271 | Marc Olsen | Marc Olsen | ✅ YES | ✅ YES |
| 2044410461 | Brandon Olsen | Brandon Olsen | ✅ YES | ✅ YES |
| 2044412195 | Alfie Viray | Alfie Viray | ✅ YES | ✅ YES |
| 2044412894 | Ian Brown | Ian Brown | ✅ YES | ✅ YES |
| 2044413279 | Justin Smith | Justin Smith | ✅ YES | ✅ YES |
| 2044413345 | Blake Marcin | Blake Marcin | ✅ YES | ✅ YES |
| 2044415904 | Nathan Hillis | Nathan Hillis | ✅ YES | ✅ YES |
| 2044419818 | Dawson Sobry | Dawson Sobry | ✅ YES | ✅ YES |
| 2044419924 | Dan Mathison | Dan Mathison | ✅ YES | ✅ YES |
| 2044419950 | Jeremy Slack | Jeremy Slack | ✅ YES | ✅ YES |
| 2044419962 | Mitch Eastman | Mitch Eastman | ✅ YES | ✅ YES |
| 2044419963 | Marty Zdan | Marty Zdan | ✅ YES | ✅ YES |
| 2045580739 | Tannis Yanchycki | Tannis Yanchycki | ✅ YES | ✅ YES |
| 2047204780 | Jon-Paul Dexter | Jon-Paul Dexter | ✅ YES | ✅ YES |
| 2047949150 | Eric Hardinge | Eric Hardinge | ✅ YES | ✅ YES |
| 2048915706 | Garrity Goodall | Garrity Goodall | ✅ YES | ✅ YES |
| 2048989167 | Wes Balliet | Wes Balliet | ✅ YES | ✅ YES |
| 2049959629 | Dylan Kuczek | Dylan Kuczek | ✅ YES | ✅ YES |
| 2369847258 | Puneet Lakhian | Puneet Lakhian | ✅ YES | ✅ YES |
| 2369858276 | Dylan Dalbock | Dylan Dalbock | ✅ YES | ✅ YES |
| 2502120999 | Jacob Rogers | Jacob Rogers | ✅ YES | ✅ YES |
| 2502155526 | Ben Barney | Ben Barney | ✅ YES | ✅ YES |
| 2503001020 | Dustin Sawa | Dustin Sawa | ✅ YES | ✅ YES |
| 2503001107 | Alfie Button | Alfie Button | ✅ YES | ✅ YES |
| 2503082393 | Joe Hinksman | Joe Hinksman | ✅ YES | ✅ YES |
| 2503274859 | Randall Domino | Randall Domino | ✅ YES | ✅ YES |
| 2504213214 | Levon Jensen | Levon Jensen | ✅ YES | ✅ YES |
| 2504219955 | Justin Stregger | Justin Stregger | ✅ YES | ✅ YES |
| 2504691323 | Chris Rogers | Chris Rogers | ✅ YES | ✅ YES |
| 2504691637 | Todd Koralewicz | Todd Koralewicz | ✅ YES | ✅ YES |
| 2504694625 | Jay Sinclair | Jay Sinclair | ✅ YES | ✅ YES |
| 2504702095 | Tanice Fadden | Tanice Fadden | ✅ YES | ✅ YES |
| 2504702211 | Matt Lucas | Matt Lucas | ✅ YES | ✅ YES |
| 2508593181 | Bob LaRue | Bob LaRue | ✅ YES | ✅ YES |
| 2508781155 | Keenan Hehn | Keenan Hehn | ✅ YES | ✅ YES |
| 2509199691 | Frank Jamali | Frank Jamali | ✅ YES | ✅ YES |
| 3062092556 | Premjeetsingh Sidhu | Premjeetsingh Sidhu | ✅ YES | ✅ YES |
| 3062093174 | Wyatt Pongracz | Wyatt Pongracz | ✅ YES | ✅ YES |
| 3062097163 | Jamie Booth | Jamie Booth | ✅ YES | ✅ YES |
| 3062167158 | Craig Sollosy | Craig Sollosy | ✅ YES | ✅ YES |
| 3062818757 | Brad Mowat | Brad Mowat | ✅ YES | ✅ YES |
| 3064502171 | Mychal Toth | Mychal Toth | ✅ YES | ✅ YES |
| 3064505118 | Hunter Selenski | Hunter Selenski | ✅ YES | ✅ YES |
| 3064507637 | Jordan Kerr | Jordan Kerr | ✅ YES | ✅ YES |
| 3065194800 | Jordan Roy | Jordan Roy | ✅ YES | ✅ YES |
| 3065195948 | Novak Sorgic | Novak Sorgic | ✅ YES | ✅ YES |
| 3065199543 | Hunter Geran | Hunter Geran | ✅ YES | ✅ YES |
| 3065207076 | Aiden Larsen | Aiden Larsen | ✅ YES | ✅ YES |
| 3065306165 | Cory Railton | Cory Railton | ✅ YES | ✅ YES |
| 3065309097 | Garret Lockeridge | Garret Lockeridge | ✅ YES | ✅ YES |
| 3065314216 | Jessica Ryan | Jessica Ryan | ✅ YES | ✅ YES |
| 3065351459 | Russ Trenouth | Russ Trenouth | ✅ YES | ✅ YES |
| 3065809114 | Carson Kaye | Carson Kaye | ✅ YES | ✅ YES |
| 3067132764 | Brayan Paz | Brayan Paz | ✅ YES | ✅ YES |
| 3067139239 | Rylan Laroque | Rylan Laroque | ✅ YES | ✅ YES |
| 3067139469 | Luc Ouellet | Luc Ouellet | ✅ YES | ✅ YES |
| 3068076244 | Logan Yeager | Logan Yeager | ✅ YES | ✅ YES |
| 3068503022 | Camille Mongovius | Camille Mongovius | ✅ YES | ✅ YES |
| 3689938035 | Adam Khan | Adam Khan | ✅ YES | ✅ YES |
| 4032004267 | Edwin Urquilla | Edwin Urquilla | ✅ YES | ✅ YES |
| 4033049748 | Aaron Steward | Aaron Steward | ✅ YES | ✅ YES |
| 4033085865 | Maciej Kosciuk | Maciej Kosciuk | ✅ YES | ✅ YES |
| 4033120202 | Lyall Bjerrisgaard | Lyall Bjerrisgaard | ✅ YES | ✅ YES |
| 4033123236 | Brendan Dolan | Brendan Dolan | ✅ YES | ✅ YES |
| 4033127859 | David Varty | David Varty | ✅ YES | ✅ YES |
| 4033127868 | Dale Sekel | Dale Sekel | ✅ YES | ✅ YES |
| 4033127874 | Hudson Brookes | Hudson Brookes | ✅ YES | ✅ YES |
| 4033127879 | Brad Millard | Brad Millard | ✅ YES | ✅ YES |
| 4033308075 | Matt Lewin | Matt Lewin | ✅ YES | ✅ YES |
| 4033314892 | Spencer Villa | Spencer Villa | ✅ YES | ✅ YES |
| 4033318105 | Jordan Hawker | Jordan Hawker | ✅ YES | ✅ YES |
| 4033320434 | Ryan Newman | Ryan Newman | ✅ YES | ✅ YES |
| 4033320728 | Aaron Johnson | Aaron Johnson | ✅ YES | ✅ YES |
| 4033320920 | Mitch Marr | Mitch Marr | ✅ YES | ✅ YES |
| 4033543641 | Russell Bryant | Russell Bryant | ✅ YES | ✅ YES |
| 4033715930 | Parker Large | Parker Large | ✅ YES | ✅ YES |
| 4034613067 | Wendie Agnew | Wendie Agnew | ✅ YES | ✅ YES |
| 4034615819 | Carlos Negraeff | Carlos Negraeff | ✅ YES | ✅ YES |
| 4034616703 | Ian Nelson | Ian Nelson | ✅ YES | ✅ YES |
| 4034618723 | Ash Epp | Ash Epp | ✅ YES | ✅ YES |
| 4034629444 | Scot Sangster | Scot Sangster | ✅ YES | ✅ YES |
| 4034631152 | Liam Price | Liam Price | ✅ YES | ✅ YES |
| 4034634815 | Christopher Scott | Christopher Scott | ✅ YES | ✅ YES |
| 4034647165 | Cooper Mathiesen | Cooper Mathiesen | ✅ YES | ✅ YES |
| 4034789865 | Ryder Mathiesen | Ryder Mathiesen | ✅ YES | ✅ YES |
| 4034790350 | Jon Mann | Jon Mann | ✅ YES | ✅ YES |
| 4034839599 | Dean Seiz | Dean Seiz | ✅ YES | ✅ YES |
| 4034839639 | Spencer Brant | Spencer Brant | ✅ YES | ✅ YES |
| 4035427152 | Sean Postlethwaite | Sean Postlethwaite | ✅ YES | ✅ YES |
| 4035480700 | Will Dufour | Will Dufour | ✅ YES | ✅ YES |
| 4035806090 | Robert Gavin | Robert Gavin | ✅ YES | ✅ YES |
| 4035854924 | Rhett Ledarney | Rhett Ledarney | ✅ YES | ✅ YES |
| 4035943647 | Mike Holizki | Mike Holizki | ✅ YES | ✅ YES |
| 4035968829 | Ziyang Zhang | Ziyang Zhang | ✅ YES | ✅ YES |
| 4036091158 | Jordan Zader | Jordan Zader | ✅ YES | ✅ YES |
| 4036098664 | David White | David White | ✅ YES | ✅ YES |
| 4036343538 | Darcie Balderson | Darcie Balderson | ✅ YES | ✅ YES |
| 4036350168 | Mike Whiting | Mike Whiting | ✅ YES | ✅ YES |
| 4036788476 | Kota Postma | Kota Postma | ✅ YES | ✅ YES |
| 4037001720 | Kayla Duggan | Kayla Duggan | ✅ YES | ✅ YES |
| 4037004925 | Glen Rendell | Glen Rendell | ✅ YES | ✅ YES |
| 4037007292 | Brad Craig | Brad Craig | ✅ YES | ✅ YES |
| 4037957568 | Cody Makorto | Cody Makorto | ✅ YES | ✅ YES |
| 4037963700 | Braeden Chizen | Braeden Chizen | ✅ YES | ✅ YES |
| 4038054054 | Marcel Brassard | Marcel Brassard | ✅ YES | ✅ YES |
| 4038055982 | Tyler Cherkowski | Tyler Cherkowski | ✅ YES | ✅ YES |
| 4038299804 | Elyse Dods | Elyse Dods | ✅ YES | ✅ YES |
| 4038311098 | Blake Badzgon | Blake Badzgon | ✅ YES | ✅ YES |
| 4038356298 | Barb Mctavish | Barb Mctavish | ✅ YES | ✅ YES |
| 4038357037 | Kevin Eloschuk | Kevin Eloschuk | ✅ YES | ✅ YES |
| 4038359405 | Richard Perkins | Richard Perkins | ✅ YES | ✅ YES |
| 4038361346 | Shane Steward | Shane Steward | ✅ YES | ✅ YES |
| 4038361425 | Kevyn McCarthy | Kevyn McCarthy | ✅ YES | ✅ YES |
| 4038361594 | Mauricio Alvarez | Mauricio Alvarez | ✅ YES | ✅ YES |
| 4038361769 | Nick Miller | Nick Miller | ✅ YES | ✅ YES |
| 4038364334 | Angie Gaudet-Born | Angie Gaudet-Born | ✅ YES | ✅ YES |
| 4038364611 | Melbourne Eve | Melbourne Eve | ✅ YES | ✅ YES |
| 4038365764 | Steve Mathiesen | Steve Mathiesen | ✅ YES | ✅ YES |
| 4038366213 | Nick Turner | Nick Turner | ✅ YES | ✅ YES |
| 4038366276 | Doug Antonovitch | Doug Antonovitch | ✅ YES | ✅ YES |
| 4038627858 | Branden Terry | Branden Terry | ✅ YES | ✅ YES |
| 4038889949 | Carlos Oporta | Carlos Oporta | ✅ YES | ✅ YES |
| 4038996179 | David Pratley | David Pratley | ✅ YES | ✅ YES |
| 4039281456 | Chris Keeler | Chris Keeler | ✅ YES | ✅ YES |
| 4039904797 | Darren Stevenson | Darren Stevenson | ✅ YES | ✅ YES |
| 4039960799 | Tyler Bussiere | Tyler Bussiere | ✅ YES | ✅ YES |
| 4039985649 | Carolyn Jahraus | Carolyn Jahraus | ✅ YES | ✅ YES |
| 4313362512 | Trevor Czarnecki | Trevor Czarnecki | ✅ YES | ✅ YES |
| 4315541480 | Tyler Van Den Bossche | Tyler Van Den Bossche | ✅ YES | ✅ YES |
| 4315542327 | Parker Boguski | Parker Boguski | ✅ YES | ✅ YES |
| 4315542577 | Jaymee Bourke | Jaymee Bourke | ✅ YES | ✅ YES |
| 4315569779 | Justin Threlfall | Justin Threlfall | ✅ YES | ✅ YES |
| 4373522484 | Daniel Saltzman | Daniel Saltzman | ✅ YES | ✅ YES |
| 5872151963 | Isaac McGuire | Isaac McGuire | ✅ YES | ✅ YES |
| 5872164875 | Shawn Ding | Shawn Ding | ✅ YES | ✅ YES |
| 5872246553 | Neil Lucki | Neil Lucki | ✅ YES | ✅ YES |
| 5872292293 | Marko Milojevic | Marko Milojevic | ✅ YES | ✅ YES |
| 5872297968 | Chris McInnis | Chris McInnis | ✅ YES | ✅ YES |
| 5873340839 | Arsalan Ahmad | Arsalan Ahmad | ✅ YES | ✅ YES |
| 5873343429 | Hussein Assaf | Hussein Assaf | ✅ YES | ✅ YES |
| 5873355234 | Jason Furgala | Jason Furgala | ✅ YES | ✅ YES |
| 5873355235 | Tim Mallet | Tim Mallet | ✅ YES | ✅ YES |
| 5873358471 | Ian McDonald | Ian McDonald | ✅ YES | ✅ YES |
| 5873376208 | Keith Shan | Keith Shan | ✅ YES | ✅ YES |
| 5873376969 | Jessy Drewes | Jessy Drewes | ✅ YES | ✅ YES |
| 5873384600 | Jennifer Olsen | Jennifer Olsen | ✅ YES | ✅ YES |
| 5873388635 | Jack Kelly | Jack Kelly | ✅ YES | ✅ YES |
| 5873575407 | Daniel Di Benedetto | Daniel Di Benedetto | ✅ YES | ✅ YES |
| 5873722205 | Perry Haakman | Perry Haakman | ✅ YES | ✅ YES |
| 5873724470 | Robert Bennett | Robert Bennett | ✅ YES | ✅ YES |
| 5873725970 | Phil Brunet | Phil Brunet | ✅ YES | ✅ YES |
| 5874385652 | Kyle Kurtz | Kyle Kurtz | ✅ YES | ✅ YES |
| 5874387470 | Jason Boyes | Jason Boyes | ✅ YES | ✅ YES |
| 5874393852 | Ashley Lawrence | Ashley Lawrence | ✅ YES | ✅ YES |
| 5875721588 | Michael Gascho | Michael Gascho | ✅ YES | ✅ YES |
| 5875829781 | Steven Brulotte | Steven Brulotte | ✅ YES | ✅ YES |
| 5875829799 | Daniel Hernandez | Daniel Hernandez | ✅ YES | ✅ YES |
| 5875896615 | Jonathan Harris | Jonathan Harris | ✅ YES | ✅ YES |
| 5875903974 | Cole Wallawein | Cole Wallawein | ✅ YES | ✅ YES |
| 5875960241 | Simon Frisch | Simon Frisch | ✅ YES | ✅ YES |
| 5875966549 | Beth Davidson | Beth Davidson | ✅ YES | ✅ YES |
| 5875967744 | Feleisha Hackett | Feleisha Hackett | ✅ YES | ✅ YES |
| 5875972209 | Uche Ndah | Uche Ndah | ✅ YES | ✅ YES |
| 5879857144 | Jamie Milliken | Jamie Milliken | ✅ YES | ✅ YES |
| 5879861563 | Erin Shea | Erin Shea | ✅ YES | ✅ YES |
| 6042198126 | David MacMahon | David MacMahon | ✅ YES | ✅ YES |
| 6042308939 | Peter Li | Peter Li | ✅ YES | ✅ YES |
| 6042309016 | Sasha Mitrevski | Sasha Mitrevski | ✅ YES | ✅ YES |
| 6043469436 | Nick Becker | Nick Becker | ✅ YES | ✅ YES |
| 6043539172 | Daniel Poleshuk | Daniel Poleshuk | ✅ YES | ✅ YES |
| 6043791340 | Cody Dale | Cody Dale | ✅ YES | ✅ YES |
| 6047544308 | Jacob Nesbit | Jacob Nesbit | ✅ YES | ✅ YES |
| 6047544563 | Aaron St. Jean | Aaron St. Jean | ✅ YES | ✅ YES |
| 6047872858 | Shane Ploss | Shane Ploss | ✅ YES | ✅ YES |
| 6048807461 | Nash Silzer | Nash Silzer | ✅ YES | ✅ YES |
| 6049923558 | Andrew Walt | Andrew Walt | ✅ YES | ✅ YES |
| 6399940206 | Charmaine Krienke | Charmaine Krienke | ✅ YES | ✅ YES |
| 6399940825 | Mark Groenewald | Mark Groenewald | ✅ YES | ✅ YES |
| 6399940907 | Joanne Harpauer-Dignean | Joanne Harpauer-Dignean | ✅ YES | ✅ YES |
| 6399944216 | Tyler Russell | Tyler Russell | ✅ YES | ✅ YES |
| 6399981430 | William Drury | William Drury | ✅ YES | ✅ YES |
| 7782220354 | Justin Griffiths | Justin Griffiths | ✅ YES | ✅ YES |
| 7782296992 | Jacob Reimer | Jacob Reimer | ✅ YES | ✅ YES |
| 7782299352 | Cameron Walt | Cameron Walt | ✅ YES | ✅ YES |
| 7782312070 | Jeffrey Hepburn | Jeffrey Hepburn | ✅ YES | ✅ YES |
| 7783631073 | Mike Kiesman | Mike Kiesman | ✅ YES | ✅ YES |
| 7785830663 | Zack Ruff | Zack Ruff | ✅ YES | ✅ YES |
| 7788351442 | Nigel Hermann | Nigel Hermann | ✅ YES | ✅ YES |
| 7788381604 | Peter Hambly | Peter Hambly | ✅ YES | ✅ YES |
| 7789569091 | Christopher Kerr | Christopher Kerr | ✅ YES | ✅ YES |
| 7802030458 | Steven Herron | Steven Herron | ✅ YES | ✅ YES |
| 7802036477 | Luke Brotherston | Luke Brotherston | ✅ YES | ✅ YES |
| 7802036485 | Kyl Karch | Kyl Karch | ✅ YES | ✅ YES |
| 7802209360 | Shaun Ropcean | Shaun Ropcean | ✅ YES | ✅ YES |
| 7802226462 | John Hansen | John Hansen | ✅ YES | ✅ YES |
| 7802327192 | Ryan Corbett | Ryan Corbett | ✅ YES | ✅ YES |
| 7802336384 | Kevin Dejong | Kevin Dejong | ✅ YES | ✅ YES |
| 7802358072 | Eric Germain | Eric Germain | ✅ YES | ✅ YES |
| 7802358097 | Maxwell Lenihan | Maxwell Lenihan | ✅ YES | ✅ YES |
| 7802370452 | Gary Richardson | Gary Richardson | ✅ YES | ✅ YES |
| 7802676693 | Chance Coulter | Chance Coulter | ✅ YES | ✅ YES |
| 7802677765 | Brendon Younie | Brendon Younie | ✅ YES | ✅ YES |
| 7802719045 | Tara McLeod | Tara McLeod | ✅ YES | ✅ YES |
| 7802984022 | Dominic Poulin | Dominic Poulin | ✅ YES | ✅ YES |
| 7805047344 | Phil Pavicic | Phil Pavicic | ✅ YES | ✅ YES |
| 7806606560 | Devin Goodheart | Devin Goodheart | ✅ YES | ✅ YES |
| 7806670946 | Keenan Bailey | Keenan Bailey | ✅ YES | ✅ YES |
| 7806671263 | Shawn Leaf | Shawn Leaf | ✅ YES | ✅ YES |
| 7806990295 | Travis Anderson | Travis Anderson | ✅ YES | ✅ YES |
| 7806990333 | Tyler Hayward | Tyler Hayward | ✅ YES | ✅ YES |
| 7806990597 | Nick Kostaniuk | Nick Kostaniuk | ✅ YES | ✅ YES |
| 7806994620 | Andrea Kohlman | Andrea Kohlman | ✅ YES | ✅ YES |
| 7806995221 | Austin Delesoy-Busch | Austin Delesoy-Busch | ✅ YES | ✅ YES |
| 7806995224 | Stephen Spademan | Stephen Spademan | ✅ YES | ✅ YES |
| 7806997280 | Scott Klein | Scott Klein | ✅ YES | ✅ YES |
| 7807779510 | Xavier Rodriguez | Xavier Rodriguez | ✅ YES | ✅ YES |
| 7807779512 | Derek McWhinnie | Derek McWhinnie | ✅ YES | ✅ YES |
| 7807779522 | Brandy Cardinal | Brandy Cardinal | ✅ YES | ✅ YES |
| 7808182833 | Jackson von der Ohe | Jackson von der Ohe | ✅ YES | ✅ YES |
| 7808182851 | Jeff Sommerfeld | Jeff Sommerfeld | ✅ YES | ✅ YES |
| 7808182856 | Ndubuisi Obi | Ndubuisi Obi | ✅ YES | ✅ YES |
| 7808182860 | Cody Oldford | Cody Oldford | ✅ YES | ✅ YES |
| 7808182868 | Logan Tomlinson | Logan Tomlinson | ✅ YES | ✅ YES |
| 7808182877 | Tracey Clinton | Tracey Clinton | ✅ YES | ✅ YES |
| 7808182880 | Tristen Santiago | Tristen Santiago | ✅ YES | ✅ YES |
| 7808182886 | Tobias Engel | Tobias Engel | ✅ YES | ✅ YES |
| 7808182889 | Chelsea Kehoe | Chelsea Kehoe | ✅ YES | ✅ YES |
| 7808184801 | Christopher Waltz | Christopher Waltz | ✅ YES | ✅ YES |
| 7808193781 | Braden Davie | Braden Davie | ✅ YES | ✅ YES |
| 7808934273 | Karmen Kafa | Karmen Kafa | ✅ YES | ✅ YES |
| 7808936035 | Jen Waalberg | Jen Waalberg | ✅ YES | ✅ YES |
| 7808936195 | Blake McWhinnie | Blake McWhinnie | ✅ YES | ✅ YES |
| 7808937563 | Shannon Dowden | Shannon Dowden | ✅ YES | ✅ YES |
| 7808939208 | Michael McIntosh | Michael McIntosh | ✅ YES | ✅ YES |
| 7808939274 | Sam Lillies | Sam Lillies | ✅ YES | ✅ YES |
| 7808939370 | Cody Shepherdson | Cody Shepherdson | ✅ YES | ✅ YES |
| 7808939439 | Garrett Gerke | Garrett Gerke | ✅ YES | ✅ YES |
| 7808939445 | Glen Robertson | Glen Robertson | ✅ YES | ✅ YES |
| 7808939498 | Herb Van Brabant | Herb Van Brabant | ✅ YES | ✅ YES |
| 7808939614 | Ryan Mcwhinnie | Ryan Mcwhinnie | ✅ YES | ✅ YES |
| 7808939769 | Tad Krzyzak | Tad Krzyzak | ✅ YES | ✅ YES |
| 7809820029 | Braden Swan | Braden Swan | ✅ YES | ✅ YES |
| 7809820318 | Brad Mayer | Brad Mayer | ✅ YES | ✅ YES |
| 7809820884 | Mike Wieschorster | Mike Wieschorster | ✅ YES | ✅ YES |
| 7809821506 | Jeff Giguere | Jeff Giguere | ✅ YES | ✅ YES |
| 7809821627 | Brendan Bessette | Brendan Bessette | ✅ YES | ✅ YES |
| 7809822395 | Dave Lucas | Dave Lucas | ✅ YES | ✅ YES |
| 7809822812 | Curtis Gerbrandt | Curtis Gerbrandt | ✅ YES | ✅ YES |
| 7809823024 | Jordan Brandon | Jordan Brandon | ✅ YES | ✅ YES |
| 7809823285 | Tagrid El Mustapha | Tagrid El Mustapha | ✅ YES | ✅ YES |
| 7809823586 | David Buckley | David Buckley | ✅ YES | ✅ YES |
| 7809823659 | Kirby Cordick | Kirby Cordick | ✅ YES | ✅ YES |
| 7809823756 | Dave Cameron | Dave Cameron | ✅ YES | ✅ YES |
| 7809823824 | Geoffery Dowhaniuk | Geoffery Dowhaniuk | ✅ YES | ✅ YES |
| 7809824164 | Will Young | Will Young | ✅ YES | ✅ YES |
| 7809824548 | Zach Stelmack | Zach Stelmack | ✅ YES | ✅ YES |
| 7809824566 | Dustyn Rutherford | Dustyn Rutherford | ✅ YES | ✅ YES |
| 7809824953 | Sheldon Grieve | Sheldon Grieve | ✅ YES | ✅ YES |
| 7809825593 | Darren Williams | Darren Williams | ✅ YES | ✅ YES |
| 7809956351 | Brent Sokoluik | Brent Sokoluik | ✅ YES | ✅ YES |
| 7809957649 | Ken Vandrasco | Ken Vandrasco | ✅ YES | ✅ YES |
| 8259635624 | Justin Hamilton | Justin Hamilton | ✅ YES | ✅ YES |
| 8259635627 | Ethan Berg | Ethan Berg | ✅ YES | ✅ YES |
| 8259635628 | Jotbir Garcha | Jotbir Garcha | ✅ YES | ✅ YES |
| 8259660937 | Ayub Hassan | Ayub Hassan | ✅ YES | ✅ YES |
| 8259661627 | Roxann Young | Roxann Young | ✅ YES | ✅ YES |
| 8259672345 | Jason Harris | Jason Harris | ✅ YES | ✅ YES |
| 8259936678 | Paul Flynn | Paul Flynn | ✅ YES | ✅ YES |

**Cross-Reference Summary:**
- Phone numbers with matching users: 278/278 (100.0%)
- Phone numbers with consistent status: 277/278 (99.6%)

## 📱 Phone Number Reassignments

✅ **No phone number reassignments detected** between Service Overview and Active Directory.

## 🚨 Critical Issues Requiring Immediate Attention

### 🟡 Phone Assignment Issues (1 found)

These phone numbers are assigned to **EXPIRED users** in Service Overview, but the phones actually belong to **ACTIVE employees** in Active Directory:

| Phone Number | Service Overview User | Active Directory User | Problem |
|--------------|----------------------|----------------------|---------|
| 2043301877 | Dylan Cassie | Dylan Cassie | Service shows Expired but AD shows Enabled |

### 🔴 Users Who Should Be EXPIRED (33 found)

**💰 FINANCIAL IMPACT:** These are users NOT in Active Directory but we're still paying for their phone services.

| Phone Number | Service Overview User | Problem |
|--------------|----------------------|---------|
| 2042185901 | Justin Czarnecki | Service shows Active but phone not in AD |
| 2044414391 | Marc Olsen | Service shows Active but phone not in AD |
| 2369703755 | Todd Koralewicz | Service shows Active but phone not in AD |
| 2369849549 | Stephen Pek | Service shows Active but phone not in AD |
| 2504691423 | Devon Woiden | Service shows Active but phone not in AD |
| 3064500304 | JAY ORBAN | Service shows Active but phone not in AD |
| 3689993711 | Richard Perkins | Service shows Active but phone not in AD |
| 4033314795 | Jeff Giguere | Service shows Active but phone not in AD |
| 4034773222 | Dustin Sawa | Service shows Active but phone not in AD |
| 4038271011 | DAMIEN PONCELET | Service shows Active but phone not in AD |
| 4038310423 | SPARE (NIGEL BIRKETT) | Service shows Active but phone not in AD |
| 4038356049 | Lisa Tully | Service shows Active but phone not in AD |
| 4038360416 | Tyrone Mcleod | Service shows Active but phone not in AD |
| 4038365224 | SAGRYS VAN-DER-MERWE | Service shows Active but phone not in AD |
| 4315541325 | Justin Czarnecki | Service shows Active but phone not in AD |
| 5872151980 | ETHAN AMMAR | Service shows Active but phone not in AD |
| 5873359939 | Nathan Richardson | Service shows Active but phone not in AD |
| 5875720357 | Isaac McGuire | Service shows Active but phone not in AD |
| 5876454749 | FORTMAC HUB | Service shows Active but phone not in AD |
| 5876459693 | Brandon Darby | Service shows Active but phone not in AD |
| 6042025306 | VCR #7 | Service shows Active but phone not in AD |
| 6048412867 | VCR 6 | Service shows Active but phone not in AD |
| 6048417393 | TAYLOR NIGUT | Service shows Active but phone not in AD |
| 6049966140 | Tia Evans | Service shows Active but phone not in AD |
| 6729691542 | Chance Coulter | Service shows Active but phone not in AD |
| 7802032076 | BRAIDEN JOHANNESSON | Service shows Active but phone not in AD |
| 7802203295 | EMERGENCY IT | Service shows Active but phone not in AD |
| 7802378927 | Steven Fandrick | Service shows Active but phone not in AD |
| 7802380173 | Mike Kiesman | Service shows Active but phone not in AD |
| 7802675368 | JACOB OHE | Service shows Active but phone not in AD |
| 7802882317 | Jarett Boulianne | Service shows Active but phone not in AD |
| 7807194817 | JAMIE MILLIKEN'S WW/5879857144 | Service shows Active but phone not in AD |
| 7808815593 | Kris Kozjak | Service shows Active but phone not in AD |

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

2. **Review 33 users marked as active**
   - Cross-reference with UserManagement.csv for verification
   - Check for phone number reassignments
   - Identify service accounts vs actual users

3. **Clean up 2 duplicate records**
   - Remove duplicate entries from People database
   - Ensure processor doesn't create new duplicates

## 🚀 Strategic Recommendations

### 💰 Cost Optimization (High Priority)
1. **Audit Expired Services** - Review 33 services marked as active but not in AD
   - Potential monthly savings by cancelling unused services
   - Identify service accounts vs former employees
   - Implement automated service termination for departed staff

2. **Phone Number Management** - Address 0 user mismatches
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
