SELECT region_name, COUNT(location_id) location_count
FROM regions
	NATURAL LEFT JOIN countries 
	NATURAL LEFT JOIN locations
GROUP BY region_id
ORDER BY location_count DESC
LIMIT 1;
