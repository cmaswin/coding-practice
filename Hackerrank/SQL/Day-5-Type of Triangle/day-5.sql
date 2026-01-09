-- Write a query identifying the type of each record in the TRIANGLES 
-- table using its three side lengths. Output one of the following 
-- statements for each record in the table:

-- Equilateral: It's a triangle with  sides of equal length.
-- Isosceles: It's a triangle with  sides of equal length.
-- Scalene: It's a triangle with  sides of differing lengths.
-- Not A Triangle: The given values of A, B, and C don't form a triangle.
-- Input Format

-- The TRIANGLES table is described as follows:

-- TRIANGLES
-- ------------------------------------------------
-- Column        | Type
-- ------------------------------------------------
-- A             | INTEGER
-- B             | INTEGER
-- C             | INTEGER
-- ------------------------------------------------
-- Each row in the table denotes the lengths of each of a triangle's 
-- three sides.

-- Sample Input

-- TRIANGLES
-- ---------------------------------
-- A     | B     | C
-- ---------------------------------
-- 20    | 20    | 23
-- 20    | 20    | 20
-- 20    | 21    | 22
-- 13    | 14    | 30
-- ---------------------------------

-- Sample Output

-- Isosceles
-- Equilateral
-- Scalene
-- Not A Triangle
-- Explanation

-- Values in the tuple  form an Isosceles triangle, because .
-- Values in the tuple  form an Equilateral triangle, because . 
-- Values in the tuple  form a Scalene triangle, because .
-- Values in the tuple  cannot form a triangle because the combined 
-- value of sides  and  is not larger than that of side .

SELECT
    CASE
        WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
        WHEN A = B AND B = C THEN 'Equilateral'
        WHEN A = B OR B = C OR A = C THEN 'Isosceles'
        ELSE 'Scalene'
    END
FROM TRIANGLES;

-- Your Output (stdout)
--     Equilateral
--     Equilateral
--     Isosceles
--     Equilateral
--     Isosceles
--     Equilateral
--     Scalene
--     Not A Triangle
--     Scalene
--     Scalene
--     Scalene
--     Not A Triangle
--     Not A Triangle
--     Scalene
--     Equilateral
--     BlogScoringEnvironmentFAQAbout UsHelpdeskCareersTerms Of 
    -- ServicePrivacy Policy
