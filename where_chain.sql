USE employees;

SELECT concat(first_name,' ', last_name) AS full_name 
FROM employees 
WHERE first_name = 'Irena' 
	OR first_name = 'Vidya' 
	OR first_name ='Maya'
	AND gender = 'M';
/*Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN. Output: 709 rows*/


SELECT concat(first_name,' ', last_name) AS full_name, gender
FROM employees 
WHERE gender = 'M'
AND (
	first_name = 'Irena' 
	OR first_name = 'Vidya' 
	OR first_name ='Maya'
);
/*Add a condition to find everybody with those names who is also male. Output: 441 rows.*/


SELECT first_name, last_name 
FROM employees 
WHERE last_name LIKE 'E%' 
	OR last_name LIKE '%e';
/*Find all employees whose last name starts or ends with 'E'. Output: 30,723 rows.*/


SELECT first_name, last_name 
FROM employees 
WHERE last_name LIKE 'E%' 
	AND last_name LIKE '%e';
/*Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E'. Output: 899 rows.*/


SELECT first_name, last_name, hire_date 
FROM employees 
WHERE hire_date BETWEEN '1990-01-01' 
	AND '1999-12-31'
	AND birth_date LIKE '%-12-25';
/*Find all employees hired in the 90s and born on Christmas. Output: 362 rows.*/



SELECT first_name, last_name 
FROM employees 
WHERE last_name LIKE '%q%'
	AND last_name NOT LIKE '%qu%';
/*Find all employees with a 'q' in their last name but not 'qu'. Output: 547 rows.*/