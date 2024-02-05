SELECT
    films.title Title,
    directors.name Director,
    stars.name Star
FROM
    films
    JOIN films_directors ON films.film_id = films_directors.fk_film_id
    JOIN directors ON films_directors.fk_director_id = directors.director_id
    JOIN films_stars ON films.film_id = films_stars.fk_film_id
    JOIN stars ON films_stars.fk_star_id = stars.star_id;