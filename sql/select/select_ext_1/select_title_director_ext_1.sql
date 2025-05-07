SELECT
    films.title Title,
    person.name Director
FROM
    films
    JOIN films_directors ON films.film_id = films_directors.fk_film_id
    JOIN directors ON films_directors.fk_person_id = directors.fk_person_id
    JOIN person ON directors.fk_person_id = person.person_id