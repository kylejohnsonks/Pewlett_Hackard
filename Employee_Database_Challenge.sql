--Select All Titles into new table
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO all_titles
FROM employees as e
JOIN titles as t
ON (e.emp_no=t.emp_no)
WHERE (e.birth_date Between '1952-01-01' and '1955-12-31')
ORDER BY e.emp_no, t.to_date DESC;



-- Use Dictinct with Orderby to remove duplicate rows, create unique titles table
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO unique_titles
FROM employees as e
JOIN titles as t
ON (e.emp_no=t.emp_no)
WHERE (e.birth_date Between '1952-01-01' and '1955-12-31')
ORDER BY e.emp_no, t.to_date DESC;

--reate a mentorship-eligibility table 
--that holds the current employees who were born between January 1, 1965 and December 31, 1965.
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligible
FROM employees e
JOIN dept_emp de
ON (e.emp_no=de.emp_no)
JOIN titles t
ON (e.emp_no=t.emp_no)
WHERE (e.birth_date Between '1965-01-01' and '1965-12-31') and (de.to_date = '9999-01-01')
ORDER BY e.emp_no, t.to_date DESC;