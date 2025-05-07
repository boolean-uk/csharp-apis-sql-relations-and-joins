SELECT films.title, directors.name, stars.name
FROM films
JOIN directors ON films.director_id = directors.id
JOIN stars ON films.star_id = stars.id;