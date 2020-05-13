CREATE TABLE departments(
	dept_no VARCHAR(4) PRIMARY KEY,
	dept_name VARCHAR(30)
);

CREATE TABLE titles(
	title_id VARCHAR(5) PRIMARY KEY,
	title TEXT
);

CREATE TABLE employees(
	emp_no INTEGER PRIMARY KEY,
	emp_title_id VARCHAR(5) REFERENCES titles (title_id),
	birth_date DATE,
	first_name TEXT,
	last_name TEXT,
	sex CHAR,
	hire_date DATE
);

CREATE TABLE dept_emp(
	emp_no INTEGER REFERENCES employees (emp_no),
	dept_no VARCHAR(5) REFERENCES departments (dept_no)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(5) REFERENCES departments (dept_no),
	emp_no INTEGER REFERENCES employees (emp_no)
);

CREATE TABLE salaries(
	emp_no INTEGER REFERENCES employees (emp_no),
	salary INTEGER 
);

