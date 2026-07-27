-- =====================================================
-- Topic    : ORDER BY & LIMIT
-- Database : Company
-- Author   : Siddhi Kakade
-- GitHub   : Siddhi-118
-- =====================================================

-- Display all employees sorted by salary in ascending order.
select * from employee 
order by Salary;

-- Display all employees sorted by salary in descending order.
select * from employee 
order by Salary desc;

-- Display the first name, last name, and salary of employees sorted by first name (A–Z).
select First_Name, Last_Name, Salary
from employee
order by First_Name;

-- Display all employees sorted by birth date, showing the oldest employee first.
select * from employee
order by Birth_date;

-- Display the top 5 highest-paid employees.
select * from employee
order by Salary desc limit 5;

-- Display the 3 youngest employees.
select * from employee
order by Birth_date limit 3;

-- Display the first 4 female employees sorted by salary (highest first).
select * from employee
where Gender = 'F'
order by Salary desc 
limit 4;

-- Display the top 5 employees with the highest salaries. If two employees have the same salary, sort them by first name alphabetically.
select * from employee
order by Salary desc, First_Name
limit 5;

-- Display the top 3 highest-paid employees from Branch 2.
select * from employee
where Branch_id = 2
order by Salary desc
limit 3;

-- Display the top 5 employees sorted by:
1.Branch ID (ascending)
2.Salary (descending)
3.First Name (ascending)
select * from employee
order by Branch_id, Salary desc,First_Name
limit 5;

