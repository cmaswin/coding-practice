-- Query the sum of Northern Latitudes (LAT_N) from 
-- STATION having values greater than 38.7880 and less 
-- than 137.2345. Truncate your answer to  decimal places.

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

-- where LAT_N is the northern latitude and LONG_W is the 
-- western longitude.

-- Expected Output
-- 36354.8135

select truncate(sum(LAT_N),4)
from STATION 
where LAT_N>38.7880 and LAT_N<137.2345;

-- Your Output (stdout)
-- 36354.8135