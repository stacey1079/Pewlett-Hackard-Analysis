-- Deliverable 1
-- retirees table
SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO retirees
FROM titles AS t
JOIN employees AS e
ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

--unique_titles table
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, t.title
INTO unique_titles
FROM titles AS t
JOIN employees AS e
ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (t.to_date = '9999-01-01')
ORDER BY e.emp_no, t.to_date DESC;

-- retiring_titles table
SELECT COUNT(title) AS "count", title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY "count" DESC;

-- Deliverable 2
-- mentorship table
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, t.title 
INTO mentorship
FROM dept_emp AS de
JOIN employees AS e
ON (e.emp_no = de.emp_no)
JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (t.to_date = '9999-01-01')
ORDER BY e.emp_no;