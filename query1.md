--Show the title and director name for all films
SELECT title, director.name
FROM film
INNER JOIN director ON film.director_id=director.id;