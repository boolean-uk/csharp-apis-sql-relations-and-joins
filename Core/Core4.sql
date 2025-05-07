SELECT films.title
FROM films
JOIN directors ON films.director_id = directors.id
JOIN writers ON films.writer_id = writers.id
WHERE directors.name = writers.name;