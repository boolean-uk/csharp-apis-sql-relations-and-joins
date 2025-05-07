SELECT
    films.title Title,
    person_director.name Director,
    person_star.name Star
FROM
    films
    JOIN films_directors ON films.film_id = films_directors.fk_film_id
    JOIN directors ON films_directors.fk_person_id = directors.fk_person_id
    JOIN person person_director ON person_director.person_id = directors.fk_person_id
    
    JOIN films_stars ON films.film_id = films_stars.fk_film_id
    JOIN stars ON films_stars.fk_person_id = stars.fk_person_id
    JOIN person person_star ON person_star.person_id = stars.fk_person_id
    