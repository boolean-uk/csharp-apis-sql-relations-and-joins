--Core Tasks

--Show the title and director name for all films
SELECT title,d_name FROM film
LEFT JOIN director
	ON director.director_id = film.film_director_id;

--Show the title, director and star name for all films
SELECT title, d_name, s_name FROM film
LEFT JOIN director
	ON director.director_id = film.film_director_id
LEFT JOIN star
	ON star.star_id = film.film_star_id;

--Show the title of films where the director is from the USA
SELECT title FROM film
LEFT JOIN director
	ON director.director_id = film.film_director_id
WHERE country = 'USA';

--Show only those films where the writer and the director are the same person
SELECT title FROM film
LEFT JOIN director
	ON director.director_id = film.film_director_id
LEFT JOIN writer
	ON writer.writer_id = film.film_writer_id
WHERE d_name = w_name;

--Show directors and film titles for films with a score of 8 or higher
SELECT d_name, title, score FROM film
LEFT JOIN director
	ON director.director_id = film.film_director_id
WHERE score >= 8;

--Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.

--1. Top 5 moveies with direcor name and writer name
SELECT d_name,w_name, title, score FROM film
LEFT JOIN director
	ON director.director_id = film.film_director_id
LEFT JOIN writer
	ON writer.writer_id = film.film_writer_id
ORDER BY score DESC
LIMIT 5;

--2. Top 5 movies with direcor name and writer name where director name contains an "a"
SELECT d_name,w_name, title, score FROM film
LEFT JOIN director
	ON director.director_id = film.film_director_id
LEFT JOIN writer
	ON writer.writer_id = film.film_writer_id
Where d_name LIKE '%a%'
ORDER BY score DESC
LIMIT 5;

--3. Find movies containing Director name that contains an 'a' OR writer name that contains a 'b'
SELECT d_name,w_name, title, score FROM film
LEFT JOIN director
	ON director.director_id = film.film_director_id
LEFT JOIN writer
	ON writer.writer_id = film.film_writer_id
Where d_name LIKE '%a%' OR w_name LIKE'%b%';

--4. SUM the core of all movies
SELECT Sum(score)FROM film;

--5. Return the title and score of movieswith a score between 5 and 9
SELECT title,score from film
Where score BETWEEN 5 AND 9
;
