SELECT first_name, last_name, department_name, job_title 
FROM staff 
	NATURAL LEFT JOIN departments
	NATURAL JOIN jobs;
