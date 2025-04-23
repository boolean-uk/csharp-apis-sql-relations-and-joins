
CREATE TABLE people (
id serial PRIMARY KEY,
name varchar(255));

DROP TABLE directors, stars, writer CASCADE;
DROP TABLE film;

CREATE TABLE directors(
id serial PRIMARY KEY,
person_id INTEGER REFERENCES people(id),
country varchar(255));

CREATE TABLE stars(
id serial PRIMARY KEY,
person_id INTEGER REFERENCES people(id),
dob varchar(255));

CREATE TABLE writer(
id serial PRIMARY KEY,
person_id INTEGER REFERENCES people(id),
email varchar(255));

CREATE TABLE film (
id serial PRIMARY KEY,
title varchar(255),
director_id INTEGER REFERENCES directors(id),
star_id INTEGER REFERENCES stars(id),
writer_id INTEGER REFERENCES writer(id),
release_year INTEGER NOT NULL,
score INTEGER NOT NULL,
genre varchar(50) NOT NULL);

DROP TABLE film;

-- Insert people
INSERT INTO people (name) VALUES
  ('Stanley Kubrick'),
  ('George Lucas'),
  ('Robert Mulligan'),
  ('James Cameron'),
  ('David Lean'),
  ('Anthony Mann'),
  ('Theodoros Angelopoulos'),
  ('Paul Verhoeven'),
  ('Krzysztof Kieslowski'),
  ('Jean-Paul Rappeneau'),
  ('Keir Dullea'),
  ('Mark Hamill'),
  ('Gregory Peck'),
  ('Leonardo DiCaprio'),
  ('Julie Christie'),
  ('Charlton Heston'),
  ('Manos Katrakis'),
  ('Rutger Hauer'),
  ('Juliette Binoche'),
  ('Gerard Depardieu'),
  ('Arthur C Clarke'),
  ('George Lucas'),
  ('Harper Lee'),
  ('James Cameron'),
  ('Boris Pasternak'),
  ('Frederick Frank'),
  ('Theodoros Angelopoulos'),
  ('Erik Hazelhoff Roelfzema'),
  ('Krzysztof Kieslowski'),
  ('Edmond Rostand');

-- Insert directors
INSERT INTO directors (person_id, country) VALUES
  (1, 'USA'),
  (2, 'USA'),
  (3, 'USA'),
  (4, 'Canada'),
  (5, 'UK'),
  (6, 'USA'),
  (7, 'Greece'),
  (8, 'Netherlands'),
  (9, 'Poland'),
  (10, 'France');
  
  -- Insert stars
INSERT INTO stars (person_id, dob) VALUES
  (11, '1936-05-30'),
  (12, '1951-09-25'),
  (13, '1916-04-05'),
  (14, '1974-11-11'),
  (15, '1940-04-14'),
  (16, '1923-10-04'),
  (17, '1908-08-14'),
  (18, '1944-01-23'),
  (19, '1964-03-09'),
  (20, '1948-12-27');
  
  -- Insert writers
INSERT INTO writer (person_id, email) VALUES
  (21, 'arthur@clarke.com'),
  (22, 'george@email.com'),
  (23, 'harper@lee.com'),
  (24, 'james@cameron.com'),
  (25, 'boris@boris.com'),
  (26, 'fred@frank.com'),
  (27, 'theo@angelopoulos.com'),
  (28, 'erik@roelfzema.com'),
  (29, 'email@email.com'),
  (30, 'edmond@rostand.com');
  
  -- Insert films
INSERT INTO film (title, director_id, writer_id, star_id, release_year, score, genre) VALUES
  ('2001: A Space Odyssey', 1, 1, 1, 1968, 10, 'Science Fiction'),
  ('Star Wars: A New Hope', 2, 2, 2, 1977, 7, 'Science Fiction'),
  ('To Kill A Mockingbird', 3, 3, 3, 1962, 10, 'Drama'),
  ('Titanic', 4, 4, 4, 1997, 5, 'Romance'),
  ('Dr Zhivago', 5, 5, 5, 1965, 8, 'Historical'),
  ('El Cid', 6, 6, 6, 1961, 6, 'Historical'),
  ('Voyage to Cythera', 7, 7, 7, 1984, 8, 'Drama'),
  ('Soldier of Orange', 8, 8, 8, 1977, 8, 'Thriller'),
  ('Three Colours: Blue', 9, 9, 9, 1993, 8, 'Drama'),
  ('Cyrano de Bergerac', 10, 10, 10, 1990, 9, 'Historical');
  
  
  
--Show the title and director name for all films
SELECT f.title, p."name" FROM film f JOIN directors d ON f.director_id = d.id JOIN people p ON d.person_id = p.id;

--Show the title, director and star name for all films
SELECT f.title, p1.name AS Director, p2.name AS star FROM film f JOIN directors d ON f.director_id = d.id JOIN stars s ON f.star_id = s.id JOIN people p1 ON d.person_id = p1.id JOIN people p2 ON s.person_id = p2.id;

--Show the title of films where the director is from the USA
SELECT f.title, p.name, d.country FROM film f JOIN directors d ON f.director_id = d.id JOIN people p ON d.person_id = p.id WHERE d.country = 'USA';

--Show only those films where the writer and the director are the same person
SELECT f.title, p1.name AS dirname, p2.name AS writername FROM film f JOIN directors d ON f.director_id = d.id JOIN writer w ON f.writer_id = w.id JOIN people p1 ON d.person_id = p1.id JOIN people p2 ON w.person_id = p2.id WHERE p1."name" = p2."name";

--Show directors and film titles for films with a score of 8 or higher
SELECT f.title, p.name AS director, f.score FROM film f JOIN directors d ON f.director_id = d.id JOIN people p ON d.person_id = p.id WHERE f.score >= 8;

--Make at least 5 more queries to demonstrate your understanding of --joins, and other relationships between tables.

SELECT f.title, p.name, f.genre, f.score FROM film f JOIN directors d ON f.director_id = d.id JOIN people p ON d.person_id = p.id WHERE f.score > 5 AND f.genre = 'Drama';

SELECT f.title, p.name, d.country, f.release_year FROM film f JOIN directors d ON f.director_id = d.id JOIN people p ON d.person_id = p.id WHERE d.country = 'USA' AND f.release_year > 1965;

SELECT f.title, p.name, f.score FROM film f JOIN directors d ON f.director_id = d.id JOIN people p ON d.person_id = p.id WHERE f.score = 10;

SELECT f.title, p.name AS star, f.score FROM film f JOIN stars s ON f.star_id = s.id JOIN people p ON s.person_id = p.id WHERE f.score = 10;

SELECT f.title, f.genre, p.name FROM film f JOIN stars s ON f.star_id = s.id JOIN people p ON s.person_id = p.id ;

