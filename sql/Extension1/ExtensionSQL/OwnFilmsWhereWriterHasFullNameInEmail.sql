SELECT f.title, p.name, p.email FROM film as f
	INNER JOIN people as p
		ON f.writer_id = p.people_id
		AND p.email ILIKE '%' || split_part(p.name, ' ', 1) || '%';