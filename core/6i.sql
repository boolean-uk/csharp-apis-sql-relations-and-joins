SELECT title, name
FROM film
         JOIN director on film.director_id = director.id;