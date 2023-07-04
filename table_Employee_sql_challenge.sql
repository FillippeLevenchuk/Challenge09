-- Create table for departments
CREATE TABLE departments (
	dept_no VARCHAR(30) PRIMARY KEY,  
	dept_name VARCHAR(30) NOT NULL
);

-- Create table for titles
CREATE TABLE titles (
	title_id VARCHAR(30) PRIMARY KEY, 
	title VARCHAR(30) NOT NULL
);

-- Create table for employees
CREATE TABLE employees (
	emp_no INTEGER PRIMARY KEY,
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date DATE,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR,
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- Create table for dept_emp
CREATE TABLE dept_emp (
	emp_no INTEGER,
	dept_no VARCHAR(30),  
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Create table for dept_manager
CREATE TABLE dept_manager (
	dept_no VARCHAR(30), 
	emp_no INTEGER,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Create table for salaries
CREATE TABLE salaries (
	emp_no INTEGER, 
	salary INTEGER,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Confirming the tables work
SELECT * FROM departments;
SELECT * FROM titles;
SELECT * FROM employees;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM salaries;