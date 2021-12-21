-- Select the employee number, last name, first name, sex, and salary of all employees, ordered by employee number
SELECT 
	e.emp_no AS "employee_number",
	e.last_name AS "last_name",
	e.first_name AS "first_name",
	e.sex As "sex",
	s.salary AS "salary"
FROM employees e
INNER JOIN salaries s ON s.emp_no = e.emp_no
ORDER BY e.emp_no;

-- Select the first name, last name, and hiring date for all employees hired in 1986 
SELECT
	e.first_name AS "First Name",
	e.last_name AS "Last Name",
	e.hire_date AS "Hiring Date"
FROM employees e
WHERE EXTRACT(year FROM e.hire_date) = 1986;


-- Select the department number, department name, employee number, last name, and first name of all managers of each department
SELECT 
	dept_manager.dept_no AS "department_number",
	departments.dept_name AS "department_name",
	dept_manager.emp_no AS "employee_number",
	employees.last_name AS "last_name",
	employees.first_name AS "first_name"
FROM dept_manager
INNER JOIN departments ON dept_manager.dept_no = departments.dept_no
INNER JOIN employees ON dept_manager.emp_no = employees.emp_no;

-- Select the employee number, last name, first name, and department of each employee, ordered by employee number
SELECT 
	e.emp_no AS "employee_number",
	e.last_name AS "last_name",
	e.first_name AS "first_name",
	d.dept_name AS "department"
FROM employees AS e
INNER JOIN dept_emp ON e.emp_no = dept_emp.emp_no
INNER JOIN departments d ON dept_emp.dept_no = d.dept_no
ORDER BY e.emp_no;

-- Select first name, last name, birth date, and sex of all employees whose first name is "Hercules" and last name begins with a "B"
SELECT 
     first_name, 
	 last_name, 
	 birth_date, 
	 sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- Select employee number, last name, first name, and department name of all employees in the Sales department, ordered by employee number
SELECT 
	e.emp_no AS "employee_number",
	e.last_name AS "last_name",
	e.first_name AS "first_name",
	d.dept_name AS "department"
FROM employees AS e
INNER JOIN dept_emp ON e.emp_no = dept_emp.emp_no
INNER JOIN departments d ON dept_emp.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'
ORDER BY e.emp_no;


-- Select employee number, last name, first name, and department name of all employees in the 'Sales' OR the 'Development' department, ordered by employee number
SELECT
	e.emp_no AS "employee_number",
	e.last_name AS "last_name",
	e.first_name AS "first_name",
	d.dept_name AS "department"
FROM employees AS e
INNER JOIN dept_emp ON e.emp_no = dept_emp.emp_no
INNER JOIN departments d ON dept_emp.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales','Development')
ORDER BY e.emp_no;

-- Count the number of employees, grouped by last name
SELECT 
	e.last_name AS "last_name",
	COUNT(e.last_name) AS "number_of_employees"
FROM employees AS e
GROUP BY e.last_name
ORDER BY COUNT(e.last_name) DESC;
