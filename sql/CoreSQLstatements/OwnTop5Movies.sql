SELECT f.title, dir.country, f.score, dir.name FROM film as f
	INNER JOIN director as dir
		ON f.director_id = dir.director_id
		ORDER BY f.score DESC
		LIMIT 5;