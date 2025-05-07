SELECT x.title, director, star
FROM 
	(SELECT f.id, title, p.name AS director
     FROM films f
     INNER JOIN 
     worked_on w ON (f.id = w.film)
     INNER JOIN
     persons p ON (p.id = w.person)
     WHERE role = 'Director') x
INNER JOIN
	(SELECT f.id, title, p.name AS star
     FROM films f
     INNER JOIN 
     worked_on w ON (f.id = w.film)
     INNER JOIN
     persons p ON (p.id = w.person)
     WHERE role = 'Star') y
ON (x.id = y.id)