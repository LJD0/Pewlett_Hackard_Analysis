-- Active: 1666222897622@@127.0.0.1@5432@PH_EmployeeDB

-- Deliverable 1

SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
-- INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
    ON (e.emp_no = t.emp_no)
    WHERE (e.birth_date BETWEEN '1952-01-01' and '1955-12-31');

SELECT DISTINCT ON (emp_no) rt.emp_no,
    rt.first_name,
    rt.last_name,
    rt.title

--INTO unique_titles
FROM retirement_titles as rt
WHERE rt.to_date = '9999-01-01'
ORDER BY rt.emp_no, rt.to_date DESC;

SELECT COUNT(emp_no), title
-- INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT((emp_no)) DESC;

-- Deliverable 2

