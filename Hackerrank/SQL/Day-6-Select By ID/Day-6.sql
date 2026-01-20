-- Query all columns for a city in CITY with the ID 1661.

-- The CITY table is described as follows:

-- CITY
-- --------------------------------
-- ID           NUMBER
-- NAME         VARCHAR2(17)
-- COUNTRYCODE  VARCHAR2(3)
-- DISTRICT     VARCHAR2(20)
-- POPULATION   NUMBER

-- Expected Output
-- 1661 Sayama JPN Saitama 162472

SELECT * from CITY WHERE ID='1661';

-- YOUR OUTPUT 
-- 1661 Sayama JPN Saitama 162472