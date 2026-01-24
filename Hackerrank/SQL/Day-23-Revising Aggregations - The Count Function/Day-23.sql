-- Query a count of the number of cities in CITY having 
-- a Population larger than 100000.

-- Input Format

-- The CITY table is described as follows:

-- CITY
-- -- ------------------------------------------------
-- -- Field          | Type
-- -- ------------------------------------------------
-- -- ID             | NUMBER
-- -- NAME           | VARCHAR2(17)
-- -- COUNTRYCODE    | VARCHAR2(3)
-- -- DISTRICT       | VARCHAR2(20)
-- -- POPULATION     | NUMBER
-- -- ------------------------------------------------

-- Expected Output
-- 6

SELECT count(DISTRICT) AS CITY_COUNT
FROM CITY
WHERE POPULATION > 100000;

-- Your Output (stdout)
-- 6

