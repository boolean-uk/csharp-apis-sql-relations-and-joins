SELECT films.name, directors.name FROM films INNER JOIN directors ON films.directorid = directors.id;

SELECT films.name, directors.name, star.name 
FROM films
INNER JOIN directors ON films.directorid = directors.id
INNER JOIN stars ON films.starid = stars.id;

SELECT films.name AS film_title
FROM films
INNER JOIN directors ON films.directorid = directors.id
WHERE directors.country = 'USA';

SELECT films.name AS film_title
FROM films
INNER JOIN directors ON films.directorid = directors.id
INNER JOIN writers ON films.writerid = writers.id
WHERE directors.name = writers.name;

SELECT directors.name AS director_name, films.name AS film_title
FROM films
INNER JOIN directors ON films.directorid = directors.id
WHERE films.score >= 8;

SELECT films.name AS film_title, films.genre, writers.name AS writer_name
FROM films
INNER JOIN writers ON films.writerid = writers.id;

SELECT films.name AS film_title, stars.name AS star_name, films.year AS release_year
FROM films
INNER JOIN stars ON films.starid = stars.id;


SELECT directors.name AS director_name, COUNT(films.id) AS film_count
FROM films
INNER JOIN directors ON films.directorid = directors.id
GROUP BY directors.name;

SELECT films.name AS film_title, directors.name AS director_name
FROM films
INNER JOIN directors ON films.directorid = directors.id
WHERE films.genre = 'Drama';

SELECT films.name AS film_title
FROM films
INNER JOIN stars ON films.starid = stars.id
WHERE stars.dob < '1950-01-01';
