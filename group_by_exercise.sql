USE employees;

SELECT title
FROM titles
GROUP BY title ASC;

SELECT DISTINCT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E'
GROUP BY last_name;