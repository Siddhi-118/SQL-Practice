-- =====================================================
-- Topic    : LIKE & WILDCARDS
-- Database : Company
-- Author   : Siddhi Kakade
-- GitHub   : Siddhi-118
-- =====================================================

-- Find clients whose name contains LLC.
select * from client
where Client_name like '%LLC';

-- Find branch suppliers whose supplier name ends with Labels.
select * from branch_supplier
where Supplier_name like '%Labels';

-- find employees born in october
select * from employee
where Birth_date like '____-10%';

-- Finds employees whose first name starts with S.
select * from employee
where First_Name like 'S%';

-- find clients whose name contains 'School'
select * from client
where Client_name like '%School%';

-- find suppliers whose name starts with 'A' and ends with 'Ltd'
select * from branch_supplier
where Supplier_name like 'A%Ltd';

-- Find employees born in 1999.
select * from employee
where Birth_date like '1999%';

-- find employees whose first name has exactly 5 letters.
select * from employee
where First_Name like '_____';

-- Finds employees whose last name ends with son.
select * from employee
where Last_Name like '%son';

-- The second letter must be a of clients name.
select * from client
where Client_name like '_a%';

-- find employees born in December.
select * from employee
where Birth_date like '____-12%';