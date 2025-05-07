SELECT f.title, p.name, pp.name FROM film as f
	INNER JOIN people as p
		ON f.director_id = p.people_id
	INNER JOIN people as pp
		ON f.star_id = pp.people_id;
