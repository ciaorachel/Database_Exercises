USE employees;

SELECT COUNT(first_name), gender
FROM employees
WHERE first_name = 'Irena' 
	OR first_name = 'Vidya' 
	OR first_name ='Maya'
GROUP BY gender;


SELECT emp_no, concat(first_name,' ', last_name) AS full_name, gender
FROM employees 
WHERE gender = 'M'
AND (
	first_name = 'Irena' 
	OR first_name = 'Vidya' 
	OR first_name ='Maya'
)
ORDER BY emp_no DESC;
/*Add a condition to find everybody with those names who is also male. Sort the results by their employee number descending. Results do not change. Output: 441 rows.*/


SELECT emp_no, first_name, last_name 
FROM employees 
WHERE last_name LIKE 'E%' 
	OR last_name LIKE '%e'
ORDER BY emp_no DESC;
/*Find all employees whose last name starts or ends with 'E'. Sort the results descending by their employee number - this reverses order. Output: 30,723 rows.*/


SELECT emp_no, first_name, last_name 
FROM employees 
WHERE last_name LIKE 'E%' 
	AND last_name LIKE '%e'
ORDER BY emp_no DESC;
/*Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E'. Sort the results descending by their employee number - this reverses order. Output: 899 rows.*/


SELECT first_name, last_name, hire_date, birth_date 
FROM employees 
WHERE hire_date BETWEEN '1990-01-01' 
	AND '1999-12-31'
	AND birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC;
/*Find all employees hired in the 90s and born on Christmas. Change the query such that the first result is the oldest employee who was hired last. It should be Khun Bernini. Output: 362 rows.*/


SELECT first_name, last_name 
FROM employees 
WHERE last_name LIKE '%q%'
	AND last_name NOT LIKE '%qu%';
/*Find all employees with a 'q' in their last name but not 'qu'. Output: 547 rows.*/