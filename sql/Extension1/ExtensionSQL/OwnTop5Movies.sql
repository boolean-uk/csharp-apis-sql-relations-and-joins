SELECT f.title, p.country, f.score, p.name FROM film as f
	INNER JOIN people as p
		ON f.director_id = p.people_id
		ORDER BY f.score DESC
		LIMIT 5;