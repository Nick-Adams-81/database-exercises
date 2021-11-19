USE employees;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;

SELECT * FROM employees WHERE last_name LIKE 'E%E' ORDER BY emp_no DESC;

SELECT CONCAT(first_name, ' ', last_name)
AS 'employee full name'
FROM employees
WHERE last_name LIKE 'E%E'
LIMIT 10;

SELECT * FROM employees
WHERE MONTH(birth_date) = 12
  AND DAY(birth_date) = 25;

SELECT * FROM employees
WHERE MONTH(birth_date) = 12
  AND DAY(birth_date) = 25
  AND YEAR(hire_date) BETWEEN 1990 AND 2000;

SELECT * FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25
  AND year(hire_date) BETWEEN 1990 AND 2000
ORDER BY birth_date, hire_date DESC
LIMIT 10;

SELECT CONCAT('Days at the company: ' , DATEDIFF(NOW(), hire_date))
    AS 'DAYS AT COMPANY'
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25
  AND year(hire_date) BETWEEN 1990 AND 2000
LIMIT 10;

