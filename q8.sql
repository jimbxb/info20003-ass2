SELECT city, country_name, region_name 
FROM locations 
	NATURAL JOIN regions 
	NATURAL JOIN countries 
WHERE location_id NOT IN (SELECT location_id FROM departments NATURAL JOIN staff)
	AND NOT country_name <=> 'United States of America' 
	AND NOT region_name <=> 'Europe';
