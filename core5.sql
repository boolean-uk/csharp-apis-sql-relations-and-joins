SELECT title, p.name AS director
FROM films f 
	INNER JOIN worked_on w ON (f.id = w.film)
	INNER JOIN persons p ON (w.person = p.id)
WHERE rating >= 8 AND role = 'Director';