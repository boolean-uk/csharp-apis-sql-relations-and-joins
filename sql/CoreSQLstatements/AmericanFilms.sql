SELECT f.title, dir.name, dir.country FROM film as f
	INNER JOIN director as dir
		ON f.director_id = dir.director_id
		AND dir.country = 'USA';