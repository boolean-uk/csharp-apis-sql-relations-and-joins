--Show directors and film titles for films with a score of 8 or higher
SELECT film.title, director.name
FROM film
JOIN director ON film.director_id = director.id
WHERE film.score > 7;
