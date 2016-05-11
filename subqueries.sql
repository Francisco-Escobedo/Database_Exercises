USE employees;

-- Selects all employees with the same hire date as employee 101010
SELECT *
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no=101010);

-- Finds all titles held by employees with the first name Aamod.
SELECT title, emp_no
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod');

-- Finds the department managers that are female
SELECT CONCAT(first_name,' ', last_name) AS full_name, emp_no, gender
FROM employees
WHERE gender='F' AND emp_no IN (
    SELECT emp_no
    FROM dept_manager);
 
-- Finds the department names that have female managers
SELECT dept_name
FROM departments
where dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE emp_no IN(
        SELECT emp_no
        FROM employees
        WHERE gender='F'));