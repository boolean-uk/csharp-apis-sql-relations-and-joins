SELECT f.title, f.year_released, f.score, dir.name FROM film as f
	INNER JOIN director as dir
		ON f.director_id = dir.director_id
		AND f.score >= 8
		AND f.year_released < 1980;