SELECT department_name
FROM departments 
WHERE department_id NOT IN (SELECT department_id FROM staff 
							WHERE department_id IS NOT NULL)
	AND manager_id IS NULL;
