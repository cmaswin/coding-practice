-- Revising the Select Query II

-- Query the NAME field for all American cities in the CITY
-- table with populations larger than 120000. 
-- The CountryCode for America is USA.
-- The CITY table is described as follows:

-- CITY
-- --------------------------------------------
-- Field        | Type
-- --------------------------------------------
-- ID           | NUMBER
-- NAME         | VARCHAR2(17)
-- COUNTRYCODE  | VARCHAR2(3)
-- DISTRICT     | VARCHAR2(20)
-- POPULATION   | NUMBER

-- EXPECTED OUTPUT
-- Scottsdale
-- Corona
-- Concord
-- Cedar Rapids

SELECT Name from CITY where POPULATION>120000 AND COUNTRYCODE='USA';

-- Your Output (stdout)
-- Scottsdale
-- Corona
-- Concord
-- Cedar Rapids