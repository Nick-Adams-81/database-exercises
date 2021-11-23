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

