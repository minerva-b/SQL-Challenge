-- Creating 6 tables to import 6 CSV files:

-- 1. Departments Table
CREATE TABLE Departments (
	dept_no VARCHAR(20) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(30) NOT NULL
);
-- View Departments Table
SELECT * FROM Departments;


-- 2. Titles Table
CREATE TABLE Titles (
	title_id VARCHAR(10) PRIMARY KEY NOT NULL,
	title VARCHAR(20) NOT NULL
);
-- View Titles Table
SELECT * FROM Titles;


-- 3. Employees Table
CREATE TABLE Employees (
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR(20) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(10) NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id)
);
-- View Employees Table
SELECT * FROM Employees;


-- 4. Dept_Manager Table
CREATE TABLE Dept_Manager (
	dept_no VARCHAR(20) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);
-- View Dept_Manager Table
SELECT * FROM Dept_Manager;


-- 5. Dept_Emp Table
CREATE TABLE Dept_Emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(20) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);
-- View Dept_Emp Table
SELECT * FROM Dept_Emp;


-- 6. Salaries Table
CREATE TABLE Salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);
-- View Salaries Table
SELECT * FROM Salaries;

-- -- Commands that I need when/if I need to fix errors:
-- -- DROP TABLE if exists Departments CASCADE;
-- -- DROP TABLE if exists Titles CASCADE;
-- -- DROP TABLE if exists Employees CASCADE;
-- -- DROP TABLE if exists Dept_Manager CASCADE;
-- -- DROP TABLE if exists Dept_Emp CASCADE;
-- -- DROP TABLE if exists Salaries CASCADE;