USE employees;

SELECT DISTINCT title FROM titles;

SELECT last_name FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY last_name
ORDER BY last_name;


SELECT DISTINCT first_name, last_name FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY first_name, last_name
ORDER BY last_name;


SELECT last_name FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT COUNT(*) AS 'Number of names', last_name FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY COUNT(*) DESC;

SELECT COUNT(*) AS 'Num employees', gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;


