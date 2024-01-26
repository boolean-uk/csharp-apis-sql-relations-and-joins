/*
SELECT 	d.name AS director_name,
		f.title AS film_title,
		f.releasedate AS film_year
FROM 	directors d
JOIN 	films f ON d.id = f.director_fk
WHERE 	f.releasedate > 1986;
*/