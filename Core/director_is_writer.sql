SELECT films.* FROM films
JOIN directors d ON films.director_fk_id = d.id
JOIN writers w ON films.writer_fk_id = w.id
WHERE w.name = d.name;