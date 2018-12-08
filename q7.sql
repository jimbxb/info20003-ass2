SELECT first_name, last_name, amount
FROM (SELECT staff.*, salary*(1+commission_pct)-max_salary amount
		FROM staff NATURAL JOIN jobs) staff
WHERE amount > 0
ORDER BY amount DESC;
