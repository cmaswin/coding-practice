-- Query the following two values from the STATION table:

-- The sum of all values in LAT_N rounded to a scale of  decimal places.
-- The sum of all values in LONG_W rounded to a scale of  decimal places.
-- Input Format

-- The STATION table is described as follows:
-- -- ------------------------------------------------
-- -- Field          | Type
-- -- ------------------------------------------------
-- -- ID             | NUMBER
-- -- CITY           | VARCHAR2(21)
-- -- STATE          | VARCHAR2(2)
-- -- LAT_N          | NUMBER
-- -- LONG_W         | NUMBER
-- -- ------------------------------------------------

-- where LAT_N is the northern latitude and LONG_W is the 
-- western longitude.

-- Output Format

-- Your results must be in the form:
-- lat lon where  is the sum of all values in LAT_N and  
-- is the sum of all values in LONG_W. Both results must be 
-- rounded to a scale of  decimal places.

-- Expected Output 
-- 42850.04 47381.48

select round(sum(LAT_N),2) as lat,
round(sum(LONG_W),2) as lon 
from STATION;

-- Your Output 
-- 42850.04 47381.48