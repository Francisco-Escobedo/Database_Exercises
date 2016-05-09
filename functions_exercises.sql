USE employees;

-- Sorting names by gender(males)
SELECT emp_no, first_name, last_name, gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') 
AND gender = 'M'
ORDER BY last_name DESC, first_name DESC;

-- Count of names
SELECT COUNT(*), gender
FROM employees
WHERE first_name IN ('IRENA', 'Vidya', "Maya")
GROUP BY gender;

-- sorting names beginning and ending with the letter E
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
OR last_name LIKE '%E'
ORDER BY emp_no DESC;

SELECT CONCAT(first_name,' ', last_name) 
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E';

SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1989-12-31' AND '2000-01-01';

-- Employees hired in the 90s and who have birthdays on Christmas
SELECT emp_no, first_name, last_name, hire_date, birth_date
FROM employees
WHERE hire_date BETWEEN '1989-12-31' AND '2000-01-01'
AND birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC;

-- How many days the employee has been working here
SELECT datediff(curdate(), hire_date), emp_no, first_name, last_name, hire_date, birth_date
FROM employees
WHERE hire_date BETWEEN '1989-12-31' AND '2000-01-01'
AND birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC;

SELECT emp_no, first_name, last_name, birth_date
FROM employees
WHERE birth_date LIKE '%-12-25';

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';

-- GROUP BY clause
SELECT count(first_name), emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY first_name, last_name
ORDER BY last_name ASC;







