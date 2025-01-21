SELECT title
FROM film
         JOIN director d on film.director_id = d.id
         JOIN writer w on film.writer_id = w.id
WHERE d.name = w.name;