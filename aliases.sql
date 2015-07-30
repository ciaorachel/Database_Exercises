USE employees;

SELECT concat(emp_no,' - ',last_name,', ',first_name) AS full_name, birth_date AS DOB
FROM employees
ORDER BY emp_no
LIMIT 10;


SELECT concat(e.first_name, ' ', e.last_name) AS full_name, e.birth_date AS DOB FROM employees AS e
LIMIT 5;