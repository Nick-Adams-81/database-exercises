USE employees;


SELECT first_name, last_name
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = '101010'
);


SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'full name', t.title
FROM employees AS e
         JOIN titles t
              ON e.emp_no = t.emp_no
WHERE first_name IN (
    SELECT first_name
    FROM employees
    WHERE first_name = 'Aamod'
);


SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Name', t.title
FROM employees AS e
         JOIN titles t
              ON e.emp_no = t.emp_no
WHERE title IN (
    SELECT title
    FROM titles
    WHERE title = 'Manager'
      AND e.gender = 'F'
)
  AND t.to_date = '9999-01-01';


SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Name', dep.dept_name, t.title
FROM employees AS e
         JOIN titles t
              ON e.emp_no = t.emp_no
         JOIN current_dept_emp AS d
              ON e.emp_no = d.emp_no
         JOIN departments AS dep
              ON d.dept_no = dep.dept_no
WHERE dept_name IN (
    SELECT dept_name
    FROM departments
    WHERE title = 'Manager'
      AND e.gender = 'F'
)
  AND t.to_date = '9999-01-01'
ORDER BY dept_name;


SELECT e.first_name, e.last_name, s.salary
FROM employees AS e
         JOIN salaries s
             ON e.emp_no = s.emp_no
ORDER BY s.salary DESC
LIMIT 1;
