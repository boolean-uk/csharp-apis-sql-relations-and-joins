/*
Same tables from core but tweaked a bit. New People table, and director, star, writer has people_id FOREIGN KEY.
*/
CREATE TABLE people(
	people_id SERIAL PRIMARY KEY,
	name VARCHAR(255)
	);

CREATE TABLE director (
	director_id SERIAL PRIMARY KEY,
	people_id INTEGER REFERENCES people(people_id),
	country VARCHAR(255)
	);
	
CREATE TABLE star (
	star_id SERIAL PRIMARY KEY,
	people_id INTEGER REFERENCES people(people_id),
	date_of_birth VARCHAR(255)
	);
	
CREATE TABLE writer (
	writer_id SERIAL PRIMARY KEY,
	people_id INTEGER REFERENCES people(people_id),
	email VARCHAR(255)
	);
	
 
CREATE TABLE films (
	film_id SERIAL PRIMARY KEY,
	title VARCHAR(255),
	director_id INTEGER REFERENCES director(director_id),
	star_id INTEGER REFERENCES star(star_id),
	writer_id INTEGER REFERENCES writer(writer_id),
	release_year INT,
	genre VARCHAR(255),
	score INT
	);

	--Rearranged the lists a bit to fit the films insert.
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
  ('Harper Lee'),
  ('Boris Pasternak'),
  ('Frederick Frank'),
  ('Erik Hazelhoff Roelfzema'),
  ('Edmond Rostand');
  
  INSERT INTO director (people_id, country) VALUES
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

INSERT INTO star (people_id, date_of_birth) VALUES
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


INSERT INTO writer (people_id, email) VALUES
  (21, 'arthur@clarke.com'),
  (2, 'george@email.com'),
  (22, 'harper@lee.com'),
  (4, 'james@cameron.com'),
  (23, 'boris@boris.com'),
  (24, 'fred@frank.com'),
  (7, 'theo@angelopoulos.com'),
  (25, 'erik@roelfzema.com'),
  (9, 'email@email.com'),
  (26, 'edmond@rostand.com');

INSERT INTO films (title, director_id, star_id, writer_id, release_year, genre, score) VALUES
('2001: A Space Odyssey', 1, 1, 1, 1968, 'Science Fiction', 10),
('Star Wars: A New Hope', 2, 2, 2, 1977, 'Science Fiction', 7),
('To Kill A Mockingbird', 3, 3, 3, 1962, 'Drama', 10),
('Titanic', 4, 4, 4, 1997, 'Romance', 5),
('Dr Zhivago', 5, 5, 5, 1965, 'Historical', 8),
('El Cid', 6, 6, 6, 1961, 'Historical', 6),
('Voyage to Cythera', 7, 7, 7, 1984, 'Drama', 8),
('Soldier of Orange', 8, 8, 8, 1977, 'Thriller', 8),
('Three Colours: Blue', 9, 9, 9, 1993, 'Drama', 8),
('Cyrano de Bergerac', 10, 10, 10, 1990, 'Historical', 9);
