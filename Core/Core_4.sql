SELECT 
	title, 
	director.name AS director,
	writer.name AS writer
FROM 
	film
INNER JOIN
	director ON film.director_id = director.id
INNER JOIN
	writer ON film.writer_id = director.id
WHERE
	director.name LIKE writer.name;