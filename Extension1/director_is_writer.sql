SELECT title FROM films
JOIN directors ON films.director_fk_id = directors.id
JOIN writers ON films.writer_fk_id = writers.id
JOIN people d ON directors.people_fk_id = d.id
JOIN people w ON writers.people_fk_id = w.id
WHERE d.name = w.name;