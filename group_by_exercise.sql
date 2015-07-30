USE employees;

SELECT DISTINCT title
FROM titles
ORDER BY title;

SELECT concat(first_name, ' ', last_name) AS full_name 
FROM employees 
WHERE last_name LIKE 'E%e' 
GROUP BY first_name, last_name;

SELECT DISTINCT last_name 
FROM employees 
WHERE last_name LIKE '%q%'
	AND last_name NOT LIKE '%qu%';