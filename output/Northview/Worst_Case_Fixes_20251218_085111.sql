-- SpikeFli Worst Case Mismatch Fixes
-- Generated: 2025-12-18 08:51:11
-- Customer ID: 0000000104
-- Worst case mismatches to fix: 29
-- These are cases where BOTH user and status are incorrect

BEGIN TRANSACTION;

-- ================================================================================
-- FIX 29 WORST CASE MISMATCHES
-- Update ServiceDetails to show correct current AD user
-- ================================================================================

-- Fix phone reassignment: 2048900255
-- Old user: Darrell Everard → Current AD user: Ignacio Gonzalez
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000104_ServiceDetails sd
INNER JOIN C_0000000104_People p ON p.username = 'Ignacio Gonzalez'
WHERE sd.AssetID = '2048900255'
  AND sd.Username = 'Darrell Everard';  -- Only update records with the old user

-- Fix phone reassignment: 2048900266
-- Old user: Werner Franz → Current AD user: Bohdan Miniailo
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000104_ServiceDetails sd
INNER JOIN C_0000000104_People p ON p.username = 'Bohdan Miniailo'
WHERE sd.AssetID = '2048900266'
  AND sd.Username = 'Werner Franz';  -- Only update records with the old user

-- Fix phone reassignment: 2048900302
-- Old user: Roxana Echavarria-Besora → Current AD user: Roxana Besora
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000104_ServiceDetails sd
INNER JOIN C_0000000104_People p ON p.username = 'Roxana Besora'
WHERE sd.AssetID = '2048900302'
  AND sd.Username = 'Roxana Echavarria-Besora';  -- Only update records with the old user

-- Fix phone reassignment: 2502633335
-- Old user: Shannon Magee → Current AD user: Christal Ritchie
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000104_ServiceDetails sd
INNER JOIN C_0000000104_People p ON p.username = 'Christal Ritchie'
WHERE sd.AssetID = '2502633335'
  AND sd.Username = 'Shannon Magee';  -- Only update records with the old user

-- Fix phone reassignment: 2503013255
-- Old user: Stefanie Halford → Current AD user: Janell Lovelace
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000104_ServiceDetails sd
INNER JOIN C_0000000104_People p ON p.username = 'Janell Lovelace'
WHERE sd.AssetID = '2503013255'
  AND sd.Username = 'Stefanie Halford';  -- Only update records with the old user

-- Fix phone reassignment: 2503274819
-- Old user: Bradley Westergard → Current AD user: Michael Townsend
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000104_ServiceDetails sd
INNER JOIN C_0000000104_People p ON p.username = 'Michael Townsend'
WHERE sd.AssetID = '2503274819'
  AND sd.Username = 'Bradley Westergard';  -- Only update records with the old user

-- Fix phone reassignment: 2507197749
-- Old user: Harold Greve → Current AD user: Dawson Martin-Fisher
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000104_ServiceDetails sd
INNER JOIN C_0000000104_People p ON p.username = 'Dawson Martin-Fisher'
WHERE sd.AssetID = '2507197749'
  AND sd.Username = 'Harold Greve';  -- Only update records with the old user

-- Fix phone reassignment: 3062017203
-- Old user: Marie Gamble → Current AD user: Danielle Loverick
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000104_ServiceDetails sd
INNER JOIN C_0000000104_People p ON p.username = 'Danielle Loverick'
WHERE sd.AssetID = '3062017203'
  AND sd.Username = 'Marie Gamble';  -- Only update records with the old user

-- Fix phone reassignment: 4038018445
-- Old user: Tamara Stuart → Current AD user: Monika Garwol
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000104_ServiceDetails sd
INNER JOIN C_0000000104_People p ON p.username = 'Monika Garwol'
WHERE sd.AssetID = '4038018445'
  AND sd.Username = 'Tamara Stuart';  -- Only update records with the old user

-- Fix phone reassignment: 5063783026
-- Old user: Lucie Deveau → Current AD user: Glenn Ostulano
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000104_ServiceDetails sd
INNER JOIN C_0000000104_People p ON p.username = 'Glenn Ostulano'
WHERE sd.AssetID = '5063783026'
  AND sd.Username = 'Lucie Deveau';  -- Only update records with the old user

-- Fix phone reassignment: 5063784157
-- Old user: Leonard Weston → Current AD user: Gilles Gaudet
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000104_ServiceDetails sd
INNER JOIN C_0000000104_People p ON p.username = 'Gilles Gaudet'
WHERE sd.AssetID = '5063784157'
  AND sd.Username = 'Leonard Weston';  -- Only update records with the old user

-- Fix phone reassignment: 5063816622
-- Old user: Connie Doucet → Current AD user: Jayda Ballantyne
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000104_ServiceDetails sd
INNER JOIN C_0000000104_People p ON p.username = 'Jayda Ballantyne'
WHERE sd.AssetID = '5063816622'
  AND sd.Username = 'Connie Doucet';  -- Only update records with the old user

-- Fix phone reassignment: 5063819452
-- Old user: Phillip Greenlaw → Current AD user: Fadel Alhaddad
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000104_ServiceDetails sd
INNER JOIN C_0000000104_People p ON p.username = 'Fadel Alhaddad'
WHERE sd.AssetID = '5063819452'
  AND sd.Username = 'Phillip Greenlaw';  -- Only update records with the old user

-- Fix phone reassignment: 5068520745
-- Old user: Gerald Forest → Current AD user: Matthew Ellis
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000104_ServiceDetails sd
INNER JOIN C_0000000104_People p ON p.username = 'Matthew Ellis'
WHERE sd.AssetID = '5068520745'
  AND sd.Username = 'Gerald Forest';  -- Only update records with the old user

-- Fix phone reassignment: 5068750421
-- Old user: Denis LeBlanc → Current AD user: Wanetta Cavanaugh
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000104_ServiceDetails sd
INNER JOIN C_0000000104_People p ON p.username = 'Wanetta Cavanaugh'
WHERE sd.AssetID = '5068750421'
  AND sd.Username = 'Denis LeBlanc';  -- Only update records with the old user

-- Fix phone reassignment: 5873703965
-- Old user: Connie Dietrich → Current AD user: Rose Ricketts
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000104_ServiceDetails sd
INNER JOIN C_0000000104_People p ON p.username = 'Rose Ricketts'
WHERE sd.AssetID = '5873703965'
  AND sd.Username = 'Connie Dietrich';  -- Only update records with the old user

-- Fix phone reassignment: 5874345991
-- Old user: Craig Owens → Current AD user: Dacoda McCaffrey
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000104_ServiceDetails sd
INNER JOIN C_0000000104_People p ON p.username = 'Dacoda McCaffrey'
WHERE sd.AssetID = '5874345991'
  AND sd.Username = 'Craig Owens';  -- Only update records with the old user

-- Fix phone reassignment: 5874359157
-- Old user: Claire Livingstone → Current AD user: Anthony Parker
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000104_ServiceDetails sd
INNER JOIN C_0000000104_People p ON p.username = 'Anthony Parker'
WHERE sd.AssetID = '5874359157'
  AND sd.Username = 'Claire Livingstone';  -- Only update records with the old user

-- Fix phone reassignment: 7092800373
-- Old user: Eric Dempsey → Current AD user: Natasha Reid
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000104_ServiceDetails sd
INNER JOIN C_0000000104_People p ON p.username = 'Natasha Reid'
WHERE sd.AssetID = '7092800373'
  AND sd.Username = 'Eric Dempsey';  -- Only update records with the old user

-- Fix phone reassignment: 7093276934
-- Old user: Thanh Vo → Current AD user: Doreen Moyst
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000104_ServiceDetails sd
INNER JOIN C_0000000104_People p ON p.username = 'Doreen Moyst'
WHERE sd.AssetID = '7093276934'
  AND sd.Username = 'Thanh Vo';  -- Only update records with the old user

-- Fix phone reassignment: 7096820648
-- Old user: Sean Keough → Current AD user: Patrick Barron
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000104_ServiceDetails sd
INNER JOIN C_0000000104_People p ON p.username = 'Patrick Barron'
WHERE sd.AssetID = '7096820648'
  AND sd.Username = 'Sean Keough';  -- Only update records with the old user

-- Fix phone reassignment: 7097271437
-- Old user: Benjamin Speed → Current AD user: Oleh Viernik
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000104_ServiceDetails sd
INNER JOIN C_0000000104_People p ON p.username = 'Oleh Viernik'
WHERE sd.AssetID = '7097271437'
  AND sd.Username = 'Benjamin Speed';  -- Only update records with the old user

-- Fix phone reassignment: 7097284316
-- Old user: Tobias Lewis → Current AD user: Brian James
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000104_ServiceDetails sd
INNER JOIN C_0000000104_People p ON p.username = 'Brian James'
WHERE sd.AssetID = '7097284316'
  AND sd.Username = 'Tobias Lewis';  -- Only update records with the old user

-- Fix phone reassignment: 7802051972
-- Old user: Elmo Oxford → Current AD user: Kyle Godin
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000104_ServiceDetails sd
INNER JOIN C_0000000104_People p ON p.username = 'Kyle Godin'
WHERE sd.AssetID = '7802051972'
  AND sd.Username = 'Elmo Oxford';  -- Only update records with the old user

-- Fix phone reassignment: 7808706995
-- Old user: Reagan McKenzie → Current AD user: Roberta Russell
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000104_ServiceDetails sd
INNER JOIN C_0000000104_People p ON p.username = 'Roberta Russell'
WHERE sd.AssetID = '7808706995'
  AND sd.Username = 'Reagan McKenzie';  -- Only update records with the old user

-- Fix phone reassignment: 7808722637
-- Old user: Patricia Leroy → Current AD user: Natasha Dumont
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000104_ServiceDetails sd
INNER JOIN C_0000000104_People p ON p.username = 'Natasha Dumont'
WHERE sd.AssetID = '7808722637'
  AND sd.Username = 'Patricia Leroy';  -- Only update records with the old user

-- Fix phone reassignment: 8676696400
-- Old user: Michael Garcia → Current AD user: Sang Nguyen
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000104_ServiceDetails sd
INNER JOIN C_0000000104_People p ON p.username = 'Sang Nguyen'
WHERE sd.AssetID = '8676696400'
  AND sd.Username = 'Michael Garcia';  -- Only update records with the old user

-- Fix phone reassignment: 8674460773
-- Old user: Elmer Gacayan → Current AD user: Christopher De La paz
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000104_ServiceDetails sd
INNER JOIN C_0000000104_People p ON p.username = 'Christopher De La paz'
WHERE sd.AssetID = '8674460773'
  AND sd.Username = 'Elmer Gacayan';  -- Only update records with the old user

-- Fix phone reassignment: 8674460982
-- Old user: Rupert Manuba → Current AD user: Russell Pambid
UPDATE sd
SET sd.UserRef = p.id,
    sd.UserRef_Type = 'AD Fix',
    sd.Username = LEFT(p.username, 20)
FROM C_0000000104_ServiceDetails sd
INNER JOIN C_0000000104_People p ON p.username = 'Russell Pambid'
WHERE sd.AssetID = '8674460982'
  AND sd.Username = 'Rupert Manuba';  -- Only update records with the old user

-- ================================================================================
-- VERIFICATION QUERIES
-- ================================================================================

-- Check how many worst case fixes were applied
SELECT COUNT(*) as worst_case_fixes_applied
FROM C_0000000104_ServiceDetails
WHERE UserRef_Type = 'AD Fix';

-- Show the fixed services
SELECT sd.AssetID, sd.Username, p.username as AD_Username
FROM C_0000000104_ServiceDetails sd
LEFT JOIN C_0000000104_People p ON sd.UserRef = p.id
WHERE sd.UserRef_Type = 'AD Fix'
ORDER BY sd.AssetID;

COMMIT;

-- Summary: Fixed 29 worst case mismatches
-- These were the most critical phone reassignment issues!