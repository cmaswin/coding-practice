-- Query the list of CITY names from STATION which 
-- have vowels (i.e., a, e, i, o, and u) as both 
-- their first and last characters. Your result 
-- cannot contain duplicates.

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

-- Expected Output
-- Acme 
-- Aguanga 
-- Alba 
-- Aliso Viejo 
-- Alpine 
-- Amazonia 
-- Amo 
-- Andersonville 
-- Archie 
-- Arispe 
-- Arkadelphia 
-- Atlantic Mine 
-- East China 
-- East Irvine 
-- Eastlake 
-- Eleele 
-- Elm Grove 
-- Eriline 
-- Ermine 
-- Eskridge

select distinct city from STATION 
where city regexp '^[aeiouAEIOU].*[aeiouAEIOU]$';

-- Your Output
-- Acme 
-- Aguanga 
-- Alba 
-- Aliso Viejo 
-- Alpine 
-- Amazonia 
-- Amo 
-- Andersonville 
-- Archie 
-- Arispe 
-- Arkadelphia 
-- Atlantic Mine 
-- East China 
-- East Irvine 
-- Eastlake 
-- Eleele 
-- Elm Grove 
-- Eriline 
-- Ermine 
-- Eskridge