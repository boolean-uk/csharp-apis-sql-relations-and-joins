-- List all the films by title, director name, director country, star, star dob, writer name, writer email, year of film release, film genre and film score
SELECT films.title AS "Name of the film",
directors.name AS "Director",
directors.country AS "Director country",
stars.name AS "Star",
stars.star_dob AS "Star DOB",
writers.name AS "Writer",
writers.email AS "Writer email",
films.year AS "Year",
films.genre AS "Genre",
films.score AS "Score"
FROM films
JOIN directors
ON films.director_id = directors.id
JOIN stars
ON films.star_id = stars.id
JOIN writers
ON films.writer_id = writers.id;
