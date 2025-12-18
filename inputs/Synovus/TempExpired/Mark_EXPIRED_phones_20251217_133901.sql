-- Mark EXPIRED Phones as Expired in ServiceDetails
-- Generated: 2025-12-17 13:39:01
-- Customer ID: 0000000104
-- Total EXPIRED phones to update: 287
-- Based on manual review with SF Note classifications

BEGIN TRANSACTION;

PRINT 'Marking 287 phones as EXPIRED based on manual review...';

-- ===============================================================================
-- UPDATE SERVICE DETAILS - Mark phones as EXPIRED
-- These are phones assigned to former employees (FirstName LastName pattern)
-- ===============================================================================

-- Mark phone 4032986778 (Andrew Dexter) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Andrew Dexter' THEN 'Andrew Dexter (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986778'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807493342 (Andrew Fowler) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Andrew Fowler' THEN 'Andrew Fowler (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807493342'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068208776 (Angela Lowe) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Angela Lowe' THEN 'Angela Lowe (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068208776'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068251774 (Ashley Richard) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Ashley Richard' THEN 'Ashley Richard (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068251774'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3069341500 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3069341500'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5876740746 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5876740746'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5876741009 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5876741009'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5876741106 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5876741106'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5876741765 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5876741765'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5876741769 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5876741769'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5876742130 (available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'available' THEN 'available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5876742130'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5876742137 (available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'available' THEN 'available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5876742137'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5876742139 (available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'available' THEN 'available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5876742139'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5876742144 (available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'available' THEN 'available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5876742144'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5876742145 (available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'available' THEN 'available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5876742145'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5876742149 (available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'available' THEN 'available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5876742149'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5877430648 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5877430648'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5877430649 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5877430649'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5877741363 (available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'available' THEN 'available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5877741363'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5877890891 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5877890891'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5877890892 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5877890892'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5877890893 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5877890893'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5877890894 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5877890894'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5877890895 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5877890895'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5877890896 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5877890896'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 6147631128 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '6147631128'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 6149560767 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '6149560767'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 6149560771 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '6149560771'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807255009 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807255009'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807255010 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807255010'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807255016 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807255016'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807255020 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807255020'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807255021 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807255021'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807255024 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807255024'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807255026 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807255026'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807255032 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807255032'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807255033 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807255033'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807255036 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807255036'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807255041 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807255041'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807255050 (available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'available' THEN 'available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807255050'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807255051 (available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'available' THEN 'available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807255051'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807255052 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807255052'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807255055 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807255055'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807255056 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807255056'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807255058 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807255058'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807255061 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807255061'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807255062 (available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'available' THEN 'available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807255062'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807255063 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807255063'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807255064 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807255064'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807255065 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807255065'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807255066 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807255066'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807255068 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807255068'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807255069 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807255069'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807255073 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807255073'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807255074 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807255074'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807490407 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807490407'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807490411 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807490411'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807490413 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807490413'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807490416 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807490416'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807490443 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807490443'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807490465 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807490465'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807490481 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807490481'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807493306 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807493306'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807493311 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807493311'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807493329 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807493329'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807493330 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807493330'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807493334 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807493334'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807493339 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807493339'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807493343 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807493343'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807493346 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807493346'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807493347 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807493347'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807493351 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807493351'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807493354 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807493354'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807493356 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807493356'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807493357 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807493357'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807493358 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807493358'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807493367 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807493367'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807493372 (available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'available' THEN 'available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807493372'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807493373 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807493373'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807493378 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807493378'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807493379 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807493379'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807493384 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807493384'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807493392 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807493392'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807493394 (available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'available' THEN 'available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807493394'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808424515 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808424515'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808716681 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808716681'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808716683 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808716683'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808716689 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808716689'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808716691 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808716691'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808716692 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808716692'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808743303 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808743303'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808743312 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808743312'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808743313 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808743313'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808743314 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808743314'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808743316 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808743316'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808743321 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808743321'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808743326 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808743326'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808743333 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808743333'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808743334 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808743334'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808743335 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808743335'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808743337 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808743337'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808743338 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808743338'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808743339 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808743339'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808743344 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808743344'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808743346 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808743346'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808743347 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808743347'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808743349 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808743349'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808743350 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808743350'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808743352 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808743352'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808743355 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808743355'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808743356 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808743356'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808743357 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808743357'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808743358 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808743358'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808743359 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808743359'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808743361 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808743361'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808743362 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808743362'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808883026 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808883026'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7809568002 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7809568002'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7809568056 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7809568056'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7809568075 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7809568075'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7809568761 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7809568761'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7809568763 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7809568763'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7809568764 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7809568764'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7809568783 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7809568783'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7809568785 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7809568785'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7809568788 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7809568788'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7809568789 (Available) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Available' THEN 'Available (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7809568789'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986567 (ayush savani) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'ayush savani' THEN 'ayush savani (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986567'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986113 (Ben cho) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Ben cho' THEN 'Ben cho (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986113'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068204368 (Ben Saam) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Ben Saam' THEN 'Ben Saam (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068204368'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032987186 (Brady Reiter) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Brady Reiter' THEN 'Brady Reiter (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032987186'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068251591 (Branden Stefanizyn) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Branden Stefanizyn' THEN 'Branden Stefanizyn (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068251591'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068208849 (Brian Young) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Brian Young' THEN 'Brian Young (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068208849'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 8552325828 (Brittany Firth) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Brittany Firth' THEN 'Brittany Firth (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '8552325828'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068208712 (Brittney Prosser) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Brittney Prosser' THEN 'Brittney Prosser (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068208712'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068251519 (Caitlyn Phillips) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Caitlyn Phillips' THEN 'Caitlyn Phillips (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068251519'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807493369 (Caitlyn Phillips) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Caitlyn Phillips' THEN 'Caitlyn Phillips (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807493369'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4039102912 (candice dhaliwal) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'candice dhaliwal' THEN 'candice dhaliwal (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4039102912'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986204 (Carmelita Panorel) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Carmelita Panorel' THEN 'Carmelita Panorel (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986204'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986063 (Celina Nelson) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Celina Nelson' THEN 'Celina Nelson (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986063'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068251115 (Chad Stacey) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Chad Stacey' THEN 'Chad Stacey (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068251115'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808716593 (Chad Wood) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Chad Wood' THEN 'Chad Wood (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808716593'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808743324 (Chanel E. Munro) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Chanel E. Munro' THEN 'Chanel E. Munro (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808743324'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068208347 (Chantelle Peat) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Chantelle Peat' THEN 'Chantelle Peat (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068208347'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986795 (Charlotte Richardson) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Charlotte Richardson' THEN 'Charlotte Richardson (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986795'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986442 (Christine Waiand) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Christine Waiand' THEN 'Christine Waiand (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986442'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4037675499 (Christopher Crane) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Christopher Crane' THEN 'Christopher Crane (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4037675499'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068251999 (Christopher McQuid) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Christopher McQuid' THEN 'Christopher McQuid (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068251999'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808716688 (Cindy Rowley) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Cindy Rowley' THEN 'Cindy Rowley (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808716688'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807254924 (Clayton Ulrich) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Clayton Ulrich' THEN 'Clayton Ulrich (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807254924'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986060 (Coco Wang) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Coco Wang' THEN 'Coco Wang (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986060'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5876740317 (Collin Machtans) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Collin Machtans' THEN 'Collin Machtans (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5876740317'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5877745924 (Corinne Paul) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Corinne Paul' THEN 'Corinne Paul (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5877745924'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5876740745 (craig baier) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'craig baier' THEN 'craig baier (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5876740745'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807255044 (Dan Zhao) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Dan Zhao' THEN 'Dan Zhao (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807255044'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7809568702 (Daniel Ayee) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Daniel Ayee' THEN 'Daniel Ayee (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7809568702'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3069557945 (Daniel Sparkes) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Daniel Sparkes' THEN 'Daniel Sparkes (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3069557945'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068204040 (Daniel Wilson) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Daniel Wilson' THEN 'Daniel Wilson (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068204040'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986271 (david sun) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'david sun' THEN 'david sun (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986271'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5876740328 (Dean Hawkey) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Dean Hawkey' THEN 'Dean Hawkey (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5876740328'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808716577 (Derek Crites) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Derek Crites' THEN 'Derek Crites (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808716577'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808716540 (Derek Kopyshenski) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Derek Kopyshenski' THEN 'Derek Kopyshenski (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808716540'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986604 (Devin Halko) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Devin Halko' THEN 'Devin Halko (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986604'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986815 (Diane Kukulski) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Diane Kukulski' THEN 'Diane Kukulski (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986815'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4035137878 (Douglas Coon) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Douglas Coon' THEN 'Douglas Coon (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4035137878'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808883025 (Douglas Simpson) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Douglas Simpson' THEN 'Douglas Simpson (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808883025'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986336 (Elena Spinu) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Elena Spinu' THEN 'Elena Spinu (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986336'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808716524 (Eric Wallace) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Eric Wallace' THEN 'Eric Wallace (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808716524'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986072 (Ethan Fisher) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Ethan Fisher' THEN 'Ethan Fisher (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986072'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986190 (Fabian Wong) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Fabian Wong' THEN 'Fabian Wong (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986190'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986051 (Filip Jovanovic) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Filip Jovanovic' THEN 'Filip Jovanovic (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986051'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986723 (Frank Zou) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Frank Zou' THEN 'Frank Zou (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986723'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986694 (Garrett Novak) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Garrett Novak' THEN 'Garrett Novak (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986694'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068201207 (Heather Yuzik) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Heather Yuzik' THEN 'Heather Yuzik (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068201207'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5879993524 (Hugh Bradley) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Hugh Bradley' THEN 'Hugh Bradley (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5879993524'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986957 (Addison Casali) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Addison Casali' THEN 'Addison Casali (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986957'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986286 (Allyssa Guillermo) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Allyssa Guillermo' THEN 'Allyssa Guillermo (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986286'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5877749418 (Aminat Abiola) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Aminat Abiola' THEN 'Aminat Abiola (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5877749418'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986941 (Amy Mochnacz) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Amy Mochnacz' THEN 'Amy Mochnacz (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986941'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068201283 (Guy Normand) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Guy Normand' THEN 'Guy Normand (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068201283'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986179 (Jack Ferneyhough) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Jack Ferneyhough' THEN 'Jack Ferneyhough (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986179'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986205 (Jai Joon) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Jai Joon' THEN 'Jai Joon (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986205'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986468 (Jaime Albrecht) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Jaime Albrecht' THEN 'Jaime Albrecht (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986468'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986176 (Jameson Smith) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Jameson Smith' THEN 'Jameson Smith (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986176'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808716656 (Jason Malanowich) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Jason Malanowich' THEN 'Jason Malanowich (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808716656'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808883028 (Jason Nozdryn) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Jason Nozdryn' THEN 'Jason Nozdryn (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808883028'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986448 (Jason Xu) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Jason Xu' THEN 'Jason Xu (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986448'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3069557927 (Jeff Dick) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Jeff Dick' THEN 'Jeff Dick (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3069557927'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068201273 (Jenny Li) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Jenny Li' THEN 'Jenny Li (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068201273'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5876740687 (Jeremy Glasgow) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Jeremy Glasgow' THEN 'Jeremy Glasgow (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5876740687'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986457 (Jesse.Sallis) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Jesse.Sallis' THEN 'Jesse.Sallis (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986457'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807233532 (Jian Huang) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Jian Huang' THEN 'Jian Huang (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807233532'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807953750 (Jillian Rathje) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Jillian Rathje' THEN 'Jillian Rathje (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807953750'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986136 (Joab Braganza) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Joab Braganza' THEN 'Joab Braganza (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986136'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068201233 (Jordan Kean) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Jordan Kean' THEN 'Jordan Kean (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068201233'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032987372 (Julian Lam) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Julian Lam' THEN 'Julian Lam (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032987372'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808883034 (Junbin Huang) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Junbin Huang' THEN 'Junbin Huang (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808883034'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068251812 (Justin Novak) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Justin Novak' THEN 'Justin Novak (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068251812'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068204367 (Katherine Janisse) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Katherine Janisse' THEN 'Katherine Janisse (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068204367'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986207 (Kathleen Martin) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Kathleen Martin' THEN 'Kathleen Martin (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986207'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808743343 (Kelly Scott) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Kelly Scott' THEN 'Kelly Scott (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808743343'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068251695 (Kent Miller) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Kent Miller' THEN 'Kent Miller (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068251695'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4037501698 (Kevin Campbell) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Kevin Campbell' THEN 'Kevin Campbell (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4037501698'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807493396 (Kevin Shearer) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Kevin Shearer' THEN 'Kevin Shearer (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807493396'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068201241 (Kishore Reddy Gali) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Kishore Reddy Gali' THEN 'Kishore Reddy Gali (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068201241'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068251109 (Krista Arseneault) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Krista Arseneault' THEN 'Krista Arseneault (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068251109'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068208230 (Kristian Sawyshyn) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Kristian Sawyshyn' THEN 'Kristian Sawyshyn (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068208230'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5877430647 (Kyle Beaulieu) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Kyle Beaulieu' THEN 'Kyle Beaulieu (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5877430647'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068251218 (Lauren Jones) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Lauren Jones' THEN 'Lauren Jones (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068251218'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986083 (Lauren Michaud) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Lauren Michaud' THEN 'Lauren Michaud (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986083'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986623 (leu cheuk) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'leu cheuk' THEN 'leu cheuk (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986623'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7809568071 (Lonnie Nielson) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Lonnie Nielson' THEN 'Lonnie Nielson (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7809568071'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986348 (Luka Cigler) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Luka Cigler' THEN 'Luka Cigler (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986348'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808743306 (Luke Baron) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Luke Baron' THEN 'Luke Baron (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808743306'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068251168 (Mahmoud Etemadi) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Mahmoud Etemadi' THEN 'Mahmoud Etemadi (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068251168'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986998 (Manisha Kumanayaka) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Manisha Kumanayaka' THEN 'Manisha Kumanayaka (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986998'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807255049 (Marc Meunier) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Marc Meunier' THEN 'Marc Meunier (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807255049'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986682 (Marie Sopko) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Marie Sopko' THEN 'Marie Sopko (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986682'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808716661 (Matthew Dolsen) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Matthew Dolsen' THEN 'Matthew Dolsen (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808716661'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807493366 (Matthew Nelson) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Matthew Nelson' THEN 'Matthew Nelson (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807493366'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986023 (Md Arshad Hossain) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Md Arshad Hossain' THEN 'Md Arshad Hossain (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986023'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986771 (Michael Edmunds) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Michael Edmunds' THEN 'Michael Edmunds (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986771'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068208280 (Michael Hill) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Michael Hill' THEN 'Michael Hill (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068208280'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068454468 (Michael Lalonde) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Michael Lalonde' THEN 'Michael Lalonde (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068454468'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068251620 (Michael Thompson) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Michael Thompson' THEN 'Michael Thompson (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068251620'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4037501938 (Mohammed Fakrul) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Mohammed Fakrul' THEN 'Mohammed Fakrul (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4037501938'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068208721 (Mohsin Mazhar) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Mohsin Mazhar' THEN 'Mohsin Mazhar (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068208721'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068208315 (Morgan Blakely) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Morgan Blakely' THEN 'Morgan Blakely (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068208315'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986376 (Mounir Nasser) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Mounir Nasser' THEN 'Mounir Nasser (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986376'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986632 (myrna nichole) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'myrna nichole' THEN 'myrna nichole (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986632'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986763 (Natalie Larson) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Natalie Larson' THEN 'Natalie Larson (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986763'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4037675269 (Nicholas Haley) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Nicholas Haley' THEN 'Nicholas Haley (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4037675269'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068208346 (Peter Herle) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Peter Herle' THEN 'Peter Herle (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068208346'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986106 (Priyanshu Bhattacharya) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Priyanshu Bhattacharya' THEN 'Priyanshu Bhattacharya (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986106'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986297 (Raihan Qurashi) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Raihan Qurashi' THEN 'Raihan Qurashi (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986297'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986359 (Raj Maan) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Raj Maan' THEN 'Raj Maan (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986359'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986296 (Reem Asif) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Reem Asif' THEN 'Reem Asif (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986296'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807493383 (Reginald Scott Sooley) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Reginald Scott Sooley' THEN 'Reginald Scott Sooley (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807493383'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068208245 (Remi Lacasse) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Remi Lacasse' THEN 'Remi Lacasse (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068208245'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068204017 (Rob Bell) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Rob Bell' THEN 'Rob Bell (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068204017'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7805942554 (Robert Osborne) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Robert Osborne' THEN 'Robert Osborne (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7805942554'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068251533 (Robin Skavberg) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Robin Skavberg' THEN 'Robin Skavberg (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068251533'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5877749479 (Robyn Watkins) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Robyn Watkins' THEN 'Robyn Watkins (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5877749479'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986162 (Rohit Gurung) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Rohit Gurung' THEN 'Rohit Gurung (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986162'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068208711 (Rory O'Brien) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Rory O''Brien' THEN 'Rory O''Brien (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068208711'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068201274 (Rosemary Eileen Aldrich) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Rosemary Eileen Aldrich' THEN 'Rosemary Eileen Aldrich (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068201274'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986893 (Ryan McAndrews) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Ryan McAndrews' THEN 'Ryan McAndrews (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986893'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807493391 (Ryan Monaco) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Ryan Monaco' THEN 'Ryan Monaco (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807493391'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068204333 (Ryan Novick) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Ryan Novick' THEN 'Ryan Novick (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068204333'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068208755 (Rylee Wallington) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Rylee Wallington' THEN 'Rylee Wallington (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068208755'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5877890707 (Sandall Thermal) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Sandall Thermal' THEN 'Sandall Thermal (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5877890707'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5877793670 (Sanmoy Maity) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Sanmoy Maity' THEN 'Sanmoy Maity (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5877793670'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986659 (Sara Lakhram) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Sara Lakhram' THEN 'Sara Lakhram (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986659'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5877749427 (Sarah feschu) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Sarah feschu' THEN 'Sarah feschu (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5877749427'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068208307 (Scott Saunders) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Scott Saunders' THEN 'Scott Saunders (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068208307'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 6149560774 (Seamus Gibbons) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Seamus Gibbons' THEN 'Seamus Gibbons (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '6149560774'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986218 (Shafiuddin Mohammed) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Shafiuddin Mohammed' THEN 'Shafiuddin Mohammed (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986218'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808651714 (Shawn Fraser) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Shawn Fraser' THEN 'Shawn Fraser (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808651714'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808716536 (Shawn Malinowski) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Shawn Malinowski' THEN 'Shawn Malinowski (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808716536'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068208369 (Sheena Mills) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Sheena Mills' THEN 'Sheena Mills (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068208369'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5877745725 (Sheri Heiduk) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Sheri Heiduk' THEN 'Sheri Heiduk (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5877745725'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5877747259 (Sherry Glover Temp) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Sherry Glover Temp' THEN 'Sherry Glover Temp (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5877747259'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5876741007 (Stephanie Holinaty) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Stephanie Holinaty' THEN 'Stephanie Holinaty (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5876741007'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5877793661 (Stuart Harkness) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Stuart Harkness' THEN 'Stuart Harkness (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5877793661'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986982 (Sudheesh Kumar M) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Sudheesh Kumar M' THEN 'Sudheesh Kumar M (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986982'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986131 (T. Minh Nguy) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'T. Minh Nguy' THEN 'T. Minh Nguy (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986131'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068208324 (Tanya Turcotte) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Tanya Turcotte' THEN 'Tanya Turcotte (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068208324'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068204052 (Tarrelle LaClare) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Tarrelle LaClare' THEN 'Tarrelle LaClare (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068204052'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986042 (Taryn Nickel) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Taryn Nickel' THEN 'Taryn Nickel (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986042'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068202466 (Teva Heide) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Teva Heide' THEN 'Teva Heide (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068202466'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808743332 (Thomas Edwards) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Thomas Edwards' THEN 'Thomas Edwards (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808743332'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068251922 (Tracey Molloy) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Tracey Molloy' THEN 'Tracey Molloy (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068251922'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808743317 (Tracy Wiltermuth) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Tracy Wiltermuth' THEN 'Tracy Wiltermuth (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808743317'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808743322 (Travis Berg) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Travis Berg' THEN 'Travis Berg (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808743322'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5877745728 (Travis Rotariu) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Travis Rotariu' THEN 'Travis Rotariu (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5877745728'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7808303165 (Trista Ullock) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Trista Ullock' THEN 'Trista Ullock (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7808303165'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068208729 (Troy Salzl-Borzel) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Troy Salzl-Borzel' THEN 'Troy Salzl-Borzel (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068208729'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068202491 (Tyler Long) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Tyler Long' THEN 'Tyler Long (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068202491'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068251846 (Vaughn Oberst) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Vaughn Oberst' THEN 'Vaughn Oberst (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068251846'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986367 (Vinh Tran) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Vinh Tran' THEN 'Vinh Tran (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986367'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986173 (Waniya Khan) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Waniya Khan' THEN 'Waniya Khan (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986173'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068208277 (Winson Avara) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Winson Avara' THEN 'Winson Avara (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068208277'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 4032986150 (withaq al shibani) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'withaq al shibani' THEN 'withaq al shibani (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '4032986150'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5877749442 (yiyang DU) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'yiyang DU' THEN 'yiyang DU (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5877749442'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 5877745939 (Yongxin Wang) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Yongxin Wang' THEN 'Yongxin Wang (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '5877745939'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 7807255003 (Yunji Jiang) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Yunji Jiang' THEN 'Yunji Jiang (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '7807255003'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- Mark phone 3068204401 (Zachary Chorneyko) as EXPIRED
UPDATE C_0000000104_ServiceDetails
SET Username = CASE
    WHEN Username = 'Zachary Chorneyko' THEN 'Zachary Chorneyko (EXPIRED)'
    ELSE Username + ' (EXPIRED)'
END
WHERE AssetID = '3068204401'
  AND DateRef IN ('202512', '202511');  -- Only current months

-- ===============================================================================
-- VERIFICATION QUERIES
-- ===============================================================================

-- Count phones marked as EXPIRED
SELECT COUNT(*) as phones_marked_expired
FROM C_0000000104_ServiceDetails
WHERE Username LIKE '%(EXPIRED)%'
  AND DateRef IN ('202512', '202511');

-- Show sample of marked phones
SELECT TOP 10 AssetID, Username, DateRef
FROM C_0000000104_ServiceDetails
WHERE Username LIKE '%(EXPIRED)%'
  AND DateRef IN ('202512', '202511')
ORDER BY AssetID;

-- ===============================================================================
-- SAFETY CONTROLS
-- ===============================================================================

PRINT 'EXPIRED phone marking completed';
PRINT 'Review results above before committing';

-- COMMIT;
-- ROLLBACK;
