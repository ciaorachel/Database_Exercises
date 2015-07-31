SELECT *
FROM employees as e
JOIN dept_emp as de ON de.emp_no = e.emp_no
JOIN departments as d ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;


SELECT concat(e.first_name,' ', e.last_name) AS full_name, t.title
FROM employees AS e
LEFT JOIN titles AS t ON t.emp_no = e.emp_no
WHERE t.to_date >= now()
AND t.title LIKE 'Senior%';


SELECT d.dept_name, concat(e.first_name,' ',e.last_name) AS full_name, e.gender
FROM dept_manager AS dm
LEFT JOIN employees AS e ON e.emp_no = dm.emp_no
LEFT JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE dm.to_date >= now()
AND e.gender = 'F'
ORDER BY d.dept_name;


SELECT d.dept_name, concat(e.first_name,' ',e.last_name) AS full_name, s.salary
FROM dept_manager AS dm
LEFT JOIN employees AS e ON e.emp_no = dm.emp_no
LEFT JOIN departments AS d ON d.dept_no = dm.dept_no
LEFT JOIN salaries AS s ON s.emp_no = e.emp_no
WHERE s.to_date >= now()
AND dm.to_date >= now()
ORDER BY dept_name;


SELECT t.title, AVG(s.salary) AS average_salary
FROM titles AS t
LEFT JOIN salaries AS s ON s.emp_no = t.emp_no
WHERE t.to_date >= now() AND s.to_date >= now()
GROUP BY t.title
ORDER BY average_salary;


SELECT concat(e.first_name,' ', e.last_name) AS employee_name, d.dept_name, concat(mgr.first_name,' ', mgr.last_name) AS manager
FROM employees AS e 
LEFT JOIN dept_emp AS de ON de.emp_no = e.emp_no
LEFT JOIN departments AS d ON d.dept_no = de.dept_no
LEFT JOIN dept_manager AS dm ON dm.dept_no = de.dept_no
LEFT JOIN employees AS mgr ON mgr.emp_no = dm.emp_no 
WHERE dm.to_date >= now() AND de.to_date >= now()
ORDER BY d.dept_name, e.last_name, e.first_name;

