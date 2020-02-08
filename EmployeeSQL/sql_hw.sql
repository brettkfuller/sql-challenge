-- CREATE VIEW emp_info AS
-- SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
-- 	FROM employees AS e
-- 	JOIN salaries AS s
-- 	ON e.emp_no = s.emp_


-- CREATE VIEW hire_date AS
-- SELECT e.last_name, e.first_name, e.hire_date 
-- FROM employees AS e
-- WHERE "hire_date" >= '1986-01-01' AND "hire_date" < '1987-01-01'

-- CREATE VIEW manager AS
-- SELECT ta.title, ta.emp_no, e.first_name, e.last_name
-- FROM titles AS ta
-- JOIN employees AS e
-- ON ta.emp_no = e.emp_no
-- WHERE "title" = 'Manager'

SELECT ma.title, ma.emp_no, ma.first_name, ma.last_name, d.dept_no, d.from_date, d.to_date
FROM manager AS ma
JOIN dept_manager AS d
ON ma.emp_no = d.emp_no
		