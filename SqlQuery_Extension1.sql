--Extension Task 1

--Create table People
CREATE TABLE people (
    person_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    dob VARCHAR(50),
    country VARCHAR(50),
    email VARCHAR(50)
);
--Populate tabble people
INSERT INTO people (name, dob, country, email)
VALUES
	('Stanley Kubrick',null,'USA',null),
	('George Lucas',null,'USA',null),
	('Robert Mulligan',null,'USA',null),
	('James Cameron',null,'Canada',null),
	('David Lean',null,'UK',null),
	('Anthony Mann',null,'USA',null),
	('Theodoros Angelopoulos',null,'Greece',null),
	('Paul Verhoeven',null,'Netherlands',null),
	('Krzysztof Kieslowski',null,'Poland',null),
	('Jean-Paul Rappeneau',null,'France',null),
    ('Keir Dullea','30/05/1936', null, null),
	('Mark Hamill','25/09/1951', null, null),
	('Gregory Peck','05/04/1916', null, null),
	('Leonardo DiCaprio','11/11/1974', null, null),
	('Julie Christie','14/04/1940', null, null),
	('Charlton Heston','04/10/1923', null, null),
	('Manos Katrakis','14/08/1908', null, null),
	('Rutger Hauer','23/01/1944', null, null),
	('Juliette Binoche','09/03/1964', null, null),
	('Gerard Depardieu','27/12/1948', null, null),
    ('Arthur C Clarke',null, null,'arthur@clarke.com'),
	('George Lucas',null, null,'george@email.com'),
	('Harper Lee',null, null,'harper@lee.com'),
	('James Cameron',null, null,'james@cameron.com'),
	('Boris Pasternak',null, null,'boris@boris.com'),
	('Frederick Frank',null, null,'fred@frank.com'),
	('Theodoros Angelopoulos',null, null,'theo@angelopoulos.com'),
	('Erik Hazelhoff Roelfzema',null, null,'erik@roelfzema.com'),
	('Krzysztof Kieslowsk',null, null,'email@email.com'),
	('Edmond Rostand',null, null,'edmond@rostand.com');

--Create Table director
CREATE TABLE director(
	director_id serial PRIMARY KEY, 
  person_id INT,
  FOREIGN KEY (person_id) REFERENCES people(person_id)
	);

--Populate Table with directors
INSERT INTO director (person_id)
VALUES
	(1),
	(2),
	(3),
	(4),
	(5),
	(6),
	(7),
	(8),
	(9),
	(10);

--Create Table star
CREATE TABLE star (
	star_id serial PRIMARY KEY,
  person_id INT,
  FOREIGN KEY (person_id) REFERENCES people(person_id)
	);

--Populate Table with stars
INSERT INTO star (person_id)
VALUES
	(11),
	(12),
	(13),
	(14),
	(15),
	(16),
	(17),
	(18),
	(19),
	(20);

--Create Table writer
CREATE TABLE writer (
	writer_id serial PRIMARY KEY,
  person_id INT
	);

--Populate Table with writers
INSERT INTO writer (person_id)
VALUES
	(21),
	(22),
	(23),
	(24),
	(25),
	(26),
	(27),
	(28),
	(29),
	(30);
  
  --Create Table film
CREATE TABLE film (
	film_id serial PRIMARY KEY,
	title VARCHAR(50),
	genre VARCHAR(50),
	year_released INTEGER,
	score INTEGER,
	film_director_id int, 
  film_star_id int,
  film_writer_id int,
  CONSTRAINT FK_Directors FOREIGN KEY (film_director_id) 
  	REFERENCES director(director_id)
  	ON DELETE CASCADE
  	ON UPDATE CASCADE,
  CONSTRAINT FK_Stars FOREIGN KEY (film_star_id) 
  	REFERENCES star(star_id)
  	ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT FK_Writer FOREIGN KEY (film_writer_id) 
  	REFERENCES writer(writer_id)
 		ON DELETE CASCADE
    ON UPDATE CASCADE
	);

--Populate Table with films
INSERT INTO film (title, year_released, genre, score, film_director_id, film_star_id, film_writer_id)
VALUES
	('2001: A Space Odyssey',1968, 'Science Fiction', 10, 1, 11, 21),
	('Star Wars: A New Hope',1977,'Science Fiction',7, 2, 12, 22),
	('To Kill A Mockingbird',1962,'Drama',10, 3, 13, 23),
	('Titanic',1997, 'Romance', 5, 4, 14, 24),
	('Dr Zhivago',1965,'Historical',8, 5, 15, 25),
	('El Cid',1961,'Historical',6 , 6, 16, 26),
	('Voyage to Cythera',1984,'Drama',8, 7, 17, 27),
	('Soldier of Orange',1977,'Thriller',8 ,8, 18, 28),
	('Three Colours: Blue',1993,'Drama',8 , 9, 19, 29),
	('Cyrano de Bergerac',1990,'Historical',9, 10, 20,30);

--Show the title and director name for all films
SELECT title,name FROM film
LEFT JOIN people
	ON people.person_id = film.film_director_id;

--Show the title, director and star name for all films
SELECT film.title, director_people.name AS director_name, star_people.name AS star_name FROM film
INNER JOIN 
    director ON director.director_id = film.film_director_id
INNER JOIN 
    people AS director_people ON director_people.person_id = director.person_id
INNER JOIN 
    star ON star.star_id = film.film_star_id
INNER JOIN 
    people AS star_people ON star_people.person_id = star.person_id;

--Show the title of films where the director is from the USA
SELECT title FROM film
LEFT JOIN people
	ON  people.person_id = film.film_director_id
WHERE country = 'USA';

--Show only those films where the writer and the director are the same person
SELECT film.title, director_people.name AS director_name, writer_people.name AS writer_name FROM film
INNER JOIN 
    director ON director.director_id = film.film_director_id
INNER JOIN 
    people AS director_people ON director_people.person_id = director.person_id
INNER JOIN 
    writer ON writer.writer_id = film.film_writer_id
INNER JOIN 
    people AS writer_people ON writer_people.person_id = writer.person_id
    
    where director_people.name = writer_people.name;

--Show directors and film titles for films with a score of 8 or higher
SELECT name, title, score FROM film
LEFT JOIN people
	ON people.person_id = film.film_director_id
WHERE score >= 8;

--Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.

--1. Top 5 moveies with direcor name and writer name
SELECT name, title, score FROM film
LEFT JOIN people
	ON people.person_id = film.film_director_id
ORDER BY score DESC
LIMIT 5;

--2. Top 5 movies with direcor name and writer name where director name contains an "a"
SELECT name, title, score FROM film
LEFT JOIN people
	ON people.person_id = film.film_director_id
Where d_name LIKE '%a%'
ORDER BY score DESC
LIMIT 5;

--3. Find movies containing Director name that contains an 'a' OR writer name that contains a 'b'
SELECT name, title, score FROM film
LEFT JOIN people
	ON people.person_id = film.film_director_id
Where d_name LIKE '%a%' OR w_name LIKE'%b%';

--4. SUM the core of all movies
SELECT Sum(score)FROM film;

--5. Return the title and score of movieswith a score between 5 and 9
SELECT title,score from film
Where score BETWEEN 5 AND 9
;








