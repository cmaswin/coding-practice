-- We define an employees total earnings to be 
-- their monthly  worked, and the maximum total 
-- earnings to be the maximum total earnings for any 
-- employee in the Employee table. Write a query to 
-- find the maximum total earnings for all employees as 
-- well as the total number of employees who have maximum 
-- total earnings. Then print these values as  space-separated integers.

-- Input Format

-- The Employee table containing employee data for a company 
-- is described as follows:

-- EMPLOYEE
-- -- ------------------------------------------------
-- -- Field          | Type
-- -- ------------------------------------------------
-- -- EMPLOYEE_ID    | INTEGER
-- -- NAME           | STRING
-- -- MONTHS         | INTEGER
-- -- SALARY         | INTEGER
-- -- ------------------------------------------------

-- where employee_id is an employees ID number, name is 
-- their name, months is the total number of months theyve 
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

-- 69952 1
-- Explanation

-- The table and earnings data is depicted in the following diagram:

-- EMPLOYEE
-- -- ------------------------------------------------------------------------
-- -- EMPLOYEE_ID | NAME     | MONTHS | SALARY | EARNINGS
-- -- ------------------------------------------------------------------------
-- -- 12228       | Rose     | 15     | 1968   | 29520
-- -- 33645       | Angela   | 1      | 3443   | 3443
-- -- 45692       | Frank    | 17     | 1608   | 27336
-- -- 56118       | Patrick  | 7      | 1345   | 9415
-- -- 59725       | Lisa     | 11     | 2330   | 25630
-- -- 74197       | Kimberly | 16     | 4372   | 69952
-- -- 78454       | Bonnie   | 8      | 1771   | 14168
-- -- 83565       | Michael  | 6      | 2017   | 12102
-- -- 98607       | Todd     | 5      | 3396   | 16980
-- -- 99989       | Joe      | 9      | 3573   | 32157
-- -- ------------------------------------------------------------------------

-- The maximum earnings value is . The only employee with earnings  
-- is Kimberly, so we print the maximum earnings value () and a 
-- count of the number of employees who have earned  (which is ) 
-- as two space-separated values.

select salary*months as earnings,count(*)
from Employee
group by earnings 
order by earnings desc 
limit 1;

-- Your Output (stdout)
-- 108064 7 