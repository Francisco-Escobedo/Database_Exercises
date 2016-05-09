USE employees;

SELECT emp_no, first_name, last_name, gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') 
    AND gender = 'M'
    ORDER BY last_name ASC, first_name ASC;

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
WHERE hire_date > '1989-12-31';

SELECT emp_no, first_name, last_name, hire_date, birth_date
FROM employees
WHERE hire_date > '1989-12-31'
AND birth_date LIKE '%-12-25';


SELECT emp_no, first_name, last_name, birth_date
FROM employees
WHERE birth_date LIKE '%-12-25';

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';