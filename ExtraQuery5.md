--CREATE TABLE writer(
--writer_id SERIAL PRIMARY KEY,
--writer_name VARCHAR(20) UNIQUE NOT NULL,
--writer_email VARCHAR(20) UNIQUE NOT NULL
--);

--CREATE TABLE country(
--country_id SERIAL PRIMARY KEY,
--country_name VARCHAR(20) UNIQUE NOT NULL
--);

--CREATE TABLE star(
--star_id SERIAL PRIMARY KEY,
--star_name VARCHAR(20) UNIQUE NOT NULL,
--star_dob VARCHAR(20) UNIQUE NOT NULL
--);

--CREATE TABLE film_director(
--director_id SERIAL PRIMARY KEY,
--director_name VARCHAR(50) NOT NULL,
--dir_country_id INT REFERENCES country(country_id) ON DELETE CASCADE
--);

--CREATE TABLE film(
--film_id SERIAL PRIMARY KEY,
--film_name VARCHAR(50) NOT NULL,
--film_director_id INT REFERENCES film_director(director_id) ON DELETE CASCADE,
--film_star_id INT REFERENCES star(star_id) ON DELETE CASCADE,
--film_writer_id INT REFERENCES writer(writer_id) ON DELETE CASCADE,
--year INT,
--genre VARCHAR(20),
--score INT
--);

Extra Query 5: Shows 4 matches having to be made before output
SELECT film.film_name
FROM film
INNER JOIN film_director ON film.film_director_id = film_director.director_id
INNER JOIN star ON star.star_id = film.film_star_id
INNER JOIN writer ON writer.writer_id = film.film_writer_id