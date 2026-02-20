-- SpikeFli Phone Assignment Fixes
-- Generated: 2026-02-17 15:17:06
-- Customer ID: 0000000119
-- Client: Gibson Energy
-- Phone assignment issues to fix: 56
-- These phones are assigned to expired users but belong to active AD employees
-- Solution: INSERT new AD users (if needed) + UPDATE ServiceDetails

-- CRITICAL: Review this SQL before execution!
-- This script will create new People records and reassign phone numbers

BEGIN TRANSACTION;

-- ================================================================================
-- PRE-EXECUTION INFORMATION
-- ================================================================================

PRINT 'Starting phone assignment fixes...'
PRINT 'This script handles both new users (INSERT) and existing users (phone reassignment only)'
-- ================================================================================
-- STEP 1: INSERT NEW PEOPLE RECORDS (only if they don't exist)
-- ================================================================================

-- Insert Linda Song ONLY if they don't already exist (for phone 4032064008)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Linda Song')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Linda Song', 20),
        'Qian.Song@gibsonenergy.com',
        '4032064008',
        '',
        'Terminals & Pipelines Accounting',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Marie Phan',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Linda Song';
END
ELSE
BEGIN
    PRINT 'User already exists: Linda Song - will update phone assignments only';
END;

-- Insert Moein Ghavi ONLY if they don't already exist (for phone 4032064012)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Moein Ghavi')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Moein Ghavi', 20),
        'Moein.Ghavi@gibsonenergy.com',
        '4032064012',
        '',
        'Information Services',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Erik Skoberg',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Moein Ghavi';
END
ELSE
BEGIN
    PRINT 'User already exists: Moein Ghavi - will update phone assignments only';
END;

-- Insert Colin Bennett ONLY if they don't already exist (for phone 4032064013)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Colin Bennett')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Colin Bennett', 20),
        'Colin.Bennett.2@gibsonenergy.com',
        '4032064013',
        '5875850391',
        'Engineering',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Nadine Danard',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Colin Bennett';
END
ELSE
BEGIN
    PRINT 'User already exists: Colin Bennett - will update phone assignments only';
END;

-- Insert Johnny Wong ONLY if they don't already exist (for phone 4032064014)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Johnny Wong')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Johnny Wong', 20),
        'Johnny.Wong.3@gibsonenergy.com',
        '4032064014',
        '4038364130',
        'Commodity Risk Management',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Raya Kuznetsova',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Johnny Wong';
END
ELSE
BEGIN
    PRINT 'User already exists: Johnny Wong - will update phone assignments only';
END;

-- Insert Caleb Zimmerman ONLY if they don't already exist (for phone 4032064024)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Caleb Zimmerman')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Caleb Zimmerman', 20),
        'Caleb.Zimmerman@gibsonenergy.com',
        '4032064024',
        '8257339031',
        'Producer Services - Canada',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Byron Roberts',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Caleb Zimmerman';
END
ELSE
BEGIN
    PRINT 'User already exists: Caleb Zimmerman - will update phone assignments only';
END;

-- Insert Andrew Holowaychuk ONLY if they don't already exist (for phone 4032064026)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Andrew Holowaychuk')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Andrew Holowaychuk', 20),
        'Andrew.Holowaychuk@gibsonenergy.com',
        '4032064026',
        '4034794154',
        'Engineering',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Candice RobinsonHorejsi',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Andrew Holowaychuk';
END
ELSE
BEGIN
    PRINT 'User already exists: Andrew Holowaychuk - will update phone assignments only';
END;

-- Insert Mariah Butler ONLY if they don't already exist (for phone 4032064034)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Mariah Butler')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Mariah Butler', 20),
        'Mariah.Butler@gibsonenergy.com',
        '4032064034',
        '4035549132',
        'Logistics - Pipeline',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Travis Hawkins',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Mariah Butler';
END
ELSE
BEGIN
    PRINT 'User already exists: Mariah Butler - will update phone assignments only';
END;

-- Insert Marissa Nelson ONLY if they don't already exist (for phone 4032064035)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Marissa Nelson')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Marissa Nelson', 20),
        'Marissa.Nelson.1@gibsonenergy.com',
        '4032064035',
        '',
        'Finance Systems & Shared Services',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Jason Risk',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Marissa Nelson';
END
ELSE
BEGIN
    PRINT 'User already exists: Marissa Nelson - will update phone assignments only';
END;

-- Insert Dan Stoffman ONLY if they don't already exist (for phone 4032064036)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Dan Stoffman')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Dan Stoffman', 20),
        'Daniel.Stoffman@gibsonenergy.com',
        '4032064036',
        '4033541817',
        'Engineering',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Mirela Hiti',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Dan Stoffman';
END
ELSE
BEGIN
    PRINT 'User already exists: Dan Stoffman - will update phone assignments only';
END;

-- Insert Curtis Philippon ONLY if they don't already exist (for phone 4032064040)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Curtis Philippon')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Curtis Philippon', 20),
        'Curtis.Philippon@gibsonenergy.com',
        '4032064040',
        '4038521070',
        'President/CEO',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'nan',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Curtis Philippon';
END
ELSE
BEGIN
    PRINT 'User already exists: Curtis Philippon - will update phone assignments only';
END;

-- Insert Eric Gilholme ONLY if they don't already exist (for phone 4032064043)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Eric Gilholme')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Eric Gilholme', 20),
        'Eric.Gilholme@gibsonenergy.com',
        '4032064043',
        '5872151137',
        'Marketing and Trading',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Travis Hawkins',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Eric Gilholme';
END
ELSE
BEGIN
    PRINT 'User already exists: Eric Gilholme - will update phone assignments only';
END;

-- Insert Bharat Bodawala ONLY if they don't already exist (for phone 4032064046)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Bharat Bodawala')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Bharat Bodawala', 20),
        'Bharat.Bodawala.1@gibsonenergy.com',
        '4032064046',
        '',
        'Project Controls',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Guru Pandya',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Bharat Bodawala';
END
ELSE
BEGIN
    PRINT 'User already exists: Bharat Bodawala - will update phone assignments only';
END;

-- Insert Andrew Arnold ONLY if they don't already exist (for phone 4032064047)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Andrew Arnold')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Andrew Arnold', 20),
        'Andrew.Arnold@gibsonenergy.com',
        '4032064047',
        '5875824518',
        'Commercial Development',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Ryan Hyland',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Andrew Arnold';
END
ELSE
BEGIN
    PRINT 'User already exists: Andrew Arnold - will update phone assignments only';
END;

-- Insert Kendra Hand ONLY if they don't already exist (for phone 4032064050)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Kendra Hand')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Kendra Hand', 20),
        'Kendra.Hand@gibsonenergy.com',
        '4032064050',
        '4033693671',
        'Supply Chain Management',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Mirela Hiti',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Kendra Hand';
END
ELSE
BEGIN
    PRINT 'User already exists: Kendra Hand - will update phone assignments only';
END;

-- Insert Dave Artuz ONLY if they don't already exist (for phone 4032064051)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Dave Artuz')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Dave Artuz', 20),
        'Dave.Artuz@gibsonenergy.com',
        '4032064051',
        '4035892575',
        'Refined Products - Canada',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Goran Popovic',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Dave Artuz';
END
ELSE
BEGIN
    PRINT 'User already exists: Dave Artuz - will update phone assignments only';
END;

-- Insert Collin Merritt ONLY if they don't already exist (for phone 4032064053)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Collin Merritt')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Collin Merritt', 20),
        'Collin.Merritt@gibsonenergy.com',
        '4032064053',
        '',
        'Capital Markets & Corporate Development',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Cameron LaValley',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Collin Merritt';
END
ELSE
BEGIN
    PRINT 'User already exists: Collin Merritt - will update phone assignments only';
END;

-- Insert Ashley Jung ONLY if they don't already exist (for phone 4032064060)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Ashley Jung')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Ashley Jung', 20),
        'Ashley.Jung@gibsonenergy.com',
        '4032064060',
        '',
        'Volumetric Management',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Nathan LArcheveque',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Ashley Jung';
END
ELSE
BEGIN
    PRINT 'User already exists: Ashley Jung - will update phone assignments only';
END;

-- Insert Trevor Boudreau ONLY if they don't already exist (for phone 4032064061)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Trevor Boudreau')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Trevor Boudreau', 20),
        'Trevor.Boudreau@gibsonenergy.com',
        '4032064061',
        '4038754865',
        'Marketing and Trading',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Travis Hawkins',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Trevor Boudreau';
END
ELSE
BEGIN
    PRINT 'User already exists: Trevor Boudreau - will update phone assignments only';
END;

-- Insert Amy Liu ONLY if they don't already exist (for phone 4032064063)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Amy Liu')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Amy Liu', 20),
        'Yiming.Liu.1@gibsonenergy.com',
        '4032064063',
        '8259451431',
        'Tax',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Erin Seaman',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Amy Liu';
END
ELSE
BEGIN
    PRINT 'User already exists: Amy Liu - will update phone assignments only';
END;

-- Insert Tom Hades ONLY if they don't already exist (for phone 4032064067)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Tom Hades')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Tom Hades', 20),
        'Tom.Hades@gibsonenergy.com',
        '4032064067',
        '4038294533',
        'Capital Markets & Corporate Development',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Beth Pollock',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Tom Hades';
END
ELSE
BEGIN
    PRINT 'User already exists: Tom Hades - will update phone assignments only';
END;

-- Insert Michelena Robinson ONLY if they don't already exist (for phone 4032064072)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Michelena Robinson')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Michelena Robinson', 20),
        'Michelena.Robinson@gibsonenergy.com',
        '4032064072',
        '',
        'Producer Services - Canada',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Byron Roberts',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Michelena Robinson';
END
ELSE
BEGIN
    PRINT 'User already exists: Michelena Robinson - will update phone assignments only';
END;

-- Insert Cameron LaValley ONLY if they don't already exist (for phone 4032064078)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Cameron LaValley')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Cameron LaValley', 20),
        'Cameron.LaValley@gibsonenergy.com',
        '4032064078',
        '',
        'Commodity Risk Management',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Riley Hicks',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Cameron LaValley';
END
ELSE
BEGIN
    PRINT 'User already exists: Cameron LaValley - will update phone assignments only';
END;

-- Insert Ryan Hyland ONLY if they don't already exist (for phone 4032064081)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Ryan Hyland')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Ryan Hyland', 20),
        'Ryan.Hyland@gibsonenergy.com',
        '4032064081',
        '4037104273',
        'Commercial Development',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Kelly Holtby',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Ryan Hyland';
END
ELSE
BEGIN
    PRINT 'User already exists: Ryan Hyland - will update phone assignments only';
END;

-- Insert Gradyn Pertson ONLY if they don't already exist (for phone 4032064082)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Gradyn Pertson')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Gradyn Pertson', 20),
        'Gradyn.Pertson.1@gibsonenergy.com',
        '4032064082',
        '',
        'Corporate Development',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Helene Forero',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Gradyn Pertson';
END
ELSE
BEGIN
    PRINT 'User already exists: Gradyn Pertson - will update phone assignments only';
END;

-- Insert Brandon Kwong ONLY if they don't already exist (for phone 4032064094)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Brandon Kwong')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Brandon Kwong', 20),
        'Brandon.Kwong@gibsonenergy.com',
        '4032064094',
        '4033543562',
        'Treasury',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Tom Hades',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Brandon Kwong';
END
ELSE
BEGIN
    PRINT 'User already exists: Brandon Kwong - will update phone assignments only';
END;

-- Insert Kerry Wojcichowsky ONLY if they don't already exist (for phone 4032064095)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Kerry Wojcichowsky')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Kerry Wojcichowsky', 20),
        'Kerry.Wojcichowsky@gibsonenergy.com',
        '4032064095',
        '5874367083',
        'EH&S Program',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Tara Hingley',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Kerry Wojcichowsky';
END
ELSE
BEGIN
    PRINT 'User already exists: Kerry Wojcichowsky - will update phone assignments only';
END;

-- Insert Sasha Longley ONLY if they don't already exist (for phone 4032064097)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Sasha Longley')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Sasha Longley', 20),
        'Sasha.Longley@gibsonenergy.com',
        '4032064097',
        '',
        'Marketing Deals & Data',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Vivienne Cline',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Sasha Longley';
END
ELSE
BEGIN
    PRINT 'User already exists: Sasha Longley - will update phone assignments only';
END;

-- Insert Halima Awaiye ONLY if they don't already exist (for phone 4032064098)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Halima Awaiye')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Halima Awaiye', 20),
        'Halima.Awaiye@gibsonenergy.com',
        '4032064098',
        '',
        'Information Services',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Erik Skoberg',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Halima Awaiye';
END
ELSE
BEGIN
    PRINT 'User already exists: Halima Awaiye - will update phone assignments only';
END;

-- Insert Jamie Schrader ONLY if they don't already exist (for phone 4032064102)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Jamie Schrader')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Jamie Schrader', 20),
        'Jamie.Schrader@gibsonenergy.com',
        '4032064102',
        '4034631198',
        'Human Resources',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Brandy McGrath',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Jamie Schrader';
END
ELSE
BEGIN
    PRINT 'User already exists: Jamie Schrader - will update phone assignments only';
END;

-- Insert Jon Ozirny ONLY if they don't already exist (for phone 4032064103)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Jon Ozirny')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Jon Ozirny', 20),
        'Jon.Ozirny@gibsonenergy.com',
        '4032064103',
        '',
        'Legal Services',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Curtis Philippon',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Jon Ozirny';
END
ELSE
BEGIN
    PRINT 'User already exists: Jon Ozirny - will update phone assignments only';
END;

-- Insert Selena Sun ONLY if they don't already exist (for phone 4032064104)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Selena Sun')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Selena Sun', 20),
        'Selena.Sun.2@gibsonenergy.com',
        '4032064104',
        '',
        'Marketing Accounting',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Doug Szeto',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Selena Sun';
END
ELSE
BEGIN
    PRINT 'User already exists: Selena Sun - will update phone assignments only';
END;

-- Insert Carson Ho ONLY if they don't already exist (for phone 4032064106)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Carson Ho')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Carson Ho', 20),
        'Carson.Ho@gibsonenergy.com',
        '4032064106',
        '4038611467',
        'Information Services',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Mohamed Borhot',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Carson Ho';
END
ELSE
BEGIN
    PRINT 'User already exists: Carson Ho - will update phone assignments only';
END;

-- Insert Erin Seaman ONLY if they don't already exist (for phone 4032064110)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Erin Seaman')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Erin Seaman', 20),
        'Erin.Seaman@gibsonenergy.com',
        '4032064110',
        '',
        'Tax',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Riley Hicks',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Erin Seaman';
END
ELSE
BEGIN
    PRINT 'User already exists: Erin Seaman - will update phone assignments only';
END;

-- Insert Alexis Gendra Garcia ONLY if they don't already exist (for phone 4032064113)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Alexis Gendra Garcia')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Alexis Gendra Garcia', 20),
        'Alexis.GendraGarcia@gibsonenergy.com',
        '4032064113',
        '4038057984',
        'Trading - Canada',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Travis Hawkins',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Alexis Gendra Garcia';
END
ELSE
BEGIN
    PRINT 'User already exists: Alexis Gendra Garcia - will update phone assignments only';
END;

-- Insert Cindy Ly ONLY if they don't already exist (for phone 4032064114)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Cindy Ly')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Cindy Ly', 20),
        'Cindy.Ly@gibsonenergy.com',
        '4032064114',
        '',
        'Governance, Enterprise Risk and Assurance',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Anthony Singh',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Cindy Ly';
END
ELSE
BEGIN
    PRINT 'User already exists: Cindy Ly - will update phone assignments only';
END;

-- Insert Isaac Datoc ONLY if they don't already exist (for phone 4032064124)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Isaac Datoc')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Isaac Datoc', 20),
        'Isaac.Datoc.1@gibsonenergy.com',
        '4032064124',
        '',
        'Information Services',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Ramiro Millan',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Isaac Datoc';
END
ELSE
BEGIN
    PRINT 'User already exists: Isaac Datoc - will update phone assignments only';
END;

-- Insert Marc Rowe ONLY if they don't already exist (for phone 4032064131)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Marc Rowe')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Marc Rowe', 20),
        'Marc.Rowe.1@gibsonenergy.com',
        '4032064131',
        '',
        'Asset Information and Land Management',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Sherron Weenk',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Marc Rowe';
END
ELSE
BEGIN
    PRINT 'User already exists: Marc Rowe - will update phone assignments only';
END;

-- Insert Joey Crisalli ONLY if they don't already exist (for phone 4032064133)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Joey Crisalli')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Joey Crisalli', 20),
        'Joey.Crisalli@gibsonenergy.com',
        '4032064133',
        '4037045422',
        'Commercial Operations',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Taylor Johnstone',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Joey Crisalli';
END
ELSE
BEGIN
    PRINT 'User already exists: Joey Crisalli - will update phone assignments only';
END;

-- Insert Rob Kaupp ONLY if they don't already exist (for phone 4032064141)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Rob Kaupp')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Rob Kaupp', 20),
        'Robert.Kaupp@gibsonenergy.com',
        '4032064141',
        '4034976328',
        'Logistics - Rail & Truck',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'JeanClaude Amyotte',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Rob Kaupp';
END
ELSE
BEGIN
    PRINT 'User already exists: Rob Kaupp - will update phone assignments only';
END;

-- Insert Dan Stoffman ONLY if they don't already exist (for phone 4033541817)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Dan Stoffman')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Dan Stoffman', 20),
        'Daniel.Stoffman@gibsonenergy.com',
        '4033541817',
        '4033541817',
        'Engineering',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Mirela Hiti',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Dan Stoffman';
END
ELSE
BEGIN
    PRINT 'User already exists: Dan Stoffman - will update phone assignments only';
END;

-- Insert Brandon Kwong ONLY if they don't already exist (for phone 4033543562)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Brandon Kwong')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Brandon Kwong', 20),
        'Brandon.Kwong@gibsonenergy.com',
        '4033543562',
        '4033543562',
        'Treasury',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Tom Hades',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Brandon Kwong';
END
ELSE
BEGIN
    PRINT 'User already exists: Brandon Kwong - will update phone assignments only';
END;

-- Insert Carey Kofluk ONLY if they don't already exist (for phone 4033715608)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Carey Kofluk')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Carey Kofluk', 20),
        'Carey.Kofluk@gibsonenergy.com',
        '4033715608',
        '4033715608',
        'Lab - Edmonton',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Terelle Janzen',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Carey Kofluk';
END
ELSE
BEGIN
    PRINT 'User already exists: Carey Kofluk - will update phone assignments only';
END;

-- Insert Atif Qayyum ONLY if they don't already exist (for phone 4034627921)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Atif Qayyum')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Atif Qayyum', 20),
        'Atif.Qayyum@gibsonenergy.com',
        '4034627921',
        '4034627921',
        'Engineering',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Nadine Danard',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Atif Qayyum';
END
ELSE
BEGIN
    PRINT 'User already exists: Atif Qayyum - will update phone assignments only';
END;

-- Insert Joey Crisalli ONLY if they don't already exist (for phone 4037045422)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Joey Crisalli')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Joey Crisalli', 20),
        'Joey.Crisalli@gibsonenergy.com',
        '4037045422',
        '4037045422',
        'Commercial Operations',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Taylor Johnstone',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Joey Crisalli';
END
ELSE
BEGIN
    PRINT 'User already exists: Joey Crisalli - will update phone assignments only';
END;

-- Insert Tom Hades ONLY if they don't already exist (for phone 4038294533)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Tom Hades')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Tom Hades', 20),
        'Tom.Hades@gibsonenergy.com',
        '4038294533',
        '4038294533',
        'Capital Markets & Corporate Development',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Beth Pollock',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Tom Hades';
END
ELSE
BEGIN
    PRINT 'User already exists: Tom Hades - will update phone assignments only';
END;

-- Insert Dave Gosse ONLY if they don't already exist (for phone 4038358716)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Dave Gosse')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Dave Gosse', 20),
        'Dave.Gosse@gibsonenergy.com',
        '4038358716',
        '4038358716',
        'Operations & Engineering',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Curtis Philippon',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Dave Gosse';
END
ELSE
BEGIN
    PRINT 'User already exists: Dave Gosse - will update phone assignments only';
END;

-- Insert John Sandate ONLY if they don't already exist (for phone 4325274141)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'John Sandate')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('John Sandate', 20),
        'John.Sandate@gibsonenergy.com',
        '4325274141',
        '',
        'US Operations - Wink',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Bert Widner',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: John Sandate';
END
ELSE
BEGIN
    PRINT 'User already exists: John Sandate - will update phone assignments only';
END;

-- Insert Kerry Wojcichowsky ONLY if they don't already exist (for phone 5874367083)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Kerry Wojcichowsky')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Kerry Wojcichowsky', 20),
        'Kerry.Wojcichowsky@gibsonenergy.com',
        '5874367083',
        '5874367083',
        'EH&S Program',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Tara Hingley',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Kerry Wojcichowsky';
END
ELSE
BEGIN
    PRINT 'User already exists: Kerry Wojcichowsky - will update phone assignments only';
END;

-- Insert Tyson Armitage ONLY if they don't already exist (for phone 7807215676)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Tyson Armitage')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Tyson Armitage', 20),
        'Tyson.Armitage@gibsonenergy.com',
        '7807215676',
        '7807215676',
        'EH&S Field Support',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Karl Woolfsmith',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Tyson Armitage';
END
ELSE
BEGIN
    PRINT 'User already exists: Tyson Armitage - will update phone assignments only';
END;

-- Insert Connor Schoenhals ONLY if they don't already exist (for phone 8326522962)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Connor Schoenhals')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Connor Schoenhals', 20),
        'Connor.Schoenhals@gibsonenergy.com',
        '8326522962',
        '8324700574',
        'US Commercial Development',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Andrew Morales',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Connor Schoenhals';
END
ELSE
BEGIN
    PRINT 'User already exists: Connor Schoenhals - will update phone assignments only';
END;

-- Insert Blake Hotzel ONLY if they don't already exist (for phone 8326522965)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Blake Hotzel')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Blake Hotzel', 20),
        'Blake.Hotzel@gibsonenergy.com',
        '8326522965',
        '',
        'US Commercial Development',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Curtis Philippon',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Blake Hotzel';
END
ELSE
BEGIN
    PRINT 'User already exists: Blake Hotzel - will update phone assignments only';
END;

-- Insert Patrick Uhles ONLY if they don't already exist (for phone 8326522967)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Patrick Uhles')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Patrick Uhles', 20),
        'Patrick.Uhles@gibsonenergy.com',
        '8326522967',
        '',
        'US Crude Oil Exports',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Andrew Kaplun',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Patrick Uhles';
END
ELSE
BEGIN
    PRINT 'User already exists: Patrick Uhles - will update phone assignments only';
END;

-- Insert Ryan Brooks ONLY if they don't already exist (for phone 8326522968)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Ryan Brooks')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Ryan Brooks', 20),
        'Ryan.Brooks.2@gibsonenergy.com',
        '8326522968',
        '',
        'Engineering',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Daniel Stoffman',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Ryan Brooks';
END
ELSE
BEGIN
    PRINT 'User already exists: Ryan Brooks - will update phone assignments only';
END;

-- Insert Hayley Skie ONLY if they don't already exist (for phone 8326522969)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Hayley Skie')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Hayley Skie', 20),
        'Hayley.Skie@gibsonenergy.com',
        '8326522969',
        '',
        'US Business Development',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Harris Brett',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Hayley Skie';
END
ELSE
BEGIN
    PRINT 'User already exists: Hayley Skie - will update phone assignments only';
END;

-- Insert Jerry James ONLY if they don't already exist (for phone 8326522973)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Jerry James')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Jerry James', 20),
        'Jerry.James@gibsonenergy.com',
        '8326522973',
        '',
        'Measurement and Product Quality',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'David Russell',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Jerry James';
END
ELSE
BEGIN
    PRINT 'User already exists: Jerry James - will update phone assignments only';
END;

-- Insert Andrew Morales ONLY if they don't already exist (for phone 8326522974)
IF NOT EXISTS (SELECT 1 FROM C_0000000119_People WHERE username = 'Andrew Morales')
BEGIN
    INSERT INTO C_0000000119_People (
        status, isPerson, lastdate, userid, username, email,
        phone1, phone2, OU, [Group], GL1, GL2, Location, isMgr, isExec, mgrlevel, mgr,
        LinkType, TS, Modified
    ) VALUES (
        'Active',
        1,
        '202601',
        'nan',
        LEFT('Andrew Morales', 20),
        'Andrew.Morales@gibsonenergy.com',
        '8326522974',
        '',
        'US Business Development',
        'nan',
        'Microsoft.ActiveDirectory.Management.ADPropertyValueCollection',
        'nan',
        'nan',
        0,
        0,
        '',
        'Blake Hotzel',
        'AD',
        GETDATE(),
        '202601'
    );
    PRINT 'Inserted new user: Andrew Morales';
END
ELSE
BEGIN
    PRINT 'User already exists: Andrew Morales - will update phone assignments only';
END;

-- ================================================================================
-- PREVIEW: WHAT WILL BE CHANGED
-- ================================================================================

PRINT 'PREVIEW OF CHANGES:'
PRINT 'Phone 4032064008: Steve Spaulding → Linda Song (202601 & 202512 only)'
PRINT 'Phone 4032064012: Kunal Vora → Moein Ghavi (202601 & 202512 only)'
PRINT 'Phone 4032064013: Ismail Soaga → Colin Bennett (202601 & 202512 only)'
PRINT 'Phone 4032064014: Ryan Connell → Johnny Wong (202601 & 202512 only)'
PRINT 'Phone 4032064024: Mathieu LeMessurier → Caleb Zimmerman (202601 & 202512 only)'
PRINT 'Phone 4032064026: Sheila Darragh → Andrew Holowaychuk (202601 & 202512 only)'
PRINT 'Phone 4032064034: Micaelin Caskey → Mariah Butler (202601 & 202512 only)'
PRINT 'Phone 4032064035: Rodrigo Valenzuela → Marissa Nelson (202601 & 202512 only)'
PRINT 'Phone 4032064036: Sydney Hejtmanek → Dan Stoffman (202601 & 202512 only)'
PRINT 'Phone 4032064040: Maggie Davidson → Curtis Philippon (202601 & 202512 only)'
PRINT 'Phone 4032064043: Joslyn Tokarchuk → Eric Gilholme (202601 & 202512 only)'
PRINT 'Phone 4032064046: Sable LeBlanc-Fortin → Bharat Bodawala (202601 & 202512 only)'
PRINT 'Phone 4032064047: Frank Vanden Elsen → Andrew Arnold (202601 & 202512 only)'
PRINT 'Phone 4032064050: Sureiya Hasham → Kendra Hand (202601 & 202512 only)'
PRINT 'Phone 4032064051: Eldon Wig → Dave Artuz (202601 & 202512 only)'
PRINT 'Phone 4032064053: Breanna Triebel → Collin Merritt (202601 & 202512 only)'
PRINT 'Phone 4032064060: Faustina Schmid → Ashley Jung (202601 & 202512 only)'
PRINT 'Phone 4032064061: Gradyn Pertson → Trevor Boudreau (202601 & 202512 only)'
PRINT 'Phone 4032064063: Hunter Weber → Amy Liu (202601 & 202512 only)'
PRINT 'Phone 4032064067: Olivia Monarrez → Tom Hades (202601 & 202512 only)'
PRINT 'Phone 4032064072: Renae McArthur → Michelena Robinson (202601 & 202512 only)'
PRINT 'Phone 4032064078: Ian Carr → Cameron LaValley (202601 & 202512 only)'
PRINT 'Phone 4032064081: Rachel Wong → Ryan Hyland (202601 & 202512 only)'
PRINT 'Phone 4032064082: Jacy Hingley → Gradyn Pertson (202601 & 202512 only)'
PRINT 'Phone 4032064094: Isaac Maslin → Brandon Kwong (202601 & 202512 only)'
PRINT 'Phone 4032064095: Sarah Clarke → Kerry Wojcichowsky (202601 & 202512 only)'
PRINT 'Phone 4032064097: Daylen Wathen → Sasha Longley (202601 & 202512 only)'
PRINT 'Phone 4032064098: Ashley Bowman → Halima Awaiye (202601 & 202512 only)'
PRINT 'Phone 4032064102: Patrick Inglis → Jamie Schrader (202601 & 202512 only)'
PRINT 'Phone 4032064103: Kaitlyn Chan → Jon Ozirny (202601 & 202512 only)'
PRINT 'Phone 4032064104: Jessica Stevens → Selena Sun (202601 & 202512 only)'
PRINT 'Phone 4032064106: Isabella Engbers → Carson Ho (202601 & 202512 only)'
PRINT 'Phone 4032064110: Nicole McArthur → Erin Seaman (202601 & 202512 only)'
PRINT 'Phone 4032064113: Lauren Vernon → Alexis Gendra Garcia (202601 & 202512 only)'
PRINT 'Phone 4032064114: Ethan Kalhs → Cindy Ly (202601 & 202512 only)'
PRINT 'Phone 4032064124: Tanya Fougere → Isaac Datoc (202601 & 202512 only)'
PRINT 'Phone 4032064131: Zack Weenk → Marc Rowe (202601 & 202512 only)'
PRINT 'Phone 4032064133: Mark Fairservice → Joey Crisalli (202601 & 202512 only)'
PRINT 'Phone 4032064141: Christie Hall → Rob Kaupp (202601 & 202512 only)'
PRINT 'Phone 4033541817: Evan Capatos → Dan Stoffman (202601 & 202512 only)'
PRINT 'Phone 4033543562: Brent Dyer → Brandon Kwong (202601 & 202512 only)'
PRINT 'Phone 4033715608: Syd Abel → Carey Kofluk (202601 & 202512 only)'
PRINT 'Phone 4034627921: Rodrigo Valenzuela → Atif Qayyum (202601 & 202512 only)'
PRINT 'Phone 4037045422: Enech Shyu → Joey Crisalli (202601 & 202512 only)'
PRINT 'Phone 4038294533: Colin Anton → Tom Hades (202601 & 202512 only)'
PRINT 'Phone 4038358716: Tyler Robinson → Dave Gosse (202601 & 202512 only)'
PRINT 'Phone 4325274141: Ray Jennings → John Sandate (202601 & 202512 only)'
PRINT 'Phone 5874367083: Anastasiia Lo → Kerry Wojcichowsky (202601 & 202512 only)'
PRINT 'Phone 7807215676: Dave Boonstra → Tyson Armitage (202601 & 202512 only)'
PRINT 'Phone 8326522962: Paige Haley → Connor Schoenhals (202601 & 202512 only)'
PRINT 'Phone 8326522965: Michelle Romo → Blake Hotzel (202601 & 202512 only)'
PRINT 'Phone 8326522967: Steve Sullivan → Patrick Uhles (202601 & 202512 only)'
PRINT 'Phone 8326522968: Haley O'Brien → Ryan Brooks (202601 & 202512 only)'
PRINT 'Phone 8326522969: Lora Appleton → Hayley Skie (202601 & 202512 only)'
PRINT 'Phone 8326522973: Maureen Karasinski → Jerry James (202601 & 202512 only)'
PRINT 'Phone 8326522974: Chip Lang → Andrew Morales (202601 & 202512 only)'
PRINT 'Only months 202601 and 202512 will be updated'
PRINT 'Historical billing data will be preserved'

-- ================================================================================
-- STEP 2: REASSIGN PHONE NUMBERS IN SERVICE DETAILS
-- ONLY UPDATES MONTHS 202601 and 202512
-- ================================================================================

-- Reassign phone 4032064008: Steve Spaulding → Linda Song (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Linda Song'
WHERE sd.AssetID = '4032064008'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064012: Kunal Vora → Moein Ghavi (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Moein Ghavi'
WHERE sd.AssetID = '4032064012'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064013: Ismail Soaga → Colin Bennett (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Colin Bennett'
WHERE sd.AssetID = '4032064013'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064014: Ryan Connell → Johnny Wong (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Johnny Wong'
WHERE sd.AssetID = '4032064014'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064024: Mathieu LeMessurier → Caleb Zimmerman (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Caleb Zimmerman'
WHERE sd.AssetID = '4032064024'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064026: Sheila Darragh → Andrew Holowaychuk (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Andrew Holowaychuk'
WHERE sd.AssetID = '4032064026'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064034: Micaelin Caskey → Mariah Butler (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Mariah Butler'
WHERE sd.AssetID = '4032064034'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064035: Rodrigo Valenzuela → Marissa Nelson (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Marissa Nelson'
WHERE sd.AssetID = '4032064035'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064036: Sydney Hejtmanek → Dan Stoffman (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Dan Stoffman'
WHERE sd.AssetID = '4032064036'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064040: Maggie Davidson → Curtis Philippon (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Curtis Philippon'
WHERE sd.AssetID = '4032064040'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064043: Joslyn Tokarchuk → Eric Gilholme (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Eric Gilholme'
WHERE sd.AssetID = '4032064043'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064046: Sable LeBlanc-Fortin → Bharat Bodawala (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Bharat Bodawala'
WHERE sd.AssetID = '4032064046'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064047: Frank Vanden Elsen → Andrew Arnold (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Andrew Arnold'
WHERE sd.AssetID = '4032064047'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064050: Sureiya Hasham → Kendra Hand (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Kendra Hand'
WHERE sd.AssetID = '4032064050'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064051: Eldon Wig → Dave Artuz (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Dave Artuz'
WHERE sd.AssetID = '4032064051'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064053: Breanna Triebel → Collin Merritt (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Collin Merritt'
WHERE sd.AssetID = '4032064053'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064060: Faustina Schmid → Ashley Jung (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Ashley Jung'
WHERE sd.AssetID = '4032064060'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064061: Gradyn Pertson → Trevor Boudreau (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Trevor Boudreau'
WHERE sd.AssetID = '4032064061'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064063: Hunter Weber → Amy Liu (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Amy Liu'
WHERE sd.AssetID = '4032064063'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064067: Olivia Monarrez → Tom Hades (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Tom Hades'
WHERE sd.AssetID = '4032064067'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064072: Renae McArthur → Michelena Robinson (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Michelena Robinson'
WHERE sd.AssetID = '4032064072'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064078: Ian Carr → Cameron LaValley (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Cameron LaValley'
WHERE sd.AssetID = '4032064078'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064081: Rachel Wong → Ryan Hyland (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Ryan Hyland'
WHERE sd.AssetID = '4032064081'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064082: Jacy Hingley → Gradyn Pertson (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Gradyn Pertson'
WHERE sd.AssetID = '4032064082'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064094: Isaac Maslin → Brandon Kwong (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Brandon Kwong'
WHERE sd.AssetID = '4032064094'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064095: Sarah Clarke → Kerry Wojcichowsky (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Kerry Wojcichowsky'
WHERE sd.AssetID = '4032064095'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064097: Daylen Wathen → Sasha Longley (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Sasha Longley'
WHERE sd.AssetID = '4032064097'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064098: Ashley Bowman → Halima Awaiye (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Halima Awaiye'
WHERE sd.AssetID = '4032064098'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064102: Patrick Inglis → Jamie Schrader (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Jamie Schrader'
WHERE sd.AssetID = '4032064102'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064103: Kaitlyn Chan → Jon Ozirny (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Jon Ozirny'
WHERE sd.AssetID = '4032064103'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064104: Jessica Stevens → Selena Sun (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Selena Sun'
WHERE sd.AssetID = '4032064104'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064106: Isabella Engbers → Carson Ho (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Carson Ho'
WHERE sd.AssetID = '4032064106'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064110: Nicole McArthur → Erin Seaman (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Erin Seaman'
WHERE sd.AssetID = '4032064110'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064113: Lauren Vernon → Alexis Gendra Garcia (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Alexis Gendra Garcia'
WHERE sd.AssetID = '4032064113'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064114: Ethan Kalhs → Cindy Ly (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Cindy Ly'
WHERE sd.AssetID = '4032064114'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064124: Tanya Fougere → Isaac Datoc (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Isaac Datoc'
WHERE sd.AssetID = '4032064124'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064131: Zack Weenk → Marc Rowe (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Marc Rowe'
WHERE sd.AssetID = '4032064131'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064133: Mark Fairservice → Joey Crisalli (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Joey Crisalli'
WHERE sd.AssetID = '4032064133'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4032064141: Christie Hall → Rob Kaupp (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Rob Kaupp'
WHERE sd.AssetID = '4032064141'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4033541817: Evan Capatos → Dan Stoffman (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Dan Stoffman'
WHERE sd.AssetID = '4033541817'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4033543562: Brent Dyer → Brandon Kwong (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Brandon Kwong'
WHERE sd.AssetID = '4033543562'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4033715608: Syd Abel → Carey Kofluk (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Carey Kofluk'
WHERE sd.AssetID = '4033715608'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4034627921: Rodrigo Valenzuela → Atif Qayyum (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Atif Qayyum'
WHERE sd.AssetID = '4034627921'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4037045422: Enech Shyu → Joey Crisalli (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Joey Crisalli'
WHERE sd.AssetID = '4037045422'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4038294533: Colin Anton → Tom Hades (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Tom Hades'
WHERE sd.AssetID = '4038294533'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4038358716: Tyler Robinson → Dave Gosse (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Dave Gosse'
WHERE sd.AssetID = '4038358716'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 4325274141: Ray Jennings → John Sandate (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'John Sandate'
WHERE sd.AssetID = '4325274141'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 5874367083: Anastasiia Lo → Kerry Wojcichowsky (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Kerry Wojcichowsky'
WHERE sd.AssetID = '5874367083'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 7807215676: Dave Boonstra → Tyson Armitage (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Tyson Armitage'
WHERE sd.AssetID = '7807215676'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 8326522962: Paige Haley → Connor Schoenhals (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Connor Schoenhals'
WHERE sd.AssetID = '8326522962'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 8326522965: Michelle Romo → Blake Hotzel (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Blake Hotzel'
WHERE sd.AssetID = '8326522965'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 8326522967: Steve Sullivan → Patrick Uhles (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Patrick Uhles'
WHERE sd.AssetID = '8326522967'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 8326522968: Haley O''Brien → Ryan Brooks (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Ryan Brooks'
WHERE sd.AssetID = '8326522968'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 8326522969: Lora Appleton → Hayley Skie (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Hayley Skie'
WHERE sd.AssetID = '8326522969'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 8326522973: Maureen Karasinski → Jerry James (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Jerry James'
WHERE sd.AssetID = '8326522973'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- Reassign phone 8326522974: Chip Lang → Andrew Morales (Dec 2025 & Nov 2025 only)
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON p.username = 'Andrew Morales'
WHERE sd.AssetID = '8326522974'
  AND sd.DateRef IN ('202601', '202512');
-- Note: Removed Username filter since ServiceDetails.Username is often empty

-- ================================================================================
-- VERIFICATION QUERIES
-- ================================================================================

-- Check newly inserted People records
SELECT COUNT(*) as new_people_inserted
FROM C_0000000119_People
WHERE LinkType = 'AD' AND Modified = '202601';

-- Check reassigned phone numbers
SELECT COUNT(*) as phones_reassigned
FROM C_0000000119_ServiceDetails
WHERE UserRef_Type = 'AD Fix';

-- Show the phone assignment fixes applied
SELECT sd.AssetID as Phone, sd.Username as NewUser, p.status as UserStatus
FROM C_0000000119_ServiceDetails sd
INNER JOIN C_0000000119_People p ON sd.UserRef = p.id
WHERE sd.UserRef_Type = 'AD Fix'
ORDER BY sd.AssetID;

-- ================================================================================
-- SAFETY CONTROLS
-- ================================================================================

-- Option 1: COMMIT CHANGES (uncomment when ready to execute)
-- COMMIT;

-- Option 2: ROLLBACK CHANGES (if something goes wrong)
-- ROLLBACK;

-- ⚠️  SAFETY REMINDER:
-- 1. Test this SQL on a backup/staging database first
-- 2. Keep this transaction window open until you verify results
-- 3. If anything looks wrong, run: ROLLBACK;
-- 4. Only run COMMIT; when you're 100% satisfied

-- 📋 POST-EXECUTION CHECKLIST:
-- □ Verification queries show expected results
-- □ Run comprehensive analysis again to confirm fixes
-- □ Check that phone assignment issues are resolved