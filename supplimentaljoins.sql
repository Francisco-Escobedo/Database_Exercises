-- (1)
-- Find the name of all departments currently managed by women
-- including the manager's name.
SELECT CONCAT(first_name, ' ', last_name) AS full_name, gender, dept_name
FROM employees
JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
JOIN departments ON departments.dept_no = dept_manager.dept_no
JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE salaries.to_date>NOW() AND gender='F' AND dept_manager.dept_no IN (
    SELECT dept_no
    FROM departments);

-- (2)
-- Find the current titles of employees currently working in the 
-- Customer Service department.
SELECT title, dept_name, count(title)
FROM employees
RIGHT JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
LEFT JOIN departments ON dept_emp.dept_no = departments.dept_no
RIGHT JOIN titles ON employees.emp_no = titles.emp_no
JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE departments.dept_name = 'Customer Service' AND salaries.to_date>NOW() AND dept_emp.to_date>NOW()
GROUP BY title;


-- (3)
-- Find the current salary of all current managers.
SELECT dept_name, CONCAT(first_name, ' ', last_name) AS full_name, salary
FROM employees
JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
JOIN departments ON departments.dept_no = dept_manager.dept_no
JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE salaries.to_date>NOW()
GROUP BY first_name;

-- (4)
-- Find the names of all current employees, their department name, 
-- and their current manager's name.
SELECT CONCAT(first_name, ' ', last_name) AS full_name, dept_name
FROM employees
LEFT JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
JOIN salaries ON salaries.emp_no = employees.emp_no
WHERE salaries.to_date>NOW();

-- 

SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS full_name, dept_name, 
(SELECT CONCAT(employees.first_name, ' ', employees.last_name) FROM employees WHERE (employees.emp_no=dept_emp.emp_no) AND (dept_emp.dept_no=dept_manager.dept_no)) AS Manager
FROM employees
LEFT JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
JOIN employees AS emp ON employees.emp_no = dept_manager.emp_no
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
JOIN salaries ON salaries.emp_no = employees.emp_no
WHERE salaries.to_date>NOW();

