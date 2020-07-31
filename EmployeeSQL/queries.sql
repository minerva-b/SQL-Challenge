-- Creating queries for all tables:

-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM Employees e
JOIN Salaries s ON
e.emp_no = s.emp_no;

-- CREATE VIEW Emp AS
-- SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
-- FROM Employees e
-- JOIN Salaries s ON
-- e.emp_no = s.emp_no;
-- SELECT * FROM Emp;

--SELECT COUNT(*) FROM Employees; = 300024

-- 2. List last name, first name, and hire date for employees who were hired in 1986.
SELECT last_name, first_name, hire_date
FROM Employees
WHERE extract(year from hire_date) = 1986;

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
CREATE VIEW Employees AS
SELECT e.dept_no, e.dept_name, e.emp_no, e.last_name, e.first_name
FROM Employees e
JOIN Departments d ON
e.emp_no = d.emp_no;

SELECT dept_no, dept_name, emp_no, last_name, first_name
FROM Employees
WHERE title = 'Manager';
