-- =====================================================
-- Topic    : DATABASE & TABLE CREATION
-- Database : Company
-- Author   : Siddhi Kakade
-- GitHub   : Siddhi-118
-- =====================================================

--Create Database

create database company;
use company;

-- Creating table Employee

create table employee (
Emp_id int primary key,
First_Name varchar(30),
Last_Name varchar(30),
Birth_date date,
Gender varchar(1),
Salary int,
Super_id int,
Branch_id int
);

-- Creating table Branch

create table branch (
Branch_id int primary key,
Branch_name varchar(30),
mgr_id int,
mgr_startdate date,
foreign key (mgr_id) references employee(Emp_id) on delete set null
);

-- Creating table client

create table client (
Client_id int primary key,
Client_name varchar(30),
branch_id int,
foreign key(branch_id) references branch(branch_id) on delete set null
);

-- Creating table works with

create table works_with (
Emp_id int,
Client_id int,
Total_sales int,
primary key(Emp_id, Client_id),
foreign key (Emp_id) references employee (Emp_id) on delete cascade,
foreign key (Client_id) references client (Client_id) on delete cascade
);

-- Creating table Branch Suppliers

create table branch_supplier (
Branch_id int,
Supplier_name varchar(30),
Supply_type varchar(30),
primary key (Branch_id , Supplier_name),
foreign key (Branch_id) references branch (Branch_id) on delete cascade
);