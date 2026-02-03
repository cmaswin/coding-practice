-- Samantha was tasked with calculating the average 
-- monthly salaries for all employees in the EMPLOYEES 
-- table, but did not realize her keyboard s  
-- key was broken until after completing the calculation. 
-- She wants your help finding the difference between her 
-- miscalculation (using salaries with any zeros removed), 
-- and the actual average salary.

-- Write a query calculating the amount of error (i.e.:  
-- average monthly salaries), and round it up to the next integer.

-- Input Format

-- The EMPLOYEES table is described as follows:

-- EMPLOYEE
-- -- ------------------------------------------------
-- -- Field          | Type
-- -- ------------------------------------------------
-- -- ID             | INTEGER
-- -- NAME           | STRING
-- -- SALARY         | INTEGER
-- -- ------------------------------------------------

-- Note: Salary is per month.

-- Constraints

-- 1000<salary<10^5

-- Sample Input

-- EMPLOYEE
-- -- ---------------------------------------
-- -- ID | NAME     | SALARY
-- -- ---------------------------------------
-- -- 1  | Kristeen | 1420
-- -- 2  | Ashley   | 2006
-- -- 3  | Julia    | 2210
-- -- 4  | Maria    | 3000
-- -- ---------------------------------------

-- Sample Output

-- 2061
-- Explanation

-- The table below shows the salaries without zeros as 
-- they were entered by Samantha:

-- EMPLOYEE
-- -- ---------------------------------------
-- -- ID | NAME     | SALARY
-- -- ---------------------------------------
-- -- 1  | Kristeen | 142
-- -- 2  | Ashley   | 26
-- -- 3  | Julia    | 221
-- -- 4  | Maria    | 3
-- -- ---------------------------------------

-- Samantha computes an average salary of . 
-- The actual average salary is .

-- The resulting error between the two calculations is .
-- Since it is equal to the integer , it does not get rounded up.

-- Sample Output:
-- 2253

select ceil(avg(Salary)-avg(replace(Salary,'0','')))
from Employees;

-- Your Output:
-- 2253