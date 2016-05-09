USE employees;

SELECT last_name 
FROM employees
GROUP BY last_name DESC
LIMIT 10;

SELECT emp_no, first_name, last_name, hire_date, birth_date
FROM employees
WHERE hire_date BETWEEN '1989-12-31' AND '2000-01-01'
AND birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5;

