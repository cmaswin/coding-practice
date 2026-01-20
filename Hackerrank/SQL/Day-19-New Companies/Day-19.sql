-- Ambers conglomerate corporation just acquired some new companies.
-- Each of the companies follows this hierarchy:
-- -- Company Hierarchy Structure
-- Founder
--   ↓
-- Lead_Manager
--   ↓
-- Senior_Manager
--   ↓
-- Manager
--   ↓
-- Employee

-- Given the table schemas below, write a query to print the 
-- company_code, founder name, total number of lead managers, 
-- total number of senior managers, total number of managers, 
-- and total number of employees. Order your output by ascending 
-- company_code.

-- Note:

-- The tables may contain duplicate records.
-- The company_code is string, so the sorting should not be numeric. 
-- For example, if the company_codes are C_1, C_2, and C_10, then the 
-- ascending company_codes will be C_1, C_10, and C_2.
-- Input Format

-- The following tables contain company data:

-- Company: The company_code is the code of the company and founder is 
-- the founder of the company.

-- Company
-- ---------
-- company_code STRING
-- founder      STRING

-- Lead_Manager: The lead_manager_code is the code of the lead manager, 
-- and the company_code is the code of the working company.

-- Lead_Manager
-- -------------
-- lead_manager_code STRING
-- company_code      STRING

-- Senior_Manager: The senior_manager_code is the code of the senior 
-- manager, the lead_manager_code is the code of its lead manager, and 
-- the company_code is the code of the working company.

-- Senior_Manager
-- ---------------
-- senior_manager_code STRING
-- lead_manager_code   STRING
-- company_code        STRING

-- Manager: The manager_code is the code of the manager, the 
-- senior_manager_code is the code of its senior manager, the 
-- lead_manager_code is the code of its lead manager, and the 
-- company_code is the code of the working company.

-- Manager
-- --------
-- manager_code        STRING
-- senior_manager_code STRING
-- lead_manager_code   STRING
-- company_code        STRING

-- Employee: The employee_code is the code of the employee, the 
-- manager_code is the code of its manager, the senior_manager_code 
-- is the code of its senior manager, the lead_manager_code is the 
-- code of its lead manager, and the company_code is the code of the 
-- working company.

-- Employee
-- ---------
-- employee_code       STRING
-- manager_code        STRING
-- senior_manager_code STRING
-- lead_manager_code   STRING
-- company_code        STRING

-- Sample Input

-- Company Table:

-- | company_code | founder  |
-- | ------------ | -------- |
-- | C1           | Monika   |
-- | C2           | Samantha |

-- Lead_Manager Table:

-- | lead_manager_code | company_code |
-- | ----------------- | ------------ |
-- | LM1               | C1           |
-- | LM2               | C2           |

-- Senior_Manager Table:

-- | senior_manager_code | lead_manager_code | company_code |
-- | ------------------- | ----------------- | ------------ |
-- | SM1                 | LM1               | C1           |
-- | SM2                 | LM1               | C1           |
-- | SM3                 | LM2               | C2           |

-- Manager Table:

-- | manager_code | senior_manager_code | lead_manager_code | company_code |
-- | ------------ | ------------------- | ----------------- | ------------ |
-- | M1           | SM1                 | LM1               | C1           |
-- | M2           | SM3                 | LM2               | C2           |
-- | M3           | SM3                 | LM2               | C2           |

-- Employee Table:

-- | employee_code | manager_code | senior_manager_code | lead_manager_code | company_code |
-- | ------------- | ------------ | ------------------- | ----------------- | ------------ |
-- | E1            | M1           | SM1                 | LM1               | C1           |
-- | E2            | M1           | SM1                 | LM1               | C1           |
-- | E3            | M2           | SM3                 | LM2               | C2           |
-- | E4            | M3           | SM3                 | LM2               | C2           |

-- Sample Output

-- C1 Monika 1 2 1 2
-- C2 Samantha 1 1 2 2

-- Explanation

-- In company C1, the only lead manager is LM1. There are two 
-- senior managers, SM1 and SM2, under LM1. There is one manager, M1, 
-- under senior manager SM1. There are two employees, E1 and E2, under 
-- manager M1.

-- In company C2, the only lead manager is LM2. There is one senior 
-- manager, SM3, under LM2. There are two managers, M2 and M3, under 
-- senior manager SM3. There is one employee, E3, under manager M2, and 
-- another employee, E4, under manager, M3.

select com.company_code,com.founder,
count( distinct lm.lead_manager_code)as lead_manager,
count(distinct sm.senior_manager_code) as senior_manager,
count(distinct m.manager_code) as manager,
count(distinct e.employee_code) as employee 
from  Company com join Lead_Manager lm on com.company_code=lm.company_code
join Senior_Manager sm on lm.company_code=sm.company_code 
join Manager m on sm.company_code=m.company_code
join Employee e on m.company_code=e.company_code
group by com.company_code,com.founder
order by com.company_code asc;

-- Input (stdin)
-- INPUT
-- Expected Output
-- C1 Angela 1 2 5 13 
-- C10 Earl 1 1 2 3 
-- C100 Aaron 1 2 4 10 
-- C11 Robert 1 1 1 1 
-- C12 Amy 1 2 6 14 
-- C13 Pamela 1 2 5 14 
-- C14 Maria 1 1 3 5 
-- C15 Joe 1 1 2 3 
-- C16 Linda 1 1 3 5 
-- C17 Melissa 1 2 3 7 
-- C18 Carol 1 2 5 6 
-- C19 Paula 1 2 4 7 
-- C2 Frank 1 1 1 3 
-- C20 Marilyn 1 1 2 2 
-- C21 Jennifer 1 1 3 7 
-- C22 Harry 1 1 3 6 
-- C23 David 1 1 1 2 
-- C24 Julia 1 1 2 6 
-- C25 Kevin 1 1 2 5 
-- C26 Paul 1 1 1 3