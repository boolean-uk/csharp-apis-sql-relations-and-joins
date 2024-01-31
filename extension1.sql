-- Create new tables
CREATE TABLE persons(
  id SERIAL PRIMARY KEY,
  name varchar(50) UNIQUE
);

CREATE TABLE writers(
  id serial PRIMARY KEY,
  person_id INTEGER,
  email varchar(50),
  FOREIGN KEY (person_id) REFERENCES persons(id)
);

CREATE TABLE stars(
  id serial NOT NULL PRIMARY KEY,
  person_id INTEGER,
  birth date,
  FOREIGN KEY (person_id) REFERENCES persons(id)
);

CREATE TABLE directors(
  id serial NOT NULL PRIMARY KEY,
  person_id INTEGER,
  country varchar(50),
  FOREIGN KEY (person_id) REFERENCES persons(id)
);

--Create movies
CREATE TABLE movies(
	id SERIAL PRIMARY KEY,
	title VARCHAR(255) NOT NULL,
	r_year INTEGER NOT NULL,
	genre VARCHAR(255) NOT NULL,
	score INTEGER NOT NULL,
	director_id INTEGER,
	star_id INTEGER,
	writer_id INTEGER,
	FOREIGN KEY (director_id) REFERENCES directors(id),
	FOREIGN KEY (star_id) REFERENCES stars(id),
	FOREIGN KEY (writer_id) REFERENCES writers(id)	
);

-- Insert data
INSERT INTO persons(name) VALUES
  ('Arthur C Clarke'),
  ('Harper Lee'),
  ('James Cameron'),
  ('Boris Pasternak'),
  ('Frederick Frank'),
  ('Theodoros Angelopoulos'),
  ('Erik Hazelhoff Roelfzema'),
  ('Krzysztof Kieslowsk'),
  ('Edmond Rostand'),
  ('Keir Dullea'),
  ('Gregory Peck'),
  ('Mark Hamill'),
  ('Leonardo DiCaprio'),
  ('Julie Christie'),
  ('Charlton Heston'),
  ('Manos Katrakis'),
  ('Rutger Hauer'),
  ('Juliette Binoche'),
  ('Gerard Depardieu'),
  ('Stanley Kubrick'),
  ('George Lucas'),
  ('Robert Mulligan'),
  ('David Lean'),
  ('Anthony Mann'),
  ('Paul Verhoeven'),
  ('Jean-Paul Rappeneau');

INSERT INTO writers(person_id, email) VALUES
  (1, 'arthur@clarke.com'),
  (21, 'george@email.com'),
  (2, 'harper@lee.com'),
  (3, 'james@cameron.com'),
  (4, 'boris@boris.com'),
  (5, 'fred@frank.com'),
  (6, 'theo@angelopoulos.com'),
  (7, 'erik@roelfzema.com'),
  (8, 'email@email.com'),
  (9, 'edmond@rostand.com');

INSERT INTO stars(person_id, birth) VALUES
  (10, '1936-05-30'),
  (12, '1951-09-25'),
  (11, '1916-04-05'),
  (13, '1974-11-11'),
  (14, '1940-04-14'),
  (15, '1923-10-04'),
  (16, '1908-08-14'),
  (17, '1944-01-23'),
  (18, '1964-03-09'),
  (19, '1948-12-27');

INSERT INTO directors (person_id, country) VALUES 
  (20, 'USA'),
  (21, 'USA'),
  (22, 'USA'),
  (3, 'Canada'),
  (23, 'UK'),
  (24, 'USA'),
  (6, 'Greece'),
  (25, 'Netherlands'),
  (8, 'Poland'),
  (26, 'France');

--Insert into movies
INSERT INTO movies(writer_id, star_id, director_id, title, r_year, genre, score)
VALUES
(1, 1, 1, '2001: A Space Odyssey', 1968, 'Science Fiction', 10),
(2, 2, 2, 'Star Wars: A New Hope', 1977, 'Science Fiction', 7),
(3, 3, 3, 'To Kill A Mockingbird', 1962, 'Drama', 10),
(4, 4, 4, 'Titanic', 1997, 'Romance', 5),
(5, 5, 5, 'Dr Zhivago', 1965, 'Historical', 8),
(6, 6, 6, 'El Cid', 1961, 'Historical', 6),
(7, 7, 7, 'Voyage to Cythera', 1984, 'Drama', 8),
(8, 8, 8, 'Soldier of Orange', 1977, 'Thriller', 8),
(9, 9, 9, 'Three Colours: Blue', 1993, 'Drama', 8),
(10, 10, 10, 'Cyrano de Bergerac', 1990, 'Historical', 9);

-- Update queries that broke with these changes:
-- Show the title and director name for all films
SELECT title movietitle, name directorname FROM movies INNER JOIN directors ON director_id=directors.id INNER JOIN persons on directors.person_id=persons.id;

-- Show the title, director and star name for all films
SELECT title movietitle, director_person.name directorname, star_person.name starname FROM movies INNER JOIN directors on director_id=directors.id INNER JOIN stars on star_id=stars.id
  INNER JOIN persons AS director_person on directors.person_id=director_person.id
  INNER JOIN persons AS star_person on stars.person_id=star_person.id;

-- Show directors and film titles for films with a score of 8 or higher
SELECT name directorname, title movietitle FROM movies INNER JOIN directors on director_id=directors.id INNER JOIN persons on directors.person_id=persons.id WHERE score>=8;

-- 1. Show everything
SELECT * FROM movies INNER JOIN directors on director_id=directors.id INNER JOIN writers ON writer_id=writers.id INNER JOIN stars ON star_id=stars.id
  INNER JOIN persons AS director_person on directors.person_id=director_person.id
  INNER JOIN persons AS star_person on stars.person_id=star_person.id
  INNER JOIN persons AS writer_person on writers.person_id=writer_person.id;

-- 3. Show number of movies that Mark Hamill starred in
SELECT name, COUNT(*) FROM movies INNER JOIN stars ON star_id=stars.id INNER JOIN persons ON stars.person_id=persons.id WHERE name = 'Mark Hamill' GROUP BY name;

-- 4. Show the date of birth for the star in every movie
SELECT title, name, birth FROM movies INNER JOIN stars ON star_id=stars.id INNER JOIN persons ON stars.person_id=persons.id;

-- 5. Show directors responsible for movies with 5 or less in score
SELECT name, title, score FROM movies INNER JOIN directors on director_id=directors.id INNER JOIN persons on directors.person_id=persons.id WHERE score<=5;
