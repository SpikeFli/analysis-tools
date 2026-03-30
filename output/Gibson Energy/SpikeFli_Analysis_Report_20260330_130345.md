# SpikeFli Data Analysis Report

**Generated:** March 30, 2026 at 01:03 PM

---

## 🎯 Key Metrics Summary

### 📱 Phone Number Analysis (450 phones analyzed)

| Metric | Count | Percentage | Status |
|--------|-------|------------|--------|
| **Users Match Correctly** | **450** | **100.0%** | ✅ Good |
| **User Mismatches** | **0** | **0.0%** | 🚨 Needs Fix |
| Status Consistency | 450 | 100.0% | ✅ Good |

**🔍 What User Mismatches Mean:**
When a phone number shows **different users** in Service Overview vs Active Directory:
- Service Overview: `John Smith` has phone `555-1234`
- Active Directory: `Sarah Johnson` has phone `555-1234`
- **Root Cause:** Phone was reassigned but Service Overview wasn't updated
- **Impact:** Billing/services assigned to wrong person
- **Solution:** Update Service Overview to match Active Directory

### 🚨 Critical Status Issues (187 total)

| Issue Type | Count | Impact | Priority |
|------------|-------|--------|----------|
| Phone Assignment Issues | 0 | Active employees can't access their phones | 🔴 High |
| **Should be EXPIRED** | **187** | **Paying for unused services** | **🔴 Critical** |
| Correctly EXPIRED | 0 | No action needed | ✅ Good |

**🔍 What These Issues Mean:**
- **Should be EXPIRED:** Users left company but we're still paying for their phone service
- **Phone Assignment Issues:** Phone numbers assigned to wrong users (active employees can't access their phones)

## 🗂️ Active Directory Analysis

| Metric | Count | Percentage |
|--------|-------|------------|
| Total Users | 1361 | 100% |
| **Enabled Users** | **973** | **71.5%** |
| Disabled Users | 388 | 28.5% |
| Users with Mobile | 309 | 22.7% |
| Users with Phone | 655 | 48.1% |

## 👥 User Management System Analysis

| Metric | Count | Percentage |
|--------|-------|------------|
| Total User Records | 1996 | 100% |
| **Active Users** | **1165** | **58.4%** |
| Expired Users | 829 | 41.5% |
| AD-Sourced Records | 1973 | 98.8% |
| Other Sources | 23 | 1.2% |

## 🗃️ People Database Analysis

| Metric | Count | Percentage |
|--------|-------|------------|
| Total AD Records | 1973 | 100% |
| **Active Records** | **1145** | **58.0%** |
| Expired Records | 828 | 42.0% |
| Duplicate Records | 277 | - |

⚠️ **WARNING: 277 duplicate records found in People database**

## 📋 Service Overview Analysis

| Metric | Count |
|--------|-------|
| Total Entries with Users | 719 |
| Active Entries | 943 |
| Expired Entries | 82 |

## 📞 Phone Number Cross-Reference Analysis (450 phones matched)

**THIS IS THE CORE ANALYSIS:** Shows how phone numbers match between Service Overview and Active Directory:

| Phone Number | Service Overview User | AD User | Users Match | Status Consistent |
|--------------|----------------------|---------|-------------|-------------------|
| 2046985001 | Edbert Tanaldo | Edbert Tanaldo | ✅ YES | ✅ YES |
| 3063131536 | Leslye Narvaez | Leslye Narvaez | ✅ YES | ✅ YES |
| 3063135560 | Athar Hussain | Athar Hussain | ✅ YES | ✅ YES |
| 3063138243 | MITCHELL BRECHT | Mitchell Brecht | ✅ YES | ✅ YES |
| 3064502735 | Brennan Larson | Brennan Larson | ✅ YES | ✅ YES |
| 3065136372 | Ishaq Habibullah | Ishaq Habibullah | ✅ YES | ✅ YES |
| 3066302897 | James Windley | James Windley | ✅ YES | ✅ YES |
| 3066308203 | Jillian Ross | Jillian Ross | ✅ YES | ✅ YES |
| 3066310064 | Colin Gair | Colin Gair | ✅ YES | ✅ YES |
| 3066813097 | Janis Tondevold | Janis Tondevold | ✅ YES | ✅ YES |
| 3066813164 | Paul Merifield | Paul Merifield | ✅ YES | ✅ YES |
| 3066815843 | Blake Frederick | Blake Frederick | ✅ YES | ✅ YES |
| 3613714213 | Chad Cantu | Chad Cantu | ✅ YES | ✅ YES |
| 3613714216 | Bryan Stinnett | Bryan Stinnett | ✅ YES | ✅ YES |
| 3613714217 | Benjamin Samaniego | Benjamin Samaniego | ✅ YES | ✅ YES |
| 3613714219 | Austin Hernandez | Austin Hernandez | ✅ YES | ✅ YES |
| 3613714221 | Barry Duge | Barry Duge | ✅ YES | ✅ YES |
| 3613714222 | Marcus Engel | Marcus Engel | ✅ YES | ✅ YES |
| 3613714223 | Roy Canales | Roy Canales | ✅ YES | ✅ YES |
| 3613714225 | Casey Krause | Casey Krause | ✅ YES | ✅ YES |
| 3613714226 | Jessica Gwinn | Jessica Gwinn | ✅ YES | ✅ YES |
| 3613714227 | Jay Storms | Jay Storms | ✅ YES | ✅ YES |
| 3613714228 | Henry Elizondo | Henry Elizondo | ✅ YES | ✅ YES |
| 3613714230 | Maria Alarcon | Maria Alarcon | ✅ YES | ✅ YES |
| 3613714231 | David Walsh | David Walsh | ✅ YES | ✅ YES |
| 3613714232 | Matthew Hernandez | Matthew Hernandez | ✅ YES | ✅ YES |
| 3613714233 | Aaron Rodriguez | Aaron Rodriguez | ✅ YES | ✅ YES |
| 3613714317 | Adolfo Ramirez | Adolfo Ramirez | ✅ YES | ✅ YES |
| 3613714318 | Antonio Garcia | Antonio Garcia | ✅ YES | ✅ YES |
| 3613714319 | Arnoldo Rodriguez | Arnoldo Rodriguez | ✅ YES | ✅ YES |
| 3613714322 | Benjamin Samaniego | Benjamin Samaniego | ✅ YES | ✅ YES |
| 3613714325 | Fred Gonzalez | Fred Gonzalez | ✅ YES | ✅ YES |
| 3613714326 | Chris Garcia | Chris Garcia | ✅ YES | ✅ YES |
| 3613714348 | Keith Gary | Keith Gary | ✅ YES | ✅ YES |
| 3613714349 | Marina Rivera | Marina Rivera | ✅ YES | ✅ YES |
| 3613714352 | Ram Martinez | Ram Martinez | ✅ YES | ✅ YES |
| 3613714353 | Ramsey Blanco | Ramsey Blanco | ✅ YES | ✅ YES |
| 3613714354 | Vicente Cantu | Vicente Cantu | ✅ YES | ✅ YES |
| 3689960292 | Shaila Amreen | Shaila Amreen | ✅ YES | ✅ YES |
| 3689965598 | Seamus Mitchell | Seamus Mitchell | ✅ YES | ✅ YES |
| 3689965757 | Maria Mapalo | Maria Mapalo | ✅ YES | ✅ YES |
| 4032064002 | Maria Volponi | Maria Volponi | ✅ YES | ✅ YES |
| 4032064003 | Sandesh Shirodkar | Sandesh Shirodkar | ✅ YES | ✅ YES |
| 4032064004 | Maria Mapalo | Maria Mapalo | ✅ YES | ✅ YES |
| 4032064005 | Kristin Aquino | Kristin Aquino | ✅ YES | ✅ YES |
| 4032064006 | Jean-Claude Amyotte | Jean-Claude Amyotte | ✅ YES | ✅ YES |
| 4032064007 | Natasha Harvey | Natasha Harvey | ✅ YES | ✅ YES |
| 4032064009 | Teresa Lindsay | Teresa Lindsay | ✅ YES | ✅ YES |
| 4032064012 | Moein Ghavi | Moein Ghavi | ✅ YES | ✅ YES |
| 4032064013 | Colin Bennett | Colin Bennett | ✅ YES | ✅ YES |
| 4032064014 | Johnny Wong | Johnny Wong | ✅ YES | ✅ YES |
| 4032064016 | Eiza Tahir | Eiza Tahir | ✅ YES | ✅ YES |
| 4032064017 | Albert Huynh | Albert Huynh | ✅ YES | ✅ YES |
| 4032064018 | Nathalie Wyman | Nathalie Wyman | ✅ YES | ✅ YES |
| 4032064019 | Frederick Omeke | Frederick Omeke | ✅ YES | ✅ YES |
| 4032064020 | Braden deVries | Braden deVries | ✅ YES | ✅ YES |
| 4032064022 | Edbert Tanaldo | Edbert Tanaldo | ✅ YES | ✅ YES |
| 4032064023 | Bryan Kennedy | Bryan Kennedy | ✅ YES | ✅ YES |
| 4032064024 | Caleb Zimmerman | Caleb Zimmerman | ✅ YES | ✅ YES |
| 4032064025 | Harry MacKenzie | Harry MacKenzie | ✅ YES | ✅ YES |
| 4032064026 | Andrew Holowaychuk | Andrew Holowaychuk | ✅ YES | ✅ YES |
| 4032064027 | Estefania Garay | Estefania Garay | ✅ YES | ✅ YES |
| 4032064029 | Stephanie Parbhu | Stephanie Parbhu | ✅ YES | ✅ YES |
| 4032064030 | Mirela Hiti | Mirela Hiti | ✅ YES | ✅ YES |
| 4032064031 | Mahek Ramzan | Mahek Ramzan | ✅ YES | ✅ YES |
| 4032064032 | Alena Foster | Alena Foster | ✅ YES | ✅ YES |
| 4032064033 | Brady Kachur | Brady Kachur | ✅ YES | ✅ YES |
| 4032064034 | Mariah Butler | Mariah Butler | ✅ YES | ✅ YES |
| 4032064035 | Marissa Nelson | Marissa Nelson | ✅ YES | ✅ YES |
| 4032064036 | Dan Stoffman | Dan Stoffman | ✅ YES | ✅ YES |
| 4032064038 | Callie Ann Massee | Callie Ann Massee | ✅ YES | ✅ YES |
| 4032064040 | Curtis Philippon | Curtis Philippon | ✅ YES | ✅ YES |
| 4032064042 | Josie Dos Santos | Josie Dos Santos | ✅ YES | ✅ YES |
| 4032064043 | Eric Gilholme | Eric Gilholme | ✅ YES | ✅ YES |
| 4032064046 | Bharat Bodawala | Bharat Bodawala | ✅ YES | ✅ YES |
| 4032064047 | Andrew Arnold | Andrew Arnold | ✅ YES | ✅ YES |
| 4032064048 | Darwin Margate | Darwin Margate | ✅ YES | ✅ YES |
| 4032064049 | Stephanie Creelman | Stephanie Creelman | ✅ YES | ✅ YES |
| 4032064050 | Kendra Hand | Kendra Hand | ✅ YES | ✅ YES |
| 4032064051 | Dave Artuz | Dave Artuz | ✅ YES | ✅ YES |
| 4032064053 | Collin Merritt | Collin Merritt | ✅ YES | ✅ YES |
| 4032064054 | Daniel Diao | Daniel Diao | ✅ YES | ✅ YES |
| 4032064056 | Romina Suarin | Romina Suarin | ✅ YES | ✅ YES |
| 4032064057 | Abby Czaikowski | Abby Czaikowski | ✅ YES | ✅ YES |
| 4032064058 | Carter Weenk | Carter Weenk | ✅ YES | ✅ YES |
| 4032064059 | Bolin Du | Bolin Du | ✅ YES | ✅ YES |
| 4032064061 | Trevor Boudreau | Trevor Boudreau | ✅ YES | ✅ YES |
| 4032064063 | Amy Liu | Amy Liu | ✅ YES | ✅ YES |
| 4032064064 | Alicia Crawford | Alicia Crawford | ✅ YES | ✅ YES |
| 4032064065 | Marie Phan | Marie Phan | ✅ YES | ✅ YES |
| 4032064066 | Vic Lit Chung | Vic Lit Chung | ✅ YES | ✅ YES |
| 4032064067 | Tom Hades | Tom Hades | ✅ YES | ✅ YES |
| 4032064068 | Theo Anidu | Theo Anidu | ✅ YES | ✅ YES |
| 4032064069 | Terrianne Harvey | Terrianne Harvey | ✅ YES | ✅ YES |
| 4032064070 | Svetlana Ostapenko | Svetlana Ostapenko | ✅ YES | ✅ YES |
| 4032064071 | Robyn Hadley | Robyn Hadley | ✅ YES | ✅ YES |
| 4032064072 | Michelena Robinson | Michelena Robinson | ✅ YES | ✅ YES |
| 4032064073 | Lisa Wenman-Sturm | Lisa Wenman-Sturm | ✅ YES | ✅ YES |
| 4032064074 | Chelsea Hodgson | Chelsea Hodgson | ✅ YES | ✅ YES |
| 4032064076 | Mike Boulter | Mike Boulter | ✅ YES | ✅ YES |
| 4032064078 | Cameron LaValley | Cameron LaValley | ✅ YES | ✅ YES |
| 4032064079 | Sherron Weenk | Sherron Weenk | ✅ YES | ✅ YES |
| 4032064080 | Laura Vega Garcia | Laura Vega Garcia | ✅ YES | ✅ YES |
| 4032064081 | Ryan Hyland | Ryan Hyland | ✅ YES | ✅ YES |
| 4032064082 | Gradyn Pertson | Gradyn Pertson | ✅ YES | ✅ YES |
| 4032064083 | Maria Hooper | Maria Hooper | ✅ YES | ✅ YES |
| 4032064084 | Khalid Muslih | Khalid Muslih | ✅ YES | ✅ YES |
| 4032064085 | Basim Abdalla | Basim Abdalla | ✅ YES | ✅ YES |
| 4032064086 | Kasie Bourassa | Kasie Bourassa | ✅ YES | ✅ YES |
| 4032064087 | Connor DeMaere | Connor DeMaere | ✅ YES | ✅ YES |
| 4032064090 | Anum Ali | Anum Ali | ✅ YES | ✅ YES |
| 4032064091 | Samantha Little | Samantha Little | ✅ YES | ✅ YES |
| 4032064092 | Denise Bolduc | Denise Bolduc | ✅ YES | ✅ YES |
| 4032064094 | Brandon Kwong | Brandon Kwong | ✅ YES | ✅ YES |
| 4032064095 | Kerry Wojcichowsky | Kerry Wojcichowsky | ✅ YES | ✅ YES |
| 4032064096 | Archie Choudhary | Archie Choudhary | ✅ YES | ✅ YES |
| 4032064097 | Sasha Longley | Sasha Longley | ✅ YES | ✅ YES |
| 4032064098 | Halima Awaiye | Halima Awaiye | ✅ YES | ✅ YES |
| 4032064099 | Ann Sauve | Ann Sauve | ✅ YES | ✅ YES |
| 4032064102 | Jamie Schrader | Jamie Schrader | ✅ YES | ✅ YES |
| 4032064103 | Jon Ozirny | Jon Ozirny | ✅ YES | ✅ YES |
| 4032064104 | Selena Sun | Selena Sun | ✅ YES | ✅ YES |
| 4032064106 | Carson Ho | Carson Ho | ✅ YES | ✅ YES |
| 4032064107 | Ishak Lutalo | Ishak Lutalo | ✅ YES | ✅ YES |
| 4032064108 | Justin Wu | Justin Wu | ✅ YES | ✅ YES |
| 4032064109 | Vivienne Cline | Vivienne Cline | ✅ YES | ✅ YES |
| 4032064110 | Erin Seaman | Erin Seaman | ✅ YES | ✅ YES |
| 4032064113 | Alexis Gendra Garcia | Alexis Gendra Garcia | ✅ YES | ✅ YES |
| 4032064114 | Cindy Ly | Cindy Ly | ✅ YES | ✅ YES |
| 4032064121 | Patricia Fernandez | Patricia Fernandez | ✅ YES | ✅ YES |
| 4032064124 | Isaac Datoc | Isaac Datoc | ✅ YES | ✅ YES |
| 4032064126 | Kiesha Magan | Kiesha Magan | ✅ YES | ✅ YES |
| 4032064129 | Dave Gosse | Dave Gosse | ✅ YES | ✅ YES |
| 4032064130 | Sum Leung | Sum Leung | ✅ YES | ✅ YES |
| 4032064131 | Marc Rowe | Marc Rowe | ✅ YES | ✅ YES |
| 4032064132 | Arash Khodabandeh | Arash Khodabandeh | ✅ YES | ✅ YES |
| 4032064133 | Joey Crisalli | Joey Crisalli | ✅ YES | ✅ YES |
| 4032064134 | Anna Palmiere | Anna Palmiere | ✅ YES | ✅ YES |
| 4032064138 | Kelsey Thomson-Dallyn | Kelsey Thomson-Dallyn | ✅ YES | ✅ YES |
| 4032064142 | Libby Carr | Libby Carr | ✅ YES | ✅ YES |
| 4032064158 | Yvonne Teunissen | Yvonne Teunissen | ✅ YES | ✅ YES |
| 4032064164 | Alisa Denton | Alisa Denton | ✅ YES | ✅ YES |
| 4032064173 | Sue Gulin | Sue Gulin | ✅ YES | ✅ YES |
| 4032064176 | Joe Cust | Joe Cust | ✅ YES | ✅ YES |
| 4032064192 | Tracey Lefaivre | Tracey Lefaivre | ✅ YES | ✅ YES |
| 4032064195 | Alex Tang | Alex Tang | ✅ YES | ✅ YES |
| 4032064202 | Ivan Burton | Ivan Burton | ✅ YES | ✅ YES |
| 4032064203 | Taha Ahmed | Taha Ahmed | ✅ YES | ✅ YES |
| 4032064236 | Jose Pinerua Pina | Jose Pinerua Pina | ✅ YES | ✅ YES |
| 4032064237 | Bala Ganapathy | Bala Ganapathy | ✅ YES | ✅ YES |
| 4032064238 | Chris Fanning | Chris Fanning | ✅ YES | ✅ YES |
| 4032064244 | Jocelyn Wegen | Jocelyn Wegen | ✅ YES | ✅ YES |
| 4032064246 | Caroline Joseph | Caroline Joseph | ✅ YES | ✅ YES |
| 4032064259 | Cathy Zhang | Cathy Zhang | ✅ YES | ✅ YES |
| 4032064262 | Daphne Eilers | Daphne Eilers | ✅ YES | ✅ YES |
| 4032064263 | Cyndi Ruff | Cyndi Ruff | ✅ YES | ✅ YES |
| 4032064274 | Deirdre Braddock | Deirdre Braddock | ✅ YES | ✅ YES |
| 4032064283 | Seamus Mitchell | Seamus Mitchell | ✅ YES | ✅ YES |
| 4032064286 | Kamran Naseer | Kamran Naseer | ✅ YES | ✅ YES |
| 4032064288 | Ramiro Millan | Ramiro Millan | ✅ YES | ✅ YES |
| 4032064294 | Priya Denton | Priya Denton | ✅ YES | ✅ YES |
| 4032064298 | Dali Festa | Dali Festa | ✅ YES | ✅ YES |
| 4033051368 | Patrick Zajac | Patrick Zajac | ✅ YES | ✅ YES |
| 4033541817 | Dan Stoffman | Dan Stoffman | ✅ YES | ✅ YES |
| 4033541845 | Aaron Gruending | Aaron Gruending | ✅ YES | ✅ YES |
| 4033543171 | Michaela Greene | Michaela Greene | ✅ YES | ✅ YES |
| 4033543343 | Michael Zhou | Michael Zhou | ✅ YES | ✅ YES |
| 4033543352 | Pavel Jacobs | Pavel Jacobs | ✅ YES | ✅ YES |
| 4033543562 | Brandon Kwong | Brandon Kwong | ✅ YES | ✅ YES |
| 4033543923 | Kevin Gertken | Kevin Gertken | ✅ YES | ✅ YES |
| 4033544100 | Byron Roberts | Byron Roberts | ✅ YES | ✅ YES |
| 4033544198 | Tara Hingley | Tara Hingley | ✅ YES | ✅ YES |
| 4033544509 | Dee Nel | Dee Nel | ✅ YES | ✅ YES |
| 4033544761 | Zack Poirier | Zack Poirier | ✅ YES | ✅ YES |
| 4033545682 | Bala Ganapathy | Bala Ganapathy | ✅ YES | ✅ YES |
| 4033545817 | Travis Hawkins | Travis Hawkins | ✅ YES | ✅ YES |
| 4033693671 | Kendra Hand | Kendra Hand | ✅ YES | ✅ YES |
| 4033697141 | Kristen Pintea | Kristen Pintea | ✅ YES | ✅ YES |
| 4033717068 | Cameron Duncan | Cameron Duncan | ✅ YES | ✅ YES |
| 4033909611 | Andrew Mackenzie | Andrew Mackenzie | ✅ YES | ✅ YES |
| 4034089159 | Mohamed Borhot | Mohamed Borhot | ✅ YES | ✅ YES |
| 4034372481 | Kyla McMullin | Kyla McMullin | ✅ YES | ✅ YES |
| 4034374058 | Kelly Holtby | Kelly Holtby | ✅ YES | ✅ YES |
| 4034625309 | Mike Boulter | Mike Boulter | ✅ YES | ✅ YES |
| 4034627921 | Atif Qayyum | Atif Qayyum | ✅ YES | ✅ YES |
| 4034628486 | Alex Tang | Alex Tang | ✅ YES | ✅ YES |
| 4034631198 | Jamie Schrader | Jamie Schrader | ✅ YES | ✅ YES |
| 4034631357 | Larissa Kurennaya | Larissa Kurennaya | ✅ YES | ✅ YES |
| 4034646354 | Robbie Secord | Robbie Secord | ✅ YES | ✅ YES |
| 4034650682 | Bob Little | Bob Little | ✅ YES | ✅ YES |
| 4034663740 | Kasie Bourassa | Kasie Bourassa | ✅ YES | ✅ YES |
| 4034668297 | Anjee Tocher | Anjee Tocher | ✅ YES | ✅ YES |
| 4034702603 | John Davis | John Davis | ✅ YES | ✅ YES |
| 4034723794 | Cyndi Ruff | Cyndi Ruff | ✅ YES | ✅ YES |
| 4034766321 | Raya Kuznetsova | Raya Kuznetsova | ✅ YES | ✅ YES |
| 4034766326 | Guru Pandya | Guru Pandya | ✅ YES | ✅ YES |
| 4034766327 | Mike McNulty | Mike McNulty | ✅ YES | ✅ YES |
| 4034766329 | Melissa Campbell | Melissa Campbell | ✅ YES | ✅ YES |
| 4034773625 | Carla Watters | Carla Watters | ✅ YES | ✅ YES |
| 4034781459 | Alena Foster | Alena Foster | ✅ YES | ✅ YES |
| 4034781956 | Melaniya Boyko | Melaniya Boyko | ✅ YES | ✅ YES |
| 4034794154 | Andrew Holowaychuk | Andrew Holowaychuk | ✅ YES | ✅ YES |
| 4034799831 | Connor DeMaere | Connor DeMaere | ✅ YES | ✅ YES |
| 4034834021 | Robert Kennedy | Robert Kennedy | ✅ YES | ✅ YES |
| 4034974245 | Connor Murray | Connor Murray | ✅ YES | ✅ YES |
| 4035086002 | Rashid Almaktary | Rashid Almaktary | ✅ YES | ✅ YES |
| 4035086008 | Debbie Parker | Debbie Parker | ✅ YES | ✅ YES |
| 4035086009 | Kelly Holtby | Kelly Holtby | ✅ YES | ✅ YES |
| 4035192338 | Sunny Xie | Sunny Xie | ✅ YES | ✅ YES |
| 4035402891 | Jason Risk | Jason Risk | ✅ YES | ✅ YES |
| 4035406027 | Craig Lindsay | Craig Lindsay | ✅ YES | ✅ YES |
| 4035423433 | Frederick Omeke | Frederick Omeke | ✅ YES | ✅ YES |
| 4035425907 | Jose Pinerua Pina | Jose Pinerua Pina | ✅ YES | ✅ YES |
| 4035549132 | Mariah Butler | Mariah Butler | ✅ YES | ✅ YES |
| 4035601625 | Michele Jong | Michele Jong | ✅ YES | ✅ YES |
| 4035603083 | Alina Rusu | Alina Rusu | ✅ YES | ✅ YES |
| 4035612494 | Kamran Naseer | Kamran Naseer | ✅ YES | ✅ YES |
| 4035892202 | Romina Suarin | Romina Suarin | ✅ YES | ✅ YES |
| 4035892575 | Dave Artuz | Dave Artuz | ✅ YES | ✅ YES |
| 4035896155 | Dan Nieuwenhuis | Dan Nieuwenhuis | ✅ YES | ✅ YES |
| 4035897594 | Karen Canon-Rubio | Karen Canon-Rubio | ✅ YES | ✅ YES |
| 4035898488 | Alison Denny | Alison Denny | ✅ YES | ✅ YES |
| 4036045662 | Joe Cust | Joe Cust | ✅ YES | ✅ YES |
| 4036063187 | Debbie Parker | Debbie Parker | ✅ YES | ✅ YES |
| 4036069871 | Dali Festa | Dali Festa | ✅ YES | ✅ YES |
| 4036088548 | Lisa Wenman-Sturm | Lisa Wenman-Sturm | ✅ YES | ✅ YES |
| 4036144960 | Rakhee Damji | Rakhee Damji | ✅ YES | ✅ YES |
| 4036192449 | Sue Gulin | Sue Gulin | ✅ YES | ✅ YES |
| 4036604056 | Stephanie Parbhu | Stephanie Parbhu | ✅ YES | ✅ YES |
| 4036692604 | Robert Fraser | Robert Fraser | ✅ YES | ✅ YES |
| 4037015297 | Riley Hicks | Riley Hicks | ✅ YES | ✅ YES |
| 4037045422 | Joey Crisalli | Joey Crisalli | ✅ YES | ✅ YES |
| 4037104273 | Ryan Hyland | Ryan Hyland | ✅ YES | ✅ YES |
| 4037712521 | Cam Joyce | Cam Joyce | ✅ YES | ✅ YES |
| 4037763008 | Robert Fraser | Robert Fraser | ✅ YES | ✅ YES |
| 4037763017 | Riley Hicks | Riley Hicks | ✅ YES | ✅ YES |
| 4037763031 | Dan Nieuwenhuis | Dan Nieuwenhuis | ✅ YES | ✅ YES |
| 4037763032 | Byron Roberts | Byron Roberts | ✅ YES | ✅ YES |
| 4037763036 | Jessica Gacek | Jessica Gacek | ✅ YES | ✅ YES |
| 4037763037 | Rakhee Damji | Rakhee Damji | ✅ YES | ✅ YES |
| 4037763047 | Aaron Gruending | Aaron Gruending | ✅ YES | ✅ YES |
| 4037763049 | Candice Robinson-Horejsi | Candice Robinson-Horejsi | ✅ YES | ✅ YES |
| 4037763053 | Peachy Mendoza | Peachy Mendoza | ✅ YES | ✅ YES |
| 4037763059 | Kyla McMullin | Kyla McMullin | ✅ YES | ✅ YES |
| 4037763061 | Carla Watters | Carla Watters | ✅ YES | ✅ YES |
| 4037763065 | Travis Hawkins | Travis Hawkins | ✅ YES | ✅ YES |
| 4037763068 | Connor Murray | Connor Murray | ✅ YES | ✅ YES |
| 4037763082 | Karl Woolfsmith | Karl Woolfsmith | ✅ YES | ✅ YES |
| 4037763095 | James Lange | James Lange | ✅ YES | ✅ YES |
| 4037763096 | Bob Little | Bob Little | ✅ YES | ✅ YES |
| 4037763105 | Jose Ruiz | Jose Ruiz | ✅ YES | ✅ YES |
| 4037763118 | Karen Canon-Rubio | Karen Canon-Rubio | ✅ YES | ✅ YES |
| 4037763122 | Kevin Gertken | Kevin Gertken | ✅ YES | ✅ YES |
| 4037763132 | Melaniya Boyko | Melaniya Boyko | ✅ YES | ✅ YES |
| 4037763134 | Roger Hodges | Roger Hodges | ✅ YES | ✅ YES |
| 4037763136 | Derrick Hauser | Derrick Hauser | ✅ YES | ✅ YES |
| 4037763144 | Joel Campbell | Joel Campbell | ✅ YES | ✅ YES |
| 4037763147 | Beth Pollock | Beth Pollock | ✅ YES | ✅ YES |
| 4037763149 | Kristen Pintea | Kristen Pintea | ✅ YES | ✅ YES |
| 4037763151 | Cam Joyce | Cam Joyce | ✅ YES | ✅ YES |
| 4037763159 | Michael Zhou | Michael Zhou | ✅ YES | ✅ YES |
| 4037763164 | Eric Yeh | Eric Yeh | ✅ YES | ✅ YES |
| 4037763166 | Daniel Kutryk | Daniel Kutryk | ✅ YES | ✅ YES |
| 4037763168 | Alison Denny | Alison Denny | ✅ YES | ✅ YES |
| 4037763177 | Dee Nel | Dee Nel | ✅ YES | ✅ YES |
| 4037763185 | Goran Popovic | Goran Popovic | ✅ YES | ✅ YES |
| 4037763186 | Sheila Scott | Larissa Kurennaya; Mariane Cunningham | ❌ NO | ❌ NO |
| 4037763197 | Ryx Eco | Ryx Eco | ✅ YES | ✅ YES |
| 4037763198 | Mark Lyons | Mark Lyons | ✅ YES | ✅ YES |
| 4037812602 | Jackie Archibald | Jackie Archibald | ✅ YES | ✅ YES |
| 4037812610 | Alina Rusu | Alina Rusu | ✅ YES | ✅ YES |
| 4037812612 | Justine Exner | Justine Exner | ✅ YES | ✅ YES |
| 4037812616 | John Davis | John Davis | ✅ YES | ✅ YES |
| 4037812617 | Craig Lindsay | Craig Lindsay | ✅ YES | ✅ YES |
| 4037812618 | Bryce Neustaedter | Bryce Neustaedter | ✅ YES | ✅ YES |
| 4037812623 | Mike Morden | Mike Morden | ✅ YES | ✅ YES |
| 4037812627 | Jason Risk | Jason Risk | ✅ YES | ✅ YES |
| 4037812629 | Anjee Tocher | Anjee Tocher | ✅ YES | ✅ YES |
| 4037812634 | Jacky Law | Jacky Law | ✅ YES | ✅ YES |
| 4037812647 | Andrew Mackenzie | Andrew Mackenzie | ✅ YES | ✅ YES |
| 4037812661 | Nate L'Archeveque | Nate L'Archeveque | ✅ YES | ✅ YES |
| 4037812679 | Doug Szeto | Doug Szeto | ✅ YES | ✅ YES |
| 4037812685 | Mutasem Omer - Alhaj | Mutasem Omer - Alhaj | ✅ YES | ✅ YES |
| 4037812689 | Mandy Adamowski | Mandy Adamowski | ✅ YES | ✅ YES |
| 4037812693 | Patrick Slattery | Patrick Slattery | ✅ YES | ✅ YES |
| 4037812694 | Michele Jong | Michele Jong | ✅ YES | ✅ YES |
| 4037812808 | Tara Hingley | Tara Hingley | ✅ YES | ✅ YES |
| 4037812811 | Zack Poirier | Zack Poirier | ✅ YES | ✅ YES |
| 4037812820 | Michaela Greene | Michaela Greene | ✅ YES | ✅ YES |
| 4037812829 | Mataya Blakney | Mataya Blakney | ✅ YES | ✅ YES |
| 4037812844 | Ana Fedorov | Ana Fedorov | ✅ YES | ✅ YES |
| 4037812853 | Patrick Zajac | Patrick Zajac | ✅ YES | ✅ YES |
| 4037812854 | Sam Park | Sam Park | ✅ YES | ✅ YES |
| 4037812887 | Olivia Kwong | Olivia Kwong | ✅ YES | ✅ YES |
| 4037812892 | Wayne Abernethy | Wayne Abernethy | ✅ YES | ✅ YES |
| 4037965763 | Mike Morden | Mike Morden | ✅ YES | ✅ YES |
| 4037966018 | Karl Woolfsmith | Karl Woolfsmith | ✅ YES | ✅ YES |
| 4038052702 | Denise Bolduc | Denise Bolduc | ✅ YES | ✅ YES |
| 4038057984 | Alexis Gendra Garcia | Alexis Gendra Garcia | ✅ YES | ✅ YES |
| 4038075283 | Albert Huynh | Albert Huynh | ✅ YES | ✅ YES |
| 4038093052 | Justine Exner | Justine Exner | ✅ YES | ✅ YES |
| 4038136779 | Raj Benwait | Raj Benwait | ✅ YES | ✅ YES |
| 4038150927 | Ann Sauve | Ann Sauve | ✅ YES | ✅ YES |
| 4038265772 | Jocelyn Wegen | Jocelyn Wegen | ✅ YES | ✅ YES |
| 4038277956 | Josie Dos Santos | Josie Dos Santos | ✅ YES | ✅ YES |
| 4038289725 | Patrick Slattery | Patrick Slattery | ✅ YES | ✅ YES |
| 4038292242 | Robyn Hadley | Robyn Hadley | ✅ YES | ✅ YES |
| 4038294533 | Tom Hades | Tom Hades | ✅ YES | ✅ YES |
| 4038309624 | Ramiro Millan | Ramiro Millan | ✅ YES | ✅ YES |
| 4038315963 | Dustin Roberts | Dustin Roberts | ✅ YES | ✅ YES |
| 4038358716 | Dave Gosse | Dave Gosse | ✅ YES | ✅ YES |
| 4038364130 | Johnny Wong | Johnny Wong | ✅ YES | ✅ YES |
| 4038369052 | Tracey Lefaivre | Tracey Lefaivre | ✅ YES | ✅ YES |
| 4038370149 | Nathalie Wyman | Nathalie Wyman | ✅ YES | ✅ YES |
| 4038604775 | Sherron Weenk | Sherron Weenk | ✅ YES | ✅ YES |
| 4038611467 | Carson Ho | Carson Ho | ✅ YES | ✅ YES |
| 4038754865 | Trevor Boudreau | Trevor Boudreau | ✅ YES | ✅ YES |
| 4039215547 | Mataya Blakney | Mataya Blakney | ✅ YES | ✅ YES |
| 4039231140 | Darwin Margate | Darwin Margate | ✅ YES | ✅ YES |
| 4039236819 | Callie Ann Massee | Callie Ann Massee | ✅ YES | ✅ YES |
| 4039686518 | Bryce Neustaedter | Bryce Neustaedter | ✅ YES | ✅ YES |
| 4039691660 | Joshua Aguirre | Joshua Aguirre | ✅ YES | ✅ YES |
| 4039710474 | Ivan Burton | Ivan Burton | ✅ YES | ✅ YES |
| 4039734568 | Vic Lit Chung | Vic Lit Chung | ✅ YES | ✅ YES |
| 4039789149 | Jackie Archibald | Jackie Archibald | ✅ YES | ✅ YES |
| 4039912409 | Mike McNulty | Mike McNulty | ✅ YES | ✅ YES |
| 4039926478 | Beth Pollock | Beth Pollock | ✅ YES | ✅ YES |
| 4325274056 | Daniella Lara | Daniella Lara | ✅ YES | ✅ YES |
| 4325274120 | Greg Lingafelter | Greg Lingafelter | ✅ YES | ✅ YES |
| 4325274126 | Lance Woody | Lance Woody | ✅ YES | ✅ YES |
| 4325274141 | John Sandate | John Sandate | ✅ YES | ✅ YES |
| 4325274242 | Rene Perez Chaparro | Rene Perez Chaparro | ✅ YES | ✅ YES |
| 4325276553 | Terrie Rytter | Terrie Rytter | ✅ YES | ✅ YES |
| 4325276655 | Jesus Ornelas | Jesus Ornelas | ✅ YES | ✅ YES |
| 5872151137 | Eric Gilholme | Eric Gilholme | ✅ YES | ✅ YES |
| 5872160508 | Bolin Du | Bolin Du | ✅ YES | ✅ YES |
| 5872265968 | Nestor Cabral | Nestor Cabral | ✅ YES | ✅ YES |
| 5872272746 | Goran Popovic | Goran Popovic | ✅ YES | ✅ YES |
| 5872297219 | Riley Tracy-Gould | Riley Tracy-Gould | ✅ YES | ✅ YES |
| 5872560124 | Ishak Lutalo | Ishak Lutalo | ✅ YES | ✅ YES |
| 5873162603 | Mohamed Borhot | Mohamed Borhot | ✅ YES | ✅ YES |
| 5873182089 | Ella Figer-Parfett | Ella Figer-Parfett | ✅ YES | ✅ YES |
| 5873182725 | Jenah Lapida | Jenah Lapida | ✅ YES | ✅ YES |
| 5873355704 | Taylor Johnstone | Taylor Johnstone | ✅ YES | ✅ YES |
| 5873359154 | Jayson Oleschuk | Jayson Oleschuk | ✅ YES | ✅ YES |
| 5873403259 | Raya Kuznetsova | Raya Kuznetsova | ✅ YES | ✅ YES |
| 5873407770 | Jessie Chen | Jessie Chen | ✅ YES | ✅ YES |
| 5873419983 | Tsegaye Teketel | Tsegaye Teketel | ✅ YES | ✅ YES |
| 5873437486 | Kenton Bekkema | Kenton Bekkema | ✅ YES | ✅ YES |
| 5873578247 | Mike Arychuk | Mike Arychuk | ✅ YES | ✅ YES |
| 5874365314 | Ana Fedorov | Ana Fedorov | ✅ YES | ✅ YES |
| 5874366954 | Basim Abdalla | Basim Abdalla | ✅ YES | ✅ YES |
| 5874367083 | Kerry Wojcichowsky | Kerry Wojcichowsky | ✅ YES | ✅ YES |
| 5874374285 | Jessica Gacek | Jessica Gacek | ✅ YES | ✅ YES |
| 5874382571 | Jean-Claude Amyotte | Jean-Claude Amyotte | ✅ YES | ✅ YES |
| 5874385472 | Mark Lyons | Mark Lyons | ✅ YES | ✅ YES |
| 5875824518 | Andrew Arnold | Andrew Arnold | ✅ YES | ✅ YES |
| 5875827946 | Abby Czaikowski | Abby Czaikowski | ✅ YES | ✅ YES |
| 5875850391 | Colin Bennett | Colin Bennett | ✅ YES | ✅ YES |
| 5875863671 | Roger Hodges | Roger Hodges | ✅ YES | ✅ YES |
| 5877777814 | Mike Sampson | Mike Sampson | ✅ YES | ✅ YES |
| 5877856633 | Jen Tween | Jen Tween | ✅ YES | ✅ YES |
| 5878302382 | Cameron Ho | Cameron Ho | ✅ YES | ✅ YES |
| 5878347828 | James Lange | James Lange | ✅ YES | ✅ YES |
| 5878373402 | Mirela Hiti | Mirela Hiti | ✅ YES | ✅ YES |
| 5878928399 | Brandy McGrath | Brandy McGrath | ✅ YES | ✅ YES |
| 5878928849 | Alisa Denton | Alisa Denton | ✅ YES | ✅ YES |
| 5879437191 | Nancy Spratt | Nancy Spratt | ✅ YES | ✅ YES |
| 5879437192 | Cameron Ho | Cameron Ho | ✅ YES | ✅ YES |
| 5879991960 | Wayne Abernethy | Wayne Abernethy | ✅ YES | ✅ YES |
| 5879994228 | Ryx Eco | Ryx Eco | ✅ YES | ✅ YES |
| 7802189461 | Dean Olson | Dean Olson | ✅ YES | ✅ YES |
| 7802311448 | Andre Roehler | Andre Roehler | ✅ YES | ✅ YES |
| 7802321785 | Bill Hawes | Bill Hawes | ✅ YES | ✅ YES |
| 7802377921 | Toby Antony | Toby Antony | ✅ YES | ✅ YES |
| 7802378203 | Craig Makarowski | Craig Makarowski | ✅ YES | ✅ YES |
| 7802674026 | Darcy Smith | Darcy Smith | ✅ YES | ✅ YES |
| 7802677158 | Kienan O'Connor | Kienan O'Connor | ✅ YES | ✅ YES |
| 7803945962 | Jack Dzeryk | Jack Dzeryk | ✅ YES | ✅ YES |
| 7805129784 | Graham Creary | Graham Creary | ✅ YES | ✅ YES |
| 7805541658 | Andy Gazdewich | Andy Gazdewich | ✅ YES | ✅ YES |
| 7805685001 | Graham Creary | Graham Creary | ✅ YES | ✅ YES |
| 7805685002 | Kenton Bekkema | Kenton Bekkema | ✅ YES | ✅ YES |
| 7806682406 | Ben Golby | Ben Golby | ✅ YES | ✅ YES |
| 7806686231 | Brandon Carrier | Brandon Carrier | ✅ YES | ✅ YES |
| 7806914836 | Kajtek Wasaznik | Kajtek Wasaznik | ✅ YES | ✅ YES |
| 7807215676 | Tyson Armitage | Tyson Armitage | ✅ YES | ✅ YES |
| 7807811531 | Brandon Parsons | Brandon Parsons | ✅ YES | ✅ YES |
| 7808420756 | Kyle Newton | Kyle Newton | ✅ YES | ✅ YES |
| 7808688253 | Terelle Janzen | Terelle Janzen | ✅ YES | ✅ YES |
| 7808881028 | Jeff Watkins | Jeff Watkins | ✅ YES | ✅ YES |
| 7808881029 | Devin Trenerry | Devin Trenerry | ✅ YES | ✅ YES |
| 7808881044 | Kent Drager | Kent Drager | ✅ YES | ✅ YES |
| 7808881138 | Dale Delowski | Dale Delowski | ✅ YES | ✅ YES |
| 7808881393 | Kevin Buelow | Kevin Buelow | ✅ YES | ✅ YES |
| 7808885139 | Jeff Bell | Jeff Bell | ✅ YES | ✅ YES |
| 7808885174 | Steven MacKinnon | Steven MacKinnon | ✅ YES | ✅ YES |
| 7808885180 | Stephanie Maedel | Stephanie Maedel | ✅ YES | ✅ YES |
| 7808885203 | Amanda Baumgartner | Amanda Baumgartner | ✅ YES | ✅ YES |
| 7808885235 | Kim McMahon | Kim McMahon | ✅ YES | ✅ YES |
| 7808885243 | Nadine Danard | Nadine Danard | ✅ YES | ✅ YES |
| 7808885329 | Matt Miske | Matt Miske | ✅ YES | ✅ YES |
| 7808885344 | Sharjeel Zaib | Sharjeel Zaib | ✅ YES | ✅ YES |
| 7808885362 | Tyler Larson | Tyler Larson | ✅ YES | ✅ YES |
| 7808885367 | Bruce Baier | Bruce Baier | ✅ YES | ✅ YES |
| 7808885374 | Colin Scherger | Colin Scherger | ✅ YES | ✅ YES |
| 7808885413 | Wayne Jackson | Wayne Jackson | ✅ YES | ✅ YES |
| 7808885416 | Donna Head | Donna Head | ✅ YES | ✅ YES |
| 7808885631 | Shane Tomlinson | Shane Tomlinson | ✅ YES | ✅ YES |
| 7808885706 | Cory Checknita | Cory Checknita | ✅ YES | ✅ YES |
| 7808885877 | Cade Kemper | Cade Kemper | ✅ YES | ✅ YES |
| 7808885897 | Jeff Freadrich | Jeff Freadrich | ✅ YES | ✅ YES |
| 7808886088 | Tanner Sather | Tanner Sather | ✅ YES | ✅ YES |
| 7808887038 | Dana Hill | Dana Hill | ✅ YES | ✅ YES |
| 7808887120 | Jordan Mackay | Jordan Mackay | ✅ YES | ✅ YES |
| 7808887131 | David Russell | David Russell | ✅ YES | ✅ YES |
| 7808887157 | Dallan Hampshire | Dallan Hampshire | ✅ YES | ✅ YES |
| 7808887158 | Adam Clark | Adam Clark | ✅ YES | ✅ YES |
| 7808887185 | Corey Johnson | Corey Johnson | ✅ YES | ✅ YES |
| 7808887220 | Drew Bonin | Drew Bonin | ✅ YES | ✅ YES |
| 7808887286 | Erik Skoberg | Erik Skoberg | ✅ YES | ✅ YES |
| 7808887294 | Mitch MacKay | Mitch MacKay | ✅ YES | ✅ YES |
| 7808887425 | Dallas Bendfeld | Dallas Bendfeld | ✅ YES | ✅ YES |
| 7808887602 | Jim Schubada | Jim Schubada | ✅ YES | ✅ YES |
| 7808887614 | Grant Imlah | Grant Imlah | ✅ YES | ✅ YES |
| 7808887618 | Cody Johnson | Cody Johnson | ✅ YES | ✅ YES |
| 7808887934 | Rick Sather | Rick Sather | ✅ YES | ✅ YES |
| 7809058961 | Kevin Kromm | Kevin Kromm | ✅ YES | ✅ YES |
| 7809134737 | Lyle Young | Lyle Young | ✅ YES | ✅ YES |
| 7809844732 | PATRICK DOWER | Patrick Dower | ✅ YES | ✅ YES |
| 7809963824 | Travis Duperron | Travis Duperron | ✅ YES | ✅ YES |
| 7809966819 | Brad Foster | Brad Foster | ✅ YES | ✅ YES |
| 8257339031 | Caleb Zimmerman | Caleb Zimmerman | ✅ YES | ✅ YES |
| 8259451431 | Amy Liu | Amy Liu | ✅ YES | ✅ YES |
| 8326522962 | Connor Schoenhals | Connor Schoenhals | ✅ YES | ✅ YES |
| 8326522965 | Blake Hotzel | Blake Hotzel | ✅ YES | ✅ YES |
| 8326522966 | Andy Steck | Andy Steck | ✅ YES | ✅ YES |
| 8326522967 | Patrick Uhles | Patrick Uhles | ✅ YES | ✅ YES |
| 8326522968 | Ryan Brooks | Ryan Brooks | ✅ YES | ✅ YES |
| 8326522969 | Hayley Skie | Hayley Skie | ✅ YES | ✅ YES |
| 8326522970 | Kirby Johnson | Kirby Johnson | ✅ YES | ✅ YES |
| 8326522971 | Joseph Granado | Joseph Granado | ✅ YES | ✅ YES |
| 8326522972 | Joseph Kieval | Joseph Kieval | ✅ YES | ✅ YES |
| 8326522973 | Jerry James | Jerry James | ✅ YES | ✅ YES |
| 8326522974 | Andrew Morales | Andrew Morales | ✅ YES | ✅ YES |
| 8326522975 | Christopher Tanaka | Christopher Tanaka | ✅ YES | ✅ YES |
| 8326522978 | Jason Hill | Jason Hill | ✅ YES | ✅ YES |
| 8326522980 | Mia Green | Mia Green | ✅ YES | ✅ YES |
| 8326522982 | Kirk Lamson | Kirk Lamson | ✅ YES | ✅ YES |
| 8329933970 | Harris Brett | Harris Brett | ✅ YES | ✅ YES |

**Cross-Reference Summary:**
- Phone numbers with matching users: 449/450 (99.8%)
- Phone numbers with consistent status: 449/450 (99.8%)

## 📱 Phone Number Reassignments

✅ **No phone number reassignments detected** between Service Overview and Active Directory.

## 🚨 Critical Issues Requiring Immediate Attention

### 🔴 Users Who Should Be EXPIRED (187 found)

**💰 FINANCIAL IMPACT:** These are users NOT in Active Directory but we're still paying for their phone services.

| Phone Number | Service Overview User | Problem |
|--------------|----------------------|---------|
| 3063131700 | Brock Jackson | Service shows Active but phone not in AD |
| 3066313224 | Brock Wilcox | Service shows Active but phone not in AD |
| 3066813523 | MSJ CRUDE UNIT CHIEF EMERG LINE RB BLANCHETTE | Service shows Active but phone not in AD |
| 3066813557 | Jari Yrkki | Service shows Active but phone not in AD |
| 3066814283 | MJR EMERGENCY AREA JHENDER | Service shows Active but phone not in AD |
| 3066815348 | MJR MAINTENANCE (AREA) - CGAIR | Service shows Active but phone not in AD |
| 3066915757 | Moose Jaw Fax | Service shows Active but phone not in AD |
| 3613714212 | Keith Gary | Service shows Active but phone not in AD |
| 3613714215 | Antonio Garcia | Service shows Active but phone not in AD |
| 3613714218 | Jonathan Tamez | Service shows Active but phone not in AD |
| 3613714229 | Donato Gonzalez | Service shows Active but phone not in AD |
| 3613714351 | Bryan Stinnett | Service shows Active but phone not in AD |
| 3613714357 | Keith Gary | Service shows Active but phone not in AD |
| 3613714358 | Barry Duge | Service shows Active but phone not in AD |
| 3689952749 | HUB 2 HUB 2 | Service shows Active but phone not in AD |
| 4032064001 | Gibson Main Fax | Service shows Active but phone not in AD |
| 4032064010 | Reception Calgary HO physical phone | Service shows Active but phone not in AD |
| 4032064015 | HR fax - confidential | Service shows Active but phone not in AD |
| 4032064021 | Alaa Al-Eryani | Service shows Active but phone not in AD |
| 4032064028 | Barb Steele | Service shows Active but phone not in AD |
| 4032064039 | EHS OCC Health fax - confidential | Service shows Active but phone not in AD |
| 4032064044 | Raelyn West | Service shows Active but phone not in AD |
| 4032064052 | Patrick Clark | Service shows Active but phone not in AD |
| 4032064062 | Testing Deputy Director EOC queue | Service shows Active but phone not in AD |
| 4032064077 | Sydney Jones-Dunlop | Service shows Active but phone not in AD |
| 4032064088 | Kendra Rolheiser | Service shows Active but phone not in AD |
| 4032064089 | CGY 1725 Meeting Room | Service shows Active but phone not in AD |
| 4032064093 | Helene Forero | Service shows Active but phone not in AD |
| 4032064105 | AdminLine | Service shows Active but phone not in AD |
| 4032064116 | Christine Smith | Service shows Active but phone not in AD |
| 4032064118 | Janice Proctor | Service shows Active but phone not in AD |
| 4032064122 | Owen Breast | Service shows Active but phone not in AD |
| 4032064123 | Ksenia Kabanova | Service shows Active but phone not in AD |
| 4032064127 | Tammy Brehaut | Service shows Active but phone not in AD |
| 4032064135 | Elena Nistor | Service shows Active but phone not in AD |
| 4032064154 | CGY 1809 Meeting Room | Service shows Active but phone not in AD |
| 4032064156 | Pam Murphy | Service shows Active but phone not in AD |
| 4032064159 | 1598 - West Meeting Room | Service shows Active but phone not in AD |
| 4032064167 | Shaila Amreen | Service shows Active but phone not in AD |
| 4032064179 | Employee Services | Service shows Active but phone not in AD |
| 4032064191 | Genevieve Datoc | Service shows Active but phone not in AD |
| 4032064205 | ActionLine | Service shows Active but phone not in AD |
| 4032064211 | Finance fax | Service shows Active but phone not in AD |
| 4032064231 | Kristen Neundorf | Service shows Active but phone not in AD |
| 4032064242 | Hardisty Board Room PCC | Service shows Active but phone not in AD |
| 4032064252 | Wellsite Orders | Service shows Active but phone not in AD |
| 4032064267 | Rhonda Kottusch | Service shows Active but phone not in AD |
| 4032064295 | Anthony Singh | Service shows Active but phone not in AD |
| 4033054743 | Curtis Philippon | Service shows Active but phone not in AD |
| 4033121315 | Brady Kachur | Service shows Active but phone not in AD |
| 4033337852 | Sean Whelan | Service shows Active but phone not in AD |
| 4033543150 | Kristen Neundorf | Service shows Active but phone not in AD |
| 4033543632 | IPAD CORPORATE COMMUNICATIONS | Service shows Active but phone not in AD |
| 4033695206 | Vivienne Cline | Service shows Active but phone not in AD |
| 4033695762 | Eric Yeh | Service shows Active but phone not in AD |
| 4033696786 | Carter Cranmer-Smith | Service shows Active but phone not in AD |
| 4033696980 | Helene Forero | Service shows Active but phone not in AD |
| 4033702742 | GIBSON ENERGY | Service shows Active but phone not in AD |
| 4033711238 | Michelena Robinson | Service shows Active but phone not in AD |
| 4034089407 | IPAD CORPORATE | Service shows Active but phone not in AD |
| 4034373697 | Sydney Jones-Dunlop | Service shows Active but phone not in AD |
| 4034632123 | Cameron LaValley | Service shows Active but phone not in AD |
| 4034636526 | IT-ROBK I-BOYD | Service shows Active but phone not in AD |
| 4034639606 | Braden DeVries | Service shows Active but phone not in AD |
| 4034647089 | IT-ROBK A-CORP | Service shows Active but phone not in AD |
| 4034766334 | GIBSON ENERGY COMMUNICATIONS | Service shows Active but phone not in AD |
| 4034976328 | Rob Kaupp | Service shows Active but phone not in AD |
| 4035103040 | Sean Warner | Service shows Active but phone not in AD |
| 4035406471 | Chris Fanning | Service shows Active but phone not in AD |
| 4035540338 | Wyatt Albrecht | Service shows Active but phone not in AD |
| 4035618665 | Matt Heynen | Service shows Active but phone not in AD |
| 4035859901 | Jon Ozirny | Service shows Active but phone not in AD |
| 4036139038 | Anthony Singh | Service shows Active but phone not in AD |
| 4036507089 | Erin Seaman | Service shows Active but phone not in AD |
| 4036516604 | AVAILABLE AVAILABLE | Service shows Active but phone not in AD |
| 4036606174 | Olivia Kwong | Service shows Active but phone not in AD |
| 4036714440 | Jessica Ferguson | Service shows Active but phone not in AD |
| 4037763005 | 1477 - EOC Operations Room | Service shows Active but phone not in AD |
| 4037763009 | Deputy Director | Service shows Active but phone not in AD |
| 4037763026 | Logistics | Service shows Active but phone not in AD |
| 4037763027 | Dave Reschke | Service shows Active but phone not in AD |
| 4037763040 | CGY 1825 Meeting Room | Service shows Active but phone not in AD |
| 4037763070 | 1493 - Meeting Room | Service shows Active but phone not in AD |
| 4037763071 | Nicole Haddow | Service shows Active but phone not in AD |
| 4037763073 | Howell Pioquinto | Service shows Active but phone not in AD |
| 4037763077 | Investor Relations | Service shows Active but phone not in AD |
| 4037763088 | 1404 - Meeting Room | Service shows Active but phone not in AD |
| 4037763101 | EOC Command | Service shows Active but phone not in AD |
| 4037763107 | 1474 - EOC Communications Room | Service shows Active but phone not in AD |
| 4037763154 | Julie Lacoursiere | Service shows Active but phone not in AD |
| 4037763180 | 1426 - Break Out Room | Service shows Active but phone not in AD |
| 4037812621 | Marketing fax | Service shows Active but phone not in AD |
| 4037812625 | 1628 - Break Out Room | Service shows Active but phone not in AD |
| 4037812665 | CGY 1775 Meeting Room | Service shows Active but phone not in AD |
| 4037812678 | Sean Warner | Service shows Active but phone not in AD |
| 4037812681 | Accounts Payable | Service shows Active but phone not in AD |
| 4037812687 | 1402 - West Kitchen | Service shows Active but phone not in AD |
| 4037812690 | CGY 1625 Meeting Room | Service shows Active but phone not in AD |
| 4037812695 | Shelby Kirkpatrick | Service shows Active but phone not in AD |
| 4037812806 | 1803 - West Meeting Room | Service shows Active but phone not in AD |
| 4037812826 | 1690 - Mens Shower | Service shows Active but phone not in AD |
| 4037812840 | 1644 - Womens Shower | Service shows Active but phone not in AD |
| 4037812845 | 1798 - West Meeting Room | Service shows Active but phone not in AD |
| 4037812847 | 1654 - Fitness Room | Service shows Active but phone not in AD |
| 4037812868 | Matt Heynen | Service shows Active but phone not in AD |
| 4037812870 | 1786 - First Aid Room | Service shows Active but phone not in AD |
| 4037812873 | CGY 1875 Meeting Room | Service shows Active but phone not in AD |
| 4037812880 | CGY 1525 Meeting Room | Service shows Active but phone not in AD |
| 4038015048 | SCADA10. | Service shows Active but phone not in AD |
| 4038032974 | Anna Palmiere | Service shows Active but phone not in AD |
| 4038266965 | IT1 | Service shows Active but phone not in AD |
| 4038273358 | Patrick Clark | Service shows Active but phone not in AD |
| 4038600041 | Nicole Haddow | Service shows Active but phone not in AD |
| 4039789394 | Dave Reschke | Service shows Active but phone not in AD |
| 4039883919 | Danielle Arienzale | Service shows Active but phone not in AD |
| 4039937564 | CALLOUTBOX1 | Service shows Active but phone not in AD |
| 4325274053 | Bert Widner | Service shows Active but phone not in AD |
| 4325276565 | Yanin Garcia | Service shows Active but phone not in AD |
| 4325276611 | Victor Urias | Service shows Active but phone not in AD |
| 5872842916 | ZEBRA TABLET 1 | Service shows Active but phone not in AD |
| 5872842980 | ZEBRA TABLET 2 | Service shows Active but phone not in AD |
| 5872843013 | ZEBRA TABLET 3 | Service shows Active but phone not in AD |
| 5873156185 | CGY 1783 Meeting Room | Service shows Active but phone not in AD |
| 5873159291 | Pavel Jacobs | Service shows Active but phone not in AD |
| 5873162597 | Hardisty PCC 107 room | Service shows Active but phone not in AD |
| 5873164560 | Hardisty PCC 122 room | Service shows Active but phone not in AD |
| 5873167522 | Hardisty PCC 121 room | Service shows Active but phone not in AD |
| 5873168180 | CGY 1548 Meeting Room | Service shows Active but phone not in AD |
| 5873168701 | Hardisty PCC 102 room | Service shows Active but phone not in AD |
| 5873171501 | Deputy Director EOC test line | Service shows Active but phone not in AD |
| 5873378795 | Christina Ramsankar | Service shows Active but phone not in AD |
| 5873559789 | Andres Pico Mantilla | Service shows Active but phone not in AD |
| 5873559834 | Hardisty PCC 108 room | Service shows Active but phone not in AD |
| 5873578498 | Tyler Leibel | Service shows Active but phone not in AD |
| 5873858728 | Megan Kootenay West | Service shows Active but phone not in AD |
| 5874320283 | IT -ROBK I-CORP | Service shows Active but phone not in AD |
| 5874392367 | Tammy Brehaut | Service shows Active but phone not in AD |
| 5874398453 | IT - ROBK A-BOYD | Service shows Active but phone not in AD |
| 5875720733 | ZEBRA TABLET 4 | Service shows Active but phone not in AD |
| 5875725115 | ZEBRA TABLET 7 | Service shows Active but phone not in AD |
| 5875725125 | ZEBRA TABLET 8 | Service shows Active but phone not in AD |
| 5875725138 | ZEBRA TABLET 9 | Service shows Active but phone not in AD |
| 5875725163 | ZEBRA TABLET 10 | Service shows Active but phone not in AD |
| 5875725454 | ZEBRA TABLET 5 | Service shows Active but phone not in AD |
| 5875726971 | ZEBRA TABLET 6 | Service shows Active but phone not in AD |
| 5878370418 | Alaa Al-Eryani | Service shows Active but phone not in AD |
| 5878735571 | EDMONTONSCADA2 | Service shows Active but phone not in AD |
| 5878735578 | EDMONTONSCADA3 | Service shows Active but phone not in AD |
| 5878780715 | John Mitchell | Service shows Active but phone not in AD |
| 5878978351 | NIKOLAS KALANTZIS | Service shows Active but phone not in AD |
| 5879436527 | Teams Cloud Voice (Dedicated) | Service shows Active but phone not in AD |
| 5879436793 | RESERVATION | Service shows Active but phone not in AD |
| 5879437193 | Employee Services test | Service shows Active but phone not in AD |
| 5879437194 | Reception Test number | Service shows Active but phone not in AD |
| 5879998478 | SCADA20 | Service shows Active but phone not in AD |
| 7802036755 | SONIM2 | Service shows Active but phone not in AD |
| 7802339711 | Chad Helliwell | Service shows Active but phone not in AD |
| 7802847192 | KYLE NEWTON | Service shows Active but phone not in AD |
| 7803941174 | RAILDESK RAILDESK | Service shows Active but phone not in AD |
| 7804499773 | Edmonton Primary Fax to Email | Service shows Active but phone not in AD |
| 7805685000 | Kenton Bekkema | Service shows Active but phone not in AD |
| 7805685003 | Sexsmith 3 | Service shows Active but phone not in AD |
| 7805685004 | Sexsmith 4 | Service shows Active but phone not in AD |
| 7805685005 | Sexsmith 5 | Service shows Active but phone not in AD |
| 7805685006 | Sexsmith 6 | Service shows Active but phone not in AD |
| 7805685007 | Sexsmith 7 | Service shows Active but phone not in AD |
| 7805685008 | Sexsmith 8 | Service shows Active but phone not in AD |
| 7805685009 | Sexsmith 9 | Service shows Active but phone not in AD |
| 7805685010 | Sexsmith 10 | Service shows Active but phone not in AD |
| 7805685012 | Sexsmith 12 | Service shows Active but phone not in AD |
| 7805685013 | Sexsmith 13 | Service shows Active but phone not in AD |
| 7805685014 | Sexsmith 14 | Service shows Active but phone not in AD |
| 7807206155 | SONIM1 | Service shows Active but phone not in AD |
| 7808061244 | HUBHARDISTY | Service shows Active but phone not in AD |
| 7808885245 | Tanu Gopalka | Service shows Active but phone not in AD |
| 7808885365 | Mitch MacKay | Service shows Active but phone not in AD |
| 7808885450 | Jay Walline | Service shows Active but phone not in AD |
| 7808885624 | Justin Skerlak | Service shows Active but phone not in AD |
| 7808886347 | HARDISTY CT AREA | Service shows Active but phone not in AD |
| 7808887215 | HARDISTYCALLOUT | Service shows Active but phone not in AD |
| 7808887568 | Ken Martin | Service shows Active but phone not in AD |
| 7808887606 | Matt Martens | Service shows Active but phone not in AD |
| 8252960134 | Nadine | Service shows Active but phone not in AD |
| 8252960136 | DRU Operators Desk | Service shows Active but phone not in AD |
| 8252960137 | Donna | Service shows Active but phone not in AD |
| 8252960168 | DRU Spare Office | Service shows Active but phone not in AD |
| 8259793057 | ANCHORUSER | Service shows Active but phone not in AD |

**🔍 What These Entries Represent:**
- **Former Employees:** Left company but phone service still active
- **Service Accounts:** Shared numbers like 'SECURITY GUARD', 'MAINTENANCE'
- **Equipment Numbers:** Phones for elevators, boilers, common areas
- **Data Entry Errors:** Typos or formatting issues
- **Reassigned Numbers:** Phone given to new employee but not updated

**💡 Recommended Action:** Review each entry to determine if service should be cancelled or reassigned.

## 🎯 Recommended Actions

### Immediate Priority (High Impact)

2. **Review 187 users marked as active**
   - Cross-reference with UserManagement.csv for verification
   - Check for phone number reassignments
   - Identify service accounts vs actual users

3. **Clean up 277 duplicate records**
   - Remove duplicate entries from People database
   - Ensure processor doesn't create new duplicates

## 🚀 Strategic Recommendations

### 💰 Cost Optimization (High Priority)
1. **Audit Expired Services** - Review 187 services marked as active but not in AD
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
