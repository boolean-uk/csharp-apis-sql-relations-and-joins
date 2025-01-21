SELECT title, director.name as Director, star.name as Star
FROM film
         JOIN director on film.director_id = director.id
         JOIN star on film.star_id = star.id;