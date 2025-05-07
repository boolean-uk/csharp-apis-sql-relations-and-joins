SELECT f.title, dir.name, s.name FROM film as f
	INNER JOIN director as dir
		ON f.director_id = dir.director_id
	INNER JOIN star as s
		ON f.star_id = s.star_id;