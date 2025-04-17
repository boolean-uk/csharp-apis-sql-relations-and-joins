/* Show the title and director name for all films */
SELECT 
	title, 
	director.name as director 
FROM 
	film 
INNER JOIN 
	Director 
ON 
	film.director_id = director.id; 