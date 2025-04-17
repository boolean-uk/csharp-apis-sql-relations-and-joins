/* Show directors and film titles for films with a score of 8 or higher */
SELECT
	film.title,
	director.name AS director,
	rating
FROM
	film
INNER JOIN
	director ON film.director_id = director.id
WHERE
	film.rating >= 8;