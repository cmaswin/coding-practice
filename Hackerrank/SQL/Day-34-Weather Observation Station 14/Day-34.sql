-- Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than.
-- Truncate your answer to  decimal places.
-- Input Format
-- The STATION table is described as follows:

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

-- where LAT_N is the northern latitude and LONG_W is the western longitude.

-- Expected Output:
-- 137.0193

select truncate(max(LAT_N),4) from STATION 
where LAT_N<137.2345;

-- Your Output (stdout)
-- 137.0193