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
