SELECT f.title, p.name FROM film as f
	INNER JOIN people as p
		ON f.director_id = p.people_id;