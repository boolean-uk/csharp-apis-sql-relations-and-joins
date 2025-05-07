--find the title of the movie and name of stars where the star was younger than 30 years when the movie was released
SELECT title, p.name
FROM films f
	INNER JOIN worked_on w ON (f.id = w.film)
	INNER JOIN persons p ON (w.person = p.id)
	INNER JOIN stars s ON (p.id = s.person)
WHERE role = 'Star' AND f.year - date_part('year', dob) < 30;