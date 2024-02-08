-- Show only those films where the writer and the director are the same person
SELECT films.title AS "Name of the film",
directors.name AS "Director name",
writers.name AS "Writer name" 
FROM films
JOIN directors
ON films.director_id = directors.id
JOIN writers
ON films.writer_id = writers.id
WHERE directors.name = writers.name;