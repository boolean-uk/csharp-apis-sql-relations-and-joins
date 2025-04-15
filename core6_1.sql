/*
SELECT 	d.name AS director_name,
		f.title AS film_title,
		f.score AS film_score
FROM 	directors d
JOIN 	films f ON d.id = f.director_fk
--WHERE 	f.score >=8
ORDER BY f.score DESC;
*/