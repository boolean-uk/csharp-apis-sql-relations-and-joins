-- Show directors and film titles for films with a score of 8 or higher
SELECT films.title AS "Name of the film",
directors.name AS "Director name"
FROM films
JOIN directors
ON films.director_id = directors.id
WHERE films.score >= 8;
