SELECT films.title, directors.full_name as director, writers.full_name as writer
FROM films
INNER JOIN directors ON directors.id = films.director_id
INNER JOIN writers ON films.writer_id = writers.id
WHERE writers.full_name = directors.full_name;