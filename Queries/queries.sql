
--Same with all the actors, done it in Beekeeper
INSERT INTO actors (birthdate, name) VALUES ('27/12/1948', 'Gerard Depardieu')

--Same with all directors
INSERT INTO directors (name, country) VALUES ('Jean-Paul Rappeneau', 'France')

--Same with actors
INSERT INTO writers (email, name) VALUES ('edmond@rostand.com', 'Edmond Rostand')

--Same with films
INSERT INTO film (name, director_id, star_id, writer_id, year, genre, score)
VALUES ('Cyrano de Bergerac', 10, 10, 10, 1990, 'Historical', 9)

--Get film name and director name
SELECT film.name, directors.director_name
FROM film
INNER JOIN directors ON film.director_id = directors.id

--Get film name, actor name, director name
SELECT film.name, directors.director_name, actors.actor_name
FROM film
INNER JOIN directors ON film.director_id = directors.id
INNER JOIN actors ON film.star_id = actors.id

--Films with directors from USA
SELECT film.name
FROM film
INNER JOIN directors ON directors.id = film.director_id
WHERE directors.country = 'USA'

--Films where writer and director are the same person
SELECT * FROM film
INNER JOIN directors ON film.director_id = directors.id
INNER JOIN writers ON film.writer_id = writers.id
WHERE writers.writer_name = directors.director_name

--Director and film title with score greater or equal to 8
SELECT directors.director_name, film.name FROM film
INNER JOIN directors ON film.director_id = directors.id
WHERE film.score >= 8

--actor name, director name, film title
SELECT directors.director_name, actors.actor_name, film.name FROM film
INNER JOIN directors ON film.director_id = directors.id
INNER JOIN actors ON film.star_id = actors.id

--Actors with less than 8 score
SELECT film.name, actors.actor_name
FROM film
INNER JOIN actors ON film.star_id = actors.id
WHERE film.score < 8

--Actors born either 1974 or 1936
SELECT * FROM film
INNER JOIN actors ON film.star_id = actors.id
WHERE actors.birthdate LIKE '%1974' OR actors.birthdate LIKE '%1936'

--Directors with less than 8 score
SELECT film.name, directors.director_name
FROM film
INNER JOIN directors ON film.director_id = directors.id
WHERE film.score < 8

--actor, director, writer where genre is historical
SELECT film.name, actors.actor_name, directors.director_name, writers.writer_name FROM film
INNER JOIN actors ON film.star_id = actors.id
INNER JOIN directors ON film.director_id = directors.id
INNER JOIN writers ON film.writer_id = writers.id
WHERE film.genre = 'Historical'

--Actors starring in films before 1990
SELECT actors.actor_name FROM film
INNER JOIN actors ON film.star_id = actors.id
WHERE film.year < 1990





------------EXTENSION--------------


--Inserting actors into people
INSERT INTO people (name, birthdate)
VALUES ('Leonardo DiCaprio', '11/11/1974');

--Inserting writers into people
INSERT INTO people (name, email)
VALUES ('Edmond Rostand', 'edmond@rostand.com');

--Inserting directors into people
INSERT INTO people(name, country)
VALUES ('Jean-Paul Rappeneau', 'France')

--actors and films with score greater than 6
SELECT people.name as Actor, film.name AS title FROM film 
INNER JOIN actors ON actors.id = film.star_id
INNER JOIN people ON actors.person_id = people.id
WHERE film.score > 6

--Get film name and director name
SELECT film.name AS title, people.name AS director
FROM film
INNER JOIN directors ON film.director_id = directors.id
INNER JOIN people ON directors.person_id = people.id


--Writer and director same person
SELECT film.name AS title, people.name AS director_writer_name FROM film
INNER JOIN directors ON film.director_id = directors.id
INNER JOIN writers ON film.writer_id = writers.id
INNER JOIN people ON people.id = directors.person_id
WHERE directors.person_id = writers.person_id


--Actors starring in films before 1990
SELECT people.name FROM film
INNER JOIN actors ON film.star_id = actors.id
INNER JOIN people ON actors.person_id = people.id
WHERE film.year < 1990

--Directors with less than 8 score
SELECT film.name AS title ,people.name AS director
FROM film
INNER JOIN directors ON directors.id = film.director_id
INNER JOIN people ON directors.person_id = people.id
WHERE film.score < 8

--Actors born either 1974 or 1936
SELECT film.name AS title, people.name AS actor, people.birthdate AS birthdate FROM film
INNER JOIN actors ON film.star_id = actors.id
INNER JOIN people ON people.id = actors.person_id
WHERE people.birthdate LIKE '%1974' OR people.birthdate LIKE '%1936'

--actor, director, writer where genre is historical
SELECT film.name, actor.name AS actor, director.name AS director, writer.name AS writer 
FROM film
INNER JOIN actors ON film.star_id = actors.id
INNER JOIN directors ON film.director_id = directors.id
INNER JOIN writers ON film.writer_id = writers.id
INNER JOIN people AS actor ON actors.person_id = actor.id
INNER JOIN people AS director ON directors.person_id = director.id
INNER JOIN people AS writer ON writers.person_id = writer.id
WHERE film.genre = 'Historical';

--Adding Actors to cast
INSERT INTO people(name, birthdate)
VALUES ('Nick', '20/03/2000')

INSERT INTO actors(person_id)
VALUES(31)

INSERT INTO film_cast(film_id, actor_id, movie_role)
VALUES(1, 12, 'nobody')

INSERT INTO people (name, birthdate)
VALUES('useless', '19/19/1900')

INSERT INTO actors(person_id)
VALUES(32)

INSERT INTO film_cast(2, 12, 'nobody')

--Get the star of a movie
SELECT people.name, film.name FROM film
INNER JOIN film_cast ON film_cast.film_id = film.id
INNER JOIN actors ON film_cast.actor_id = actors.id
INNER JOIN people ON actors.person_id = people.id
WHERE film_cast.movie_role = 'star'

--Get all actors of a movie
SELECT people.name AS actor, film.name AS title FROM film
INNER JOIN film_cast ON film_cast.film_id = film.id
INNER JOIN actors ON film_cast.actor_id = actors.id
INNER JOIN people ON people.id = actors.person_id
GROUP BY film.name, people.name

