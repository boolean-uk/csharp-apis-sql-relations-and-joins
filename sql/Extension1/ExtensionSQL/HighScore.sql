SELECT f.title, p.name, f.score FROM film as f
	INNER JOIN people as p
		ON f.director_id = p.people_id
		AND f.score >= 8;