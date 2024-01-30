-- Once you have the tables and data set up then you need to create queries to return the data needed as shown below:

--Show the title and director name for all films
SELECT title, director_name FROM film 
INNER JOIN director ON film.director_id = director.id;
--Show the title, director and star name for all films
SELECT title, director_name, star_name FROM film 
INNER JOIN director ON film.director_id = director.ID
INNER JOIN star ON film.star_id = star.id;
--Show the title of films where the director is from the USA
SELECT title FROM film 
INNER JOIN director ON film.director_id=director.id 
WHERE director_country = 'USA';
--Show only those films where the writer and the director are the same person
SELECT title, director_name, writer_name FROM film 
INNER JOIN director ON film.director_id=director.id 
INNER JOIN writer ON film.writer_id=writer.id 
WHERE director_name = writer_name;
--Show directors and film titles for films with a score of 8 or higher
SELECT director_name, title, score FROM film 
INNER JOIN director ON film.director_id=director.id
WHERE score >= 8;
--Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.

--Show film count grouped by director's country
SELECT count(film.id), director_country FROM film 
INNER JOIN director ON film.director_id=director.id 
GROUP BY director_country;

--show how many films have a director from the USA
SELECT count(film.id), director_country from film 
INNER JOIN director ON film.director_id=director.id 
WHERE director_country = 'USA' GROUP BY director_country;

--show movies, their writers and directors
SELECT title, writer_name, director_name from film 
INNER JOIN  writer ON writer_id=writer.id 
INNER JOIN director ON director_id=director.id;

-- list all of James Cameron's credits
SELECT writer_name, director_name from film
INNER JOIN director ON director_id=director.id 
INNER JOIN writer ON writer_id=writer.id WHERE film.id = 4

--show all information about a movie, its writer, director, and star
SELECT * from film JOIN writer ON writer_id=writer.id JOIN director ON director_id=director.id JOIN star ON film.star_id = star.id