-- =====================================================
-- Topic    : UNION
-- Database : Company
-- Author   : Siddhi Kakade
-- GitHub   : Siddhi-118
-- =====================================================

-- Display all employee first names and client names in one list.
select First_Name from employee
union
select Client_Name from client;

-- Display all employee first names and branch names in one list.
select First_Name from employee
union
select Branch_Name from branch;

-- Display all employee first names, branch names, and client names in one list.
select First_Name from employee
union
select Branch_Name from branch
union
select Client_Name from client;

-- Display client names with branch IDs and supplier names with branch IDs.
select Client_Name, Branch_id from client
union
select Supplier_Name, Branch_id from branch_supplier;

-- Display all money earned or spent in the company
select Salary from employee
union
select Total_Sales from works_with;

-- Display all employee IDs and branch IDs in one list.
select Emp_id from employee
union
select Branch_id from branch;

-- Display all employee first names and supplier names in one list.
select First_Name from employee
union
select Supplier_Name from branch_supplier;

-- Display all employee IDs and client IDs in one list.
select Emp_id from employee
union
select Client_id from client;

-- Display all employee first names and last names in a single column.
select First_Name from employee
union
select Last_Name from employee;

-- Display employee IDs with salaries and employee IDs with total sales.
select Emp_id, Salary from employee
union
select Emp_id, Total_Sales from works_with;