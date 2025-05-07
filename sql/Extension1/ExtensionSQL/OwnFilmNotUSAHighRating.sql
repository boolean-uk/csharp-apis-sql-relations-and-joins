SELECT f.title, p.country, f.score, p.name FROM film as f
	INNER JOIN people as p
		ON f.director_id = p.people_id
		AND f.score >= 8
		AND p.country not like 'USA';