SELECT *
FROM employees

SELECT *
FROM salaries

SELECT *
FROM dept_manager

SELECT *
FROM dept_emp

SELECT *
FROM departments

SELECT *
FROM titles

-- Question 1
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
LEFT JOIN salaries s ON e.emp_no = s.emp_no

-- Question 2
--Before I answer this question, i want to do some data cleaning. Any date that is before 01/01/1970 has 100 years added to it
--I wrote a couple of functions that will subtract that 100 for incorrect dates
UPDATE employees
SET birth_date = birth_date - interval '100 year'
WHERE birth_date > '2020-05-11';

UPDATE employees
SET hire_date = hire_date - interval '100 year'
WHERE hire_date > '2020-05-11';

-- Now to answer the actual question
SELECT e.first_name, e.last_name, e.hire_date
FROM employees e 
WHERE hire_date BETWEEN '1985-12-31' AND '1987-01-01'

--Question 3
SELECT dm.dept_no, de.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager dm
LEFT JOIN departments de ON dm.dept_no = de.dept_no
LEFT JOIN employees e ON dm.emp_no = e.emp_no

-- Question 4
SELECT e.emp_no, e.last_name, e.first_name, dp.dept_name
FROM employees e
LEFT JOIN dept_emp de ON e.emp_no = de.emp_no
LEFT JOIN departments dp ON de.dept_no = dp.dept_no