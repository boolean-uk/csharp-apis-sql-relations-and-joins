-- show people for each film

SELECT films.title AS "Name of the film",
directors.name AS "Director name",
actors.name AS "Actor name",
writers.name AS "Writer name"
FROM films
JOIN directors
ON films.director_id = directors.id
JOIN actors
ON films.actor_id = actors.id
JOIN writers
ON films.writer_id = writers.id;
