SELECT title, directors.name AS director_name, stars.name AS star_name 
FROM films JOIN directors ON films.director_fk_id = directors.id 
JOIN stars ON films.star_fk_id = stars.id;