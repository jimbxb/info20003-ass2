SELECT job_title, end_date, first_name, last_name
FROM job_history
	NATURAL JOIN jobs
	NATURAL JOIN departments
	LEFT JOIN staff managers
		ON departments.manager_id = managers.staff_id
WHERE YEAR(end_date) = 2006
	AND NOT (first_name, last_name) <=> ('Steven', 'King');
