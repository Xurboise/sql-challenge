SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries 
ON employees.emp_no = salaries.emp_no
ORDER BY employees.emp_no

SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE date_part('year', hire_date) = '1986'

SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, 
	   employees.last_name, employees.first_name
FROM dept_manager
INNER JOIN departments ON dept_manager.dept_no = departments.dept_no
INNER JOIN employees ON dept_manager.emp_no = employees.emp_no

CREATE VIEW employees_in_depts AS
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
ORDER BY dept_emp.emp_no

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' 
AND last_name LIKE 'B%'

SELECT *
FROM employees_in_depts
WHERE dept_name = 'Sales'

SELECT *
FROM employees_in_depts
WHERE dept_name = 'Sales'
OR dept_name = 'Development'

SELECT last_name, COUNT(last_name) AS "Frequency Count"
FROM employees
GROUP BY last_name
ORDER BY "Frequency Count" DESC
