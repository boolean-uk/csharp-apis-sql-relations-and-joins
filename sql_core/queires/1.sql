SELECT films.title, directors.full_name
FROM films
LEFT JOIN directors ON directors.id = films.director_id;