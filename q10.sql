SELECT 
    first_name, last_name, salary
FROM
    staff
        NATURAL JOIN
    (SELECT 
        staff_id, AVG(max_salary) ave_salary
		FROM
			job_history
		NATURAL JOIN jobs
    GROUP BY staff_id
    HAVING COUNT(*) > 1) ave_salaries
WHERE
    salary < ave_salary; 
