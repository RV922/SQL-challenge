-- This query fetches the data for the first task:
SELECT emp.emp_no,
		emp.first_name,
		emp.last_name,
		emp.sex,
		sal.salary
FROM employees AS emp
LEFT JOIN salaries AS sal 
ON emp.emp_no = sal.emp_no
ORDER BY emp.emp_no;

-- This Query fetches the data for the second task: 
SELECT first_name, 
		last_name, 
		hire_date
FROM employees
WHERE hire_date > '1986-01-01';

--This Query fetches the data for the third task:
SELECT dm.dept_no,
 		d.dept_name,
		dm.emp_no,
		emp.last_name,
		emp.first_name
FROM dept_manager AS dm
INNER JOIN departments AS d
ON dm.dept_no = d.dept_no
INNER JOIN employees AS emp
ON dm.emp_no = emp.emp_no;

-- This Query fetches the data for the fourth task:
SELECT dm.dept_no,
		emp.emp_no,		
		emp.last_name,
		emp.first_name,
		d.dept_name
FROM employees AS emp
INNER JOIN dept_manager AS dm
ON emp.emp_no = dm.emp_no
INNER JOIN departments AS d
ON dm.dept_no = d.dept_no;

--This Query fetches the data for the fifth task:
SELECT emp.last_name,
		emp.first_name,
		emp.sex
FROM employees AS emp
WHERE first_name = 'Hercules' 
AND last_name LIKE 'B%'

--This Query fetches the data for the sixth task:
SELECT emp.emp_no,	
		emp.last_name,
		emp.first_name
FROM employees AS emp 
INNER JOIN dept_manager AS dm 
ON emp.emp_no = dm.emp_no
INNER JOIN departments AS d
ON dm.dept_no = d.dept_no
WHERE dept_name = 'Sales'

--This Query fetches the data for the seventh task:
SELECT emp.emp_no,	
		emp.last_name,
		emp.first_name,
		d.dept_name
FROM employees AS emp 
INNER JOIN dept_manager AS dm 
ON emp.emp_no = dm.emp_no
INNER JOIN departments AS d
ON dm.dept_no = d.dept_no
WHERE dept_name = 'Sales' 
OR dept_name = 'Research';

--This Query fetches the data for the eighth task:
SELECT emp.last_name,
		COUNT(emp.last_name)
FROM employees AS emp
GROUP BY emp.last_name
ORDER BY COUNT(emp.last_name) DESC;




