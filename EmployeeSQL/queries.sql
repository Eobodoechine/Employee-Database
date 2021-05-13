SELECT everything.emp_no, everything.last_name, everything.first_name, everything.sex,Salary.salary
FROM everything
JOIN Salary
  ON everything.emp_no = Salary.emp_no;

-- 2
SELECT first_name, last_name, hire_date
FROM everything
WHERE hire_date >= '01/01/1986' AND
      hire_date <= '12/31/1986';


-- 3
SELECT man.dept_no, d.dept_name, man.emp_no, e.last_name, e.first_name
FROM manager AS man
JOIN Department AS d
  ON man.dept_no = d.dept_no
JOIN everything AS e
  ON man.emp_no = e.emp_no;
  
-- 4
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM everything AS e
JOIN Employees 
  ON e.emp_no = employees.emp_no 
JOIN Department AS d
  ON employees.dept_no = d.dept_no;
  
  
-- 5 
SELECT e.first_name, e.last_name, e.sex
FROM everything AS e
Where 
	     first_name = 'Hercules' AND
         last_name LIKE 'B%';

-- 6
SELECT e.last_name, e.first_name, d.dept_name
FROM everything AS e
JOIN Employees 
  ON e.emp_no = employees.emp_no 
JOIN Department AS d  ON employees.dept_no = d.dept_no
WHERE e.emp_no IN
(
	SELECT emp_no
	FROM Employees
	where dept_no IN
	(
		SELECT dept_no
		FROM Department AS d
		Where dept_name IN ('Sales')));


-- 7
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM everything AS e
JOIN Employees 
  ON e.emp_no = employees.emp_no 
JOIN Department AS d  ON employees.dept_no = d.dept_no
WHERE e.emp_no IN
(
	SELECT emp_no
	FROM Employees
	where dept_no IN
	(
		SELECT dept_no
		FROM Department AS d
		Where dept_name IN ('Sales','Development')));
		
-- 8
SELECT last_name, COUNT(last_name) AS "lname"
FROM everything
GROUP BY last_name
ORDER BY "lname" DESC;

