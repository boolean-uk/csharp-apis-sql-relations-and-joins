SELECT f.title, f.year_released, f.score, p.name FROM film as f
	INNER JOIN people as p
		ON f.director_id = p.people_id
		AND f.score >= 8
		AND f.year_released < 1980;