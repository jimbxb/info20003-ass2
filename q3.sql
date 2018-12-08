SELECT first_name, last_name, DATEDIFF(end_date, start_date) days, job_title 
FROM job_history
	NATURAL JOIN jobs
	JOIN staff
		ON job_history.staff_id = staff.staff_id
HAVING days = (SELECT MIN(DATEDIFF(end_date, start_date)) FROM job_history)
