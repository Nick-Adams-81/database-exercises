USE employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01'
  AND e.emp_no = 10001;


SELECT CONCAT(e.first_name, ' ', e.last_name) AS department_manager, d.dept_name
FROM employees as e
         JOIN dept_emp as employee_no
              ON employee_no.emp_no = e.emp_no
         JOIN dept_manager as manager
              ON manager.emp_no = employee_no.emp_no
         JOIN departments as d
              ON manager.dept_no = d.dept_no
WHERE manager.to_date = '9999-01-01'
ORDER BY dept_name;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS department_manager
FROM employees AS e
         JOIN dept_emp AS employee_no
              ON employee_no.emp_no = e.emp_no
         JOIN dept_manager AS manager
              ON manager.emp_no = employee_no.emp_no
         JOIN departments AS d
              ON manager.dept_no = d.dept_no
WHERE e.gender = 'F'
  AND manager.to_date = '9999-01-01'
ORDER BY dept_name;

SELECT *
FROM departments
WHERE dept_name = 'Customer Service'
LIMIT 10;


SELECT title, COUNT(titles.emp_no) AS 'Count'
FROM titles
         JOIN dept_emp AS de
              ON titles.emp_no = de.emp_no
         JOIN departments AS dept
              ON de.dept_no = dept.dept_no
WHERE dept.dept_name = 'Customer Service'
  AND titles.to_date = '9999-01-01'
  AND de.to_date = '9999-01-01'
GROUP BY titles.title;

SELECT d.dept_name AS 'Department', CONCAT(e.first_name, ' ', e.last_name) AS Department_manager, s.salary
FROM employees as e
         JOIN dept_emp AS employee_no
              ON employee_no.emp_no = e.emp_no
         JOIN dept_manager AS manager
              ON manager.emp_no = employee_no.emp_no
         JOIN departments AS d
              ON manager.dept_no = d.dept_no
         JOIN salaries AS s
              ON manager.emp_no = s.emp_no
WHERE s.to_date = '9999-01-01'
  AND manager.to_date = '9999-01-01'
ORDER BY dept_name;












