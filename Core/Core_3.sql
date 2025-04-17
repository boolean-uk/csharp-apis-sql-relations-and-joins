/* Show the title of films where the director is from the USA */
SELECT 
	film.title, 
	director.name AS director, 
	director_countries.name AS country
FROM 
	film
INNER JOIN 
	director ON film.director_id = director.id
INNER JOIN 
	director_countries ON director.country_id = director_countries.id
WHERE
	director_countries.name LIKE 'USA';