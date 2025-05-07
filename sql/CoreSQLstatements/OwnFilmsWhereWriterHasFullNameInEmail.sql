SELECT f.title, w.name, w.email FROM film as f
	INNER JOIN writer as w
		ON f.director_id = w.writer_id
		AND w.email ILIKE '%' || split_part(w.name, ' ', 1) || '%';