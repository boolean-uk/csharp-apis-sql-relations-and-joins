SELECT film.title, director.name AS director_name
FROM film
JOIN director ON film.director_id = director.director_id;

SELECT film.title, director.name AS director_name, star.name AS star_name 
FROM film
JOIN director ON film.director_id = director.director_id
Join star ON film.star_id = star.star_id;

SELECT film.title
FROM film
JOIN director ON film.director_id = director.director_id
WHERE director.country = 'USA';

SELECT film.title
FROM film
JOIN director ON film.director_id = director.director_id
JOIN writer ON film.writer_id = writer.writer_id
WHERE director.name = writer.name

SELECT film.title, director.name AS director_name
FROM film
JOIN director ON film.director_id = director.director_id
WHERE film.score >= 8;

'Shows the film title, director and star names for films released in and/or sooner than 1970'
SELECT film.title, director.name AS director_name, star.name AS star_name
FROM film
JOIN director ON film.director_id = director.director_id
JOIN star ON film.star_id = star.star_id
WHERE film.year <= 1970;

'Show the average score for each directo'
SELECT director.name AS director_name, AVG(film.Score) AS average_score
FROM film
JOIN director ON film.director_id = director.director_id
GROUP BY director_name;

'Show the film titles and star names for films where the stars date of birth is before 1940'
SELECT film.title, star.name AS star_name
FROM film
JOIN star ON film.star_id = star.star_id
WHERE star.dob < '1940-01-01';

'Show the film titles, directors, and star names for films with a score between 7 and 9 (inclusive)'
SELECT film.title, director.name AS director_name, star.name AS star_name
FROM film
JOIN director ON film.director_id = director.director_id
JOIN star ON film.star_id = star.star_id
WHERE film.score BETWEEN 7 AND 9;

'Show the number of films directed by each director'
SELECT director.name AS director_name, COUNT(*) AS number_of_films
FROM film
JOIN director ON film.director_id = director.director_id
GROUP BY director_name;

'Show the film titles and release years for films directed by Stanley Kubrick'
SELECT film.title, film.year
FROM film
JOIN director ON film.director_id = director.director_id
WHERE director.name = 'Stanley Kubrick';