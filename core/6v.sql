SELECT d.name as Director, title
FROM film
         JOIN director d on film.director_id = d.id
WHERE score >= 8;