USE employees;

SELECT DISTINCT title
FROM titles
ORDER BY title;

SELECT concat(first_name, ' ', last_name) AS full_name 
FROM employees 
WHERE last_name LIKE 'E%' 
	AND last_name LIKE '%e'
GROUP BY first_name, last_name;