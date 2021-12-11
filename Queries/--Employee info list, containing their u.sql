--Employee info list, containing their unique employee number, their last name, first name, gender, and salary
SELECT e.emp_no,
	e.last_name,
	e.first_name,
	e.gender,
	s.salary,
	de.to_date
INTO emp_info
FROM employees as e
INNER JOIN salaries as s
ON e.emp_no=s.emp_no
INNER JOIN dept_emp as de
ON e.emp_no=de.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31') 
	AND (e.hire_date BETWEEN '1985-01-01' and '1988-12-31')
	AND (de.to_date='9999-01-01');
	

SELECT  dm.dept_no,
        d.dept_name,
        dm.emp_no,
        ce.last_name,
        ce.first_name,
        dm.from_date,
        dm.to_date,
		s.salary
INTO manager_info
FROM dept_manager AS dm
    INNER JOIN departments AS d
        ON (dm.dept_no = d.dept_no)
    INNER JOIN current_emp AS ce
        ON (dm.emp_no = ce.emp_no)
	INNER JOIN salaries as s
		ON (dm.emp_no=s.emp_no);
		
--Department Retireees
SELECT ce.emp_no,
ce.first_name,
ce.last_name,
d.dept_name
INTO dept_info
FROM current_emp as ce
INNER JOIN dept_emp AS de
ON (ce.emp_no = de.emp_no)
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no);

--Department Retireees
SELECT ce.emp_no,
ce.first_name,
ce.last_name,
d.dept_name
INTO dept_info
FROM current_emp as ce
INNER JOIN dept_emp AS de
ON (ce.emp_no = de.emp_no)
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no);

--Sales and Development Retireees
SELECT ce.emp_no,
ce.first_name,
ce.last_name,
d.dept_name
--INTO Sales_Dev_Mentors
FROM current_emp as ce
INNER JOIN dept_emp AS de
ON (ce.emp_no = de.emp_no)
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no)
WHERE d.dept_name IN ('Sales','Development');
