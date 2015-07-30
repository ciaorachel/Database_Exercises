USE employees;

SELECT COUNT(first_name), gender
FROM employees
WHERE first_name = 'Irena' 
	OR first_name = 'Vidya' 
	OR first_name ='Maya'
GROUP BY gender;




SELECT emp_no, concat(first_name, ' ', last_name) AS full_name
FROM employees 
WHERE last_name LIKE 'E%' 
	OR last_name LIKE '%e'
ORDER BY emp_no DESC;




SELECT emp_no, concat(first_name, ' ', last_name) AS full_name 
FROM employees 
WHERE last_name LIKE 'E%' 
	AND last_name LIKE '%e'
ORDER BY emp_no DESC ;




SELECT first_name, last_name, birth_date, hire_date, DATEDIFF(now(), hire_date) AS how_many_days_working_since_hire
FROM employees 
WHERE hire_date BETWEEN '1990-01-01' 
	AND '1999-12-31'
	AND birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC ;




SELECT COUNT(*) AS count, concat(first_name, ' ', last_name) AS full_name
FROM employees 
WHERE last_name LIKE '%q%'
	AND last_name NOT LIKE '%qu%'
GROUP BY full_name
ORDER BY count DESC, last_name, first_name;
