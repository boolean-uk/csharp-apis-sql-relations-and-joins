SELECT
    films.title Title,
    person_director.name Director,
    person_writer.name Writer
FROM
    films
    JOIN films_directors ON films.film_id = films_directors.fk_film_id
    JOIN directors ON films_directors.fk_person_id = directors.fk_person_id
    JOIN person person_director ON directors.fk_person_id = person_director.person_id
    JOIN films_writers ON films_writers.fk_film_id = films.film_id
    JOIN writers ON films_writers.fk_person_id = writers.fk_person_id
    JOIN person person_writer ON writers.fk_person_id = person_writer.person_id
WHERE
    person_director.person_id = person_writer.person_id