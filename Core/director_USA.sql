SELECT title FROM films
JOIN directors ON films.director_fk_id = directors.id
WHERE directors.country = 'USA';