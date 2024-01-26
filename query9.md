SELECT film.genre, star.name
FROM film
INNER JOIN star ON film.star_id=star.id WHERE film.genre = 'Drama';