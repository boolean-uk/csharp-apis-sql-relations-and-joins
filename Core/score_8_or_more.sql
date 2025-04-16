SELECT title, name AS director_name FROM films
JOIN directors ON films.director_fk_id = directors.id
WHERE score >= 8;