-- Write a query that prints a list of employee
-- names (i.e.: the name attribute) for employees 
-- in Employee having a salary greater than  per 
-- month who have been employees for less than  months. 
-- Sort your result by ascending employee_id.

-- Input Format

-- The Employee table containing employee data for 
-- a company is described as follows:

-- EMPLOYEE
-- -- ------------------------------------------------
-- -- Field          | Type
-- -- ------------------------------------------------
-- -- EMPLOYEE_ID    | INTEGER
-- -- NAME           | STRING
-- -- MONTHS         | INTEGER
-- -- SALARY         | INTEGER
-- -- ------------------------------------------------

-- where employee_id is an employee's ID number, name is 
-- their name, months is the total number of months they've 
-- been working for the company, and salary is the their monthly salary.

-- Sample Input

-- EMPLOYEE
-- -- ----------------------------------------------------------------
-- -- EMPLOYEE_ID | NAME     | MONTHS | SALARY
-- -- ----------------------------------------------------------------
-- -- 12228       | Rose     | 15     | 1968
-- -- 33645       | Angela   | 1      | 3443
-- -- 45692       | Frank    | 17     | 1608
-- -- 56118       | Patrick  | 7      | 1345
-- -- 59725       | Lisa     | 11     | 2330
-- -- 74197       | Kimberly | 16     | 4372
-- -- 78454       | Bonnie   | 8      | 1771
-- -- 83565       | Michael  | 6      | 2017
-- -- 98607       | Todd     | 5      | 3396
-- -- 99989       | Joe      | 9      | 3573
-- -- ----------------------------------------------------------------

-- Sample Output

-- Angela
-- Michael
-- Todd
-- Joe
-- Explanation

-- Angela has been an employee for  month and earns  per month.

-- Michael has been an employee for  months and earns  per month.

-- Todd has been an employee for  months and earns  per month.

-- Joe has been an employee for  months and earns  per month.

-- We order our output by ascending employee_id.

select name 
from Employee 
where (salary>2000 and months<10) 
order by employee_id;

-- Your Output (stdout)
-- Rose 
-- Patrick 
-- Lisa 
-- Amy 
-- Pamela 
-- Jennifer 
-- Julia 
-- Kevin 
-- Paul 
-- Donna 
-- Michelle 
-- Christina 
-- Brandon 
-- Joseph 
-- Jesse 
-- Paula 
-- Louise 
-- Evelyn 
-- Emily 
-- Jonathan 
-- Nancy 
-- Benjamin 
-- Roy 
-- Diana 
-- Christine 