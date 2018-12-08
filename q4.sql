SELECT sv.first_name, sv.last_name, job_title, COUNT(*) number_supervised
FROM staff sv
	NATURAL JOIN jobs
	JOIN staff
		ON sv.staff_id = staff.supervisor_id
GROUP BY sv.staff_id
HAVING number_supervised >= 5;
