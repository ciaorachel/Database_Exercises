
-- SELECT * FROM employees WHERE emp_no = '101010'
SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no AND hire_date IN(
	SELECT hire_date FROM employees WHERE emp_no = '101010');
	

-- SELECT * FROM employees WHERE first_name = 'Aamod';
SELECT title FROM titles 
WHERE emp_no IN(
	SELECT emp_no FROM employees WHERE first_name = 'Aamod' AND to_date >= now());


-- SELECT * FROM dept_manager;
SELECT emp_no, first_name, last_name, gender FROM employees
WHERE emp_no IN(
	SELECT emp_no FROM dept_manager WHERE gender = 'F' AND to_date >= now());
	
	
SELECT * FROM departments WHERE dept_no IN(
	SELECT dept_no FROM dept_manager WHERE to_date >= now() AND emp_no IN(
		SELECT emp_no FROM employees WHERE gender = 'F'));

