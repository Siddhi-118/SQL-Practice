-- =====================================================
-- Topic    : SELECT & WHERE CLAUSE
-- Database : Company
-- Author   : Siddhi Kakade
-- GitHub   : Siddhi-118
-- =====================================================

-- Display all employees.
select * from employee;

-- Display all clients.
select * from client;

-- Display employee order by clause.
select * from employee order by Gender, First_Name;

-- Display employee only 5.
select * from employee limit 5;

-- Display First name & last Name of employee
select First_Name, Last_Name from employee;

-- Display Gender from table.
select distinct Gender from employee;

-- Display employees where salary is greater than 60,000.
select * from employee
where Salary > 60000;

-- Display all female employees.
select * from employee
where Gender = 'F';

-- Display employees whose Salary is between 50000 and 70000
select * from employee
where Salary between 50000 and 70000;

-- Display employees who belong to Branch_id = 2 and earn more than 55000.
select * from employee 
where Branch_id = 2 and Salary > 55000;

-- Display employees whose first name starts with 'D'.
select * from employee
where First_Name like 'D%';

-- Display employees whose last name ends with 'n'.
select * from employee
where Last_Name like '%n';

-- Display employees whose Branch_id is either 1 or 3.
select * from employee 
where Branch_id = 1 or Branch_id = 3;

-- Display employees whose Super_id is NULL.
select * from employee 
where Super_id is null;

-- Display male employees whose salary is between 50000 and 70000 and who work in Branch_id = 1.
select * from employee
where Gender = 'M' 
and Salary between 50000 and 70000 
and Branch_id = 1;

-- Display employees whose first name contains the letter 'a', salary is greater than 50000, and Super_id is NOT NULL.
select * from employee
where First_Name like '%a%'
and Salary > 50000
and Super_id is not null;
