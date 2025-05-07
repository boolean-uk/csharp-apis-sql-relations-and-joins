SELECT f.title, p.name, p.dob FROM film as f
	INNER JOIN people as p
		ON f.star_id = p.people_id
		AND p.dob::date < DATE '1960-01-01';