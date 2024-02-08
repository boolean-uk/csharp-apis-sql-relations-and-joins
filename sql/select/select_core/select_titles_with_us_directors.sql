SELECT
    films.title Title,
    directors.name Director,
    directors.country Country
FROM
    films
    JOIN films_directors ON films.film_id = films_directors.fk_film_id
    JOIN directors ON films_directors.fk_director_id = directors.director_id
WHERE
	country LIKE 'USA'