/* Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables. */
SELECT
	film.id,
	film.title,
	director.name AS director,
	director_countries.name AS director_country,
	star.name AS star,
	star.date_of_birth AS star_dob,
	writer.name AS writer,
	writer.email,
	releaseyear,
	film_genre.name AS genre,
	rating AS score
FROM
	film
INNER JOIN 
	director ON film.director_id = director.id
INNER JOIN
	director_countries ON director.country_id = director_countries.id
INNER JOIN
	star ON film.star_id = star.id
INNER JOIN
	writer ON film.writer_id = writer.id
INNER JOIN
	film_genre ON film.genre_id = film_genre.id;
  
  

SELECT
	film.title,
  director.name AS director,
  film_genre.name AS genre,
  film.rating AS score
FROM
	film
INNER JOIN
	director ON film.director_id = director.id
INNER JOIN
	film_genre ON film.genre_id = film_genre.id
WHERE
	film_genre.name LIKE 'Historical';
  


SELECT
	film.title,
  director.name AS director,
  film_genre.name AS genre,
  film.rating AS score
FROM
	film
INNER JOIN
	director ON film.director_id = director.id
INNER JOIN
	film_genre ON film.genre_id = film_genre.id
WHERE
	rating >= 6
AND
	film_genre.name LIKE 'Drama';



SELECT
	director.name AS director,
  director_countries.name AS country
FROM
	director
INNER JOIN
	director_countries ON director.country_id = director_countries.id
WHERE
	director_countries.name LIKE 'USA';
  
  
  
SELECT
	film.title,
  director.name AS director,
  star.name AS star
FROM
	film
INNER JOIN
	director ON film.director_id = director.id
INNER JOIN
	star ON film.star_id = star.id
WHERE
	star.name LIKE 'Leonardo DiCaprio';