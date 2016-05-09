USE employees;

SELECT emp_no, first_name, last_name, gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') 
    AND gender = 'M';

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
OR LIKE '%E';

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E';

SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE hire_date > '1990-01-01';

SELECT emp_no, first_name, last_name, birth_date
FROM employees
WHERE birth_date LIKE '%-12-25';

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%q%';