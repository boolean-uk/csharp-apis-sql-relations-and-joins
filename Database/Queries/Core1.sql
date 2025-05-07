-- Show the title and director name for all films
SELECT films.title AS "Name of the film",
directors.name AS "Director name" 
FROM films 
JOIN directors 
ON films.director_id = directors.id;