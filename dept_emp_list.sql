--1. List the following details of each employee: employee number, last name, first name, gender, and salary.

select e.emp_no, last_name, first_name, gender, salary
from employees e, salaries s
where e.emp_no = s.emp_no
order by e.emp_no;


--2. List employees who were hired in 1986.

select * from employees
where hire_date >= to_date('1986-01-01', 'YYYY-MM-DD')
and hire_date < to_date('1987-01-01', 'YYYY-MM-DD')
order by hire_date;



--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

select dm.dept_no, dept_name, dm.emp_no, e.first_name, e.last_name, dm.from_date, e.hire_date
from dept_manager dm, departments d, employees e
where dm.dept_no = d.dept_no
and   dm.emp_no = e.emp_no
order by dm.dept_no, dm.emp_no;


--4. List the department of each employee with the following information: employee number, last name, first name, and department name.

select de.emp_no, last_name, first_name, dept_name
from dept_emp de, departments d, employees e
where de.dept_no = d.dept_no
and de.emp_no = e.emp_no
order by de.dept_no, de.emp_no;



--5. List all employees whose first name is "Hercules" and last names begin with "B."

select * from employees
where first_name = 'Hercules'
and last_name like 'B%'
order by last_name;


--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

select de.emp_no, last_name, first_name, dept_name
from dept_emp de, departments d, employees e
where de.dept_no = d.dept_no
and de.emp_no = e.emp_no
and dept_name = 'Sales'
order by last_name;


--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

select de.emp_no, last_name, first_name, dept_name
from dept_emp de, departments d, employees e
where de.dept_no = d.dept_no
and de.emp_no = e.emp_no
and dept_name in( 'Sales', 'Development')
order by dept_name;


--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

select last_name, count(1) from employees
order by last_name desc;




