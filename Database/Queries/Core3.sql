-- Show the title of films where the director is from the USA
SELECT films.title AS "Name of the film",
directors.name AS "Director name" 
FROM films 
JOIN directors
ON films.director_id = directors.id 
WHERE directors.country = 'USA';