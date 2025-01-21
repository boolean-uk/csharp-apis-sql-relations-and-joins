SELECT d.name as Director, title
FROM film
         JOIN people d on film.director_id = d.id
WHERE score >= 8;