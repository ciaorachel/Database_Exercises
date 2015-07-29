USE employees;

SELECT first_name, last_name FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');
/*Employees with first names 'Irena', 'Vidya', or 'Maya'. Output: 709 rows*/


SELECT first_name, last_name FROM employees WHERE last_name LIKE 'E%';
/*Employees whose last name starts with 'E'. Output: 7,330 rows.*/


SELECT first_name, last_name, hire_date FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';
/*Employees hired in the 90s. Output: 135,214 rows.*/


SELECT first_name, last_name, birth_date FROM employees WHERE birth_date LIKE '%-12-25';
/*Employees born on Christmas. Output: 842 rows.*/


SELECT first_name, last_name FROM employees WHERE last_name LIKE '%q%';
/*Employees with a 'q' in their last name. Output: 1,873 rows.*/