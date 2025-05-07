--Find all the films by the director 'Stanley Kubrick' and the writer 'Arthur C Clarke'

SELECT films.title AS "Name of the film",
directors.name AS "Director name",
writers.name AS "Writer name"
FROM films
JOIN directors
ON films.director_id = directors.id
JOIN writers
ON films.writer_id = writers.id
WHERE directors.name = 'Stanley Kubrick' AND writers.name = 'Arthur C Clarke';


