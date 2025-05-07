SELECT f.title, p.name, pp.name FROM film as f
	LEFT JOIN people as p
		ON f.director_id = p.people_id
	INNER JOIN people as pp
		ON f.writer_id = pp.people_id
		AND p.name = pp.name;