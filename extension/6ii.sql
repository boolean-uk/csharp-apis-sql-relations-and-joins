SELECT title, d.name as Director, s.name as Star
FROM film
         JOIN people d on film.director_id = d.id
         JOIN film_cast c on film.id = c.film_id
         JOIN people s on c.person_id = s.id;