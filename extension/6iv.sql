SELECT title
FROM film
         JOIN people d on film.director_id = d.id
         JOIN people w on film.writer_id = w.id
WHERE d.name = w.name;