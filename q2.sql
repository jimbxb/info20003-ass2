SELECT country_name, COUNT(staff_id) staff_count
FROM countries 
	NATURAL LEFT JOIN locations 
	NATURAL LEFT JOIN departments
	NATURAL LEFT JOIN staff
GROUP BY country_id
ORDER BY country_name;
