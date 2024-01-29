SELECT films.title, directors.full_name AS director, stars.full_name AS star
FROM films
INNER JOIN directors ON directors.id = films.director_id
INNER JOIN stars ON stars.id = films.star_id;