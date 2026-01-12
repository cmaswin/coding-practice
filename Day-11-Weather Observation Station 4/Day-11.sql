-- Find the difference between the total number of CITY entries 
-- in the table and the number of distinct CITY entries in the table.
-- The STATION table is described as follows:

-- STATION
-- -----------------------------
-- ID       NUMBER
-- CITY     VARCHAR2(21)
-- STATE    VARCHAR2(2)
-- LAT_N    NUMBER
-- LONG_W   NUMBER

-- Expected OUTPUT 
-- 13

select COUNT(CITY)- COUNT(DISTINCT CITY) from Station;


-- Your Output (stdout)
-- 13