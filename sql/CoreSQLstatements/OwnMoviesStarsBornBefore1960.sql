SELECT f.title, s.name, s.dob FROM film as f
	INNER JOIN star as s
		ON f.director_id = s.star_id
		AND s.dob::date < DATE '1960-01-01';