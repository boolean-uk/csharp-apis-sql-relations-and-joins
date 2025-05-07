SELECT films.title, directors.name 
FROM films
JOIN directors ON films.director_id = directors.id;