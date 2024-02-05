SELECT
    films.title Title,
    director.name Director,
    directors.country Country
FROM
    films
    JOIN films_directors ON films.film_id = films_directors.fk_film_id
    JOIN directors ON films_directors.fk_person_id = directors.fk_person_id
    JOIN person director ON directors.fk_person_id = director.person_id
WHERE
	country LIKE 'USA'