SELECT movies.title, directors.name FROM movies
JOIN directors ON movies.director_id = directors.id