-- Data Analysis

-- 1. List employee number, last name, first name, sex, and salary
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM Employees AS e
INNER JOIN Salaries AS s ON
e.emp_no = s.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM Employees
WHERE hire_date >= '1986-01-01' 
AND hire_date < '1987-01-01';

--3. List the manager of each department w/ department number and name, 
--the manager's employee number, and last and first name
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM Departments AS d
LEFT JOIN Dept_Emp AS dm ON
d.dept_no = dm.dept_no
LEFT JOIN Employees AS e ON
dm.emp_no = e.emp_no;

--4. List the department of each employee with employee number, last and first name, and department name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Employees AS e
INNER JOIN Dept_Manager AS dm ON
e.emp_no = dm.emp_no
INNER JOIN Departments AS d ON
dm.dept_no = d.dept_no;

--5. List first and last name, and sex for employees whose first name is "Hercules" 
--and last names begin with "B."
SELECT first_name, last_name, sex
FROM Employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--6. List all employees in the Sales department
--including their employee number, last name, first name, and department name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Employees AS e
INNER JOIN Dept_Manager AS dm ON
e.emp_no = dm.emp_no
INNER JOIN Departments AS d ON
dm.dept_no = d.dept_no
WHERE dept_name = 'Sales';

--7. List all employees in the Sales and Development departments
-- including their employee number, last name, first name, and department name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Employees AS e
INNER JOIN Dept_Manager AS dm ON
e.emp_no = dm.emp_no
INNER JOIN Departments AS d ON
dm.dept_no = d.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

--8. In descending order, list the frequency count of employee last names
SELECT last_name, COUNT(last_name) AS "frequency count"
FROM Employees
GROUP BY last_name
ORDER BY "frequency count" DESC;

--Bonus Q3 Query
SELECT * FROM Salaries;
SELECT * FROM Titles;
SELECT * FROM Employees;

SELECT s.salary, t.title
FROM Salaries AS s
INNER JOIN Employees AS e ON
s.emp_no = e.emp_no
INNER JOIN titles AS t ON
t.title_id = e.emp_title_id
;

--Bonus Epilogue Find ID=499942
SELECT * FROM Employees
WHERE emp_no = 499942;
