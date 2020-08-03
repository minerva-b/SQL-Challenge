-- Creating queries for all tables:

-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM Employees e
JOIN Salaries s ON
e.emp_no = s.emp_no;

-- 2. List last name, first name, and hire date for employees who were hired in 1986.
SELECT last_name, first_name, hire_date
FROM Employees
WHERE extract(year FROM hire_date) = 1986;

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
FROM Dept_Manager m
JOIN Departments d ON m.dept_no = d.dept_no
JOIN Employees e ON m.emp_no = e.emp_no

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Departments d
JOIN Dept_Emp de ON d.dept_no = de.dept_no
JOIN Employees e ON de.emp_no = e.emp_no

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT e.first_name, e.last_name, e.sex
FROM Employees e
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM Departments d
JOIN Dept_Emp de ON d.dept_no = de.dept_no
JOIN Employees e ON de.emp_no = e.emp_no
WHERE dept_name = 'Sales';

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM Departments d
JOIN Dept_Emp de ON d.dept_no = de.dept_no
JOIN Employees e ON de.emp_no = e.emp_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS "Frequency Count of Last Names"
FROM Employees
GROUP BY last_name 
ORDER BY "Frequency Count of Last Names" DESC;