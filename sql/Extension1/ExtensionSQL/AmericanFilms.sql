SELECT f.title, p.name, p.country FROM film as f
	INNER JOIN people as p
		ON f.director_id = p.people_id
		AND p.country = 'USA';