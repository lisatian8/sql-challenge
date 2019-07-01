
--sql to create tables

--1.
--departments

--drop table if it exists
drop table departments;

-- Create a new table departments
CREATE TABLE departments (
  dept_no VARCHAR(30) NOT NULL PRIMARY KEY,
  dept_name VARCHAR(30) NOT NULL
);


--select * from departments 
--order by dept_no

--select count(1) from departments
--9




--2.
--employees
--drop table if it exists
drop table employees;

-- Create a new table employees
CREATE TABLE employees (
  emp_no INT NOT NULL PRIMARY KEY,
  birth_date date,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  gender char(1),
  hire_date date 
);


--select * from employees
--order by emp_noo

--select count(1) from employees
--300024


--3.
--dept_manager
--drop table if it exists
drop table dept_manager;

-- Create a new table dept_manager
CREATE TABLE dept_manager (
  dept_no VARCHAR(30) NOT NULL,
  emp_no INT NOT NULL,
  from_date date,
  to_date date 
);

ALTER TABLE "dept_manager" ADD CONSTRAINT "pk_DEPT_MANAGER_DEPT_NO_EMP_NO" 
PRIMARY KEY("dept_no", "emp_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_DEPT_MANAGER_DEPT_NO" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_DEPT_MANAGER_EMP_NO" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");


--select * from dept_manager
--order by dept_no, emp_no

--select count(1) from dept_manager
--24



--4.
--dept_emp
--drop table if it exists
drop table dept_emp;

-- Create a new table dept_emp
CREATE TABLE dept_emp (
  emp_no INT NOT NULL,
  dept_no VARCHAR(30) NOT NULL,
  from_date date,
  to_date date 
);


ALTER TABLE "dept_emp" ADD CONSTRAINT "pk_DEPT_EMP_DEPT_NO_EMP_NO" 
PRIMARY KEY("emp_no", "dept_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_DEPT_EMP_DEPT_NO" FOREIGN KEY("DEPT_NO")
REFERENCES "DEPTARTMENTS" ("DEPT_NO");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_DEPT_EMP_EMP_NO" FOREIGN KEY("EMP_NO")
REFERENCES "EMPLOYEES ("EMP_NO");


--select * from dept_emp
--order by emp_no, dept_no

select count(1) from dept_emp
331603



--5.
--titles
--drop table if it exists
drop table titles;

-- Create a new table titles
CREATE TABLE titles (
  emp_no INT NOT NULL,
  title VARCHAR(50) NOT NULL,
  from_date date,
  to_date date 
);

ALTER TABLE "titles" ADD CONSTRAINT "pk_emp_no_title" 
PRIMARY KEY("emp_no", "title", "from_date");

ALTER TABLE "titles" ADD CONSTRAINT "fk_TITLES_EMP_NO" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");


-select * from titles
-order by emp_no, title, from_date

--select count(1) from titles
--443308



--6.
--salaries
--drop table if it exists
drop table salaries;

-- Create a new table salaries
CREATE TABLE salaries (
  emp_no INT NOT NULL,
  salary INT NOT NULL,
  from_date date,
  to_date date 
);

ALTER TABLE "salaries" ADD CONSTRAINT "pk_emp_no_salary" 
PRIMARY KEY("emp_no", "salary");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");


--select * from salaries
--order by emp_no, salary;


--select count(1) from salaries;
--30024

