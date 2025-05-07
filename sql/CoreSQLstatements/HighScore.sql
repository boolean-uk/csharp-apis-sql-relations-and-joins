SELECT f.title, dir.name, f.score FROM film as f
	INNER JOIN director as dir
		ON f.director_id = dir.director_id
		AND f.score >= 8;