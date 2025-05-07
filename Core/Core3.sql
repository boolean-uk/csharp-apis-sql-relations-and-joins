SELECT films.title
FROM films
JOIN directors ON films.director_id = directors.id
WHERE directors.country = 'USA';