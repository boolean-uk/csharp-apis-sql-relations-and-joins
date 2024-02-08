-- Show the title, director and star name for all films
SELECT films.title AS "Name of the film",
directors.name AS "Director name",
stars.name AS "Star name" 
FROM films 
JOIN directors 
ON films.director_id = directors.id 
JOIN stars 
ON films.star_id = stars.id;
