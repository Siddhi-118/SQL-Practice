-- =====================================================
-- Topic    : AGGREGATE & FUNCTION
-- Database : Company
-- Author   : Siddhi Kakade
-- GitHub   : Siddhi-118
-- =====================================================

-- Count the total number of employees.
select count(Emp_id) as total_Emp
from employee;

-- Find the highest salary in the employee table.
select max(Salary) as Highest_Salary
from employee;

-- Find the average salary of all employees.
select avg(Salary) as Average_Salary
from employee;

-- Count how many employees are in each branch.
select Branch_id, count(Emp_id) as Total_Emp
from employee
group by Branch_id;

-- Find the total salary paid in each branch.
select Branch_id, sum(Salary) as Total_Salary
from employee
group by Branch_id;

-- Find the highest salary for each gender.
select Gender, max(Salary) as Highest_Salary
from employee
group by Gender;

-- Show the branches where the average salary is greater than 60,000.
select Branch_id, avg(Salary) as Average_Salary
from employee
group by Branch_id
having Average_Salary > 60000;

-- Find the total sales made by each employee.
select Emp_id, sum(Total_Sales) 
from works_with
group by Emp_id;

-- Show only those employees whose total sales are greater than 50,000.
select Emp_id, sum(Total_Sales) 
from works_with
group by Emp_id
having sum(Total_Sales) > 50000;

-- Find the branch that has the highest average salary.
select Branch_id, avg(Salary) as Average_Salary
from employee
group by Branch_id
order by Average_Salary desc
limit 1;


