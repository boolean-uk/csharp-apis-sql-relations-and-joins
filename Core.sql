
CREATE TABLE directors(
id serial PRIMARY KEY,
name varchar(255),
country varchar(255));

CREATE TABLE stars(
id serial PRIMARY KEY,
name varchar(255),
dob varchar(255));

CREATE TABLE writer(
id serial PRIMARY KEY,
name varchar(255),
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

-- Insert directors
INSERT INTO directors (name, country) VALUES
  ('Stanley Kubrick', 'USA'),
  ('George Lucas', 'USA'),
  ('Robert Mulligan', 'USA'),
  ('James Cameron', 'Canada'),
  ('David Lean', 'UK'),
  ('Anthony Mann', 'USA'),
  ('Theodoros Angelopoulos', 'Greece'),
  ('Paul Verhoeven', 'Netherlands'),
  ('Krzysztof Kieslowski', 'Poland'),
  ('Jean-Paul Rappeneau', 'France');
  
  -- Insert stars
INSERT INTO stars (name, dob) VALUES
  ('Keir Dullea', '1936-05-30'),
  ('Mark Hamill', '1951-09-25'),
  ('Gregory Peck', '1916-04-05'),
  ('Leonardo DiCaprio', '1974-11-11'),
  ('Julie Christie', '1940-04-14'),
  ('Charlton Heston', '1923-10-04'),
  ('Manos Katrakis', '1908-08-14'),
  ('Rutger Hauer', '1944-01-23'),
  ('Juliette Binoche', '1964-03-09'),
  ('Gerard Depardieu', '1948-12-27');
  
  -- Insert writers
INSERT INTO writer (name, email) VALUES
  ('Arthur C Clarke', 'arthur@clarke.com'),
  ('George Lucas', 'george@email.com'),
  ('Harper Lee', 'harper@lee.com'),
  ('James Cameron', 'james@cameron.com'),
  ('Boris Pasternak', 'boris@boris.com'),
  ('Frederick Frank', 'fred@frank.com'),
  ('Theodoros Angelopoulos', 'theo@angelopoulos.com'),
  ('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com'),
  ('Krzysztof Kieslowski', 'email@email.com'),
  ('Edmond Rostand', 'edmond@rostand.com');
  
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
SELECT f.title, d.name FROM film f JOIN directors d ON f.director_id = d.id;

--Show the title, director and star name for all films
SELECT f.title, d.name, s.name FROM film f JOIN directors d ON f.director_id = d.id JOIN stars s ON f.star_id = s.id;

--Show the title of films where the director is from the USA
SELECT f.title, d.name, d.country FROM film f JOIN directors d ON f.director_id = d.id WHERE d.country = 'USA';

--Show only those films where the writer and the director are the same person
SELECT f.title, d.name AS dirname, w."name" AS writername FROM film f JOIN directors d ON f.director_id = d.id JOIN writer w ON f.writer_id = w.id WHERE d."name" = w."name";

--Show directors and film titles for films with a score of 8 or higher
SELECT f.title, d.name, f.score FROM film f JOIN directors d ON f.director_id = d.id WHERE f.score >= 8;

--Make at least 5 more queries to demonstrate your understanding of --joins, and other relationships between tables.

SELECT f.title, d.name, f.score FROM film f JOIN directors d ON f.director_id = d.id WHERE f.score > 5 AND f.genre = 'Drama';

SELECT f.title, d.name, d.country, f.release_year FROM film f JOIN directors d ON f.director_id = d.id WHERE d.country = 'USA' AND f.release_year > 1965;

SELECT f.title, d.name, f.score FROM film f JOIN directors d ON f.director_id = d.id WHERE f.score = 10;

SELECT f.title, s.name AS star, f.score FROM film f JOIN stars s ON f.star_id = s.id WHERE f.score = 10;


SELECT f.title, f.genre, s.name FROM film f JOIN stars s ON f.star_id = s.id;

--query to see how many of each genre a director has directed, i realized afterwards they all only have 1 entry lol.
SELECT d.name, COUNT(f.genre) FROM film f JOIN directors d ON f.director_id = d.id GROUP BY d."name";

SELECT f.genre, COUNT(f.genre) FROM film f GROUP BY f.genre;