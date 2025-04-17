/* Show the title, director and star name for all films */ 
SELECT 
	title, 
	director.name AS director,
	star.name AS star 
FROM 
	film 
INNER JOIN 
	director ON film.director_id = director.id
INNER JOIN 
	star ON film.star_id = star.id;