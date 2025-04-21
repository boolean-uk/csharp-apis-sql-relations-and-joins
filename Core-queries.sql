/*
Queries for the Core-tables file.
*/

SELECT title, name AS director_name FROM films
LEFT JOIN director ON director.director_id = films.director_name;

SELECT title, director.name AS director_name, star.name AS star_name
FROM films
LEFT JOIN director ON director.director_id = films.director_name
LEFT JOIN star ON star.star_id = films.star_name;

SELECT title, name as director_name FROM films
RIGHT JOIN director ON director.director_id = films.director_name
WHERE director.country = 'USA';

SELECT title, director.name as director_name, writer.name as writer_name FROM films
LEFT JOIN director ON director.director_id = films.director_name
LEFT JOIN writer ON writer.writer_id = films.writer_name
WHERE director.name = writer.name;

SELECT title, name as director_name, score FROM films
LEFT JOIN director ON director.director_id = films.director_name
WHERE score >= 8;

SELECT title, director.name AS director_name, star.name as star_name, release_year FROM films
LEFT JOIN director ON director.director_id = films.director_name
LEFT JOIN star ON star.star_id = films.star_name
ORDER BY release_year ASC;

SELECT title, star.name AS star_name, genre FROM films
RIGHT JOIN star ON star.star_id = films.star_name
WHERE star.name LIKE '%M%';

SELECT title, release_year
FROM films
JOIN star ON star.star_id = films.star_name
WHERE star.date_of_birth < '1950-01-01';

SELECT name
FROM writer
LEFT JOIN films ON films.writer_name = writer.writer_id
WHERE films.film_id IS NULL;

SELECT release_year, COUNT(*) AS num_films
FROM films
GROUP BY release_year;
