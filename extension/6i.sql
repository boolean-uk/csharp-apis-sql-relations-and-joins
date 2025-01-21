SELECT title, name
FROM film
         JOIN people p on film.director_id = p.id;