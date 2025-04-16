-- EXTENSION 1

CREATE TABLE IF NOT EXISTS People (
	id SERIAL PRIMARY KEY,
	name VARCHAR(250) NOT NULL
);


CREATE TABLE IF NOT EXISTS Directors2 (
	id SERIAL PRIMARY KEY,
	people_id INTEGER NOT NULL,
	country VARCHAR(250) NOT NULL,
	FOREIGN KEY (people_id) REFERENCES People(id)
);


CREATE TABLE IF NOT EXISTS Stars2 (
	id SERIAL PRIMARY KEY,
	people_id INTEGER NOT NULL,
	date_of_birth DATE NOT NULL,
	FOREIGN KEY (people_id) REFERENCES People(id)
);


CREATE TABLE IF NOT EXISTS Writers2 (
	id SERIAL PRIMARY KEY,
	people_id INTEGER NOT NULL,
	email VARCHAR(250) NOT NULL,
	FOREIGN KEY (people_id) REFERENCES People(id)
);


CREATE TABLE IF NOT EXISTS Films2 (
	id SERIAL PRIMARY KEY,
	title VARCHAR(250) NOT NULL,
	year INTEGER NOT NULL,
	genre VARCHAR(250) NOT NULL,
	score INTEGER NOT NULL,
	director_id SERIAL,
	star_id SERIAL,
	writer_id SERIAL,
	FOREIGN KEY (director_id) REFERENCES Director(id),
	FOREIGN KEY (star_id) REFERENCES Star(id),
	FOREIGN KEY (writer_id) REFERENCES Writer(id)
);


INSERT INTO People (name) VALUES
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
  

INSERT INTO Directors2 (people_id, country) VALUES
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


INSERT INTO Stars2 (people_id, date_of_birth) VALUES
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
  
INSERT INTO Writers2 (people_id, email) VALUES
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

INSERT INTO Films2 (title, year, genre, score, director_id, star_id, writer_id) VALUES
    ('2001: A Space Odyssey', 1968, 'Science Fiction', 10, 1, 1, 1),
    ('Star Wars: A New Hope', 1977, 'Science Fiction', 7, 2, 2, 2),
    ('To Kill A Mockingbird', 1962, 'Drama', 10, 3, 3, 3),
    ('Titanic', 1997, 'Romance', 5, 4, 4, 4),
    ('Dr Zhivago', 1965, 'Historical', 8, 5, 5, 5),
    ('El Cid', 1961, 'Historical', 6, 6, 6, 6),
    ('Voyage to Cythera', 1984, 'Drama', 8, 7, 7, 7),
    ('Soldier of Orange', 1977, 'Thriller', 8, 8, 8, 8),
    ('Three Colours: Blue', 1993, 'Drama', 8, 9, 9, 9),
    ('Cyrano de Bergerac', 1990, 'Historical', 9, 10, 10, 10);


-- Show the title and director name for all films
SELECT f.title, p.name as directors
FROM Films2 as f
LEFT JOIN Directors2 as d ON f.director_id = d.id
LEFT JOIN People as p ON d.people_id = p.id;


-- Show the title, director and star name for all films
SELECT f.title, pd.name as director, ps.name as star
FROM Films2 as f
LEFT JOIN Directors2 as d ON f.director_id = d.id 
LEFT JOIN Stars2 as s on f.star_id = s.id
LEFT JOIN People as pd ON d.people_id = pd.id
LEFT JOIN People as ps ON s.people_id = ps.id
	

-- Show the title of films where the director is from the USA
SELECT f.title
FROM Films2 as f
LEFT JOIN Directors2 as d ON f.director_id = d.id
LEFT JOIN People as p ON d.people_id = p.id
WHERE d.country = 'USA';


-- Show only those films where the writer and the director are the same person
SELECT f.title
FROM Films2 as f 
LEFT JOIN Writers2 as w ON f.writer_id = w.id
LEFT JOIN Directors2 as d ON f.director_id = d.id
LEFT JOIN People as pw ON w.people_id = pw.id
LEFT JOIN People as pd ON d.people_id = pd.id
WHERE pw.name LIKE pd.name


-- Show directors and film titles for films with a score of 8 or higher
SELECT p.name, f.title
FROM Films2 as f
LEFT JOIN Directors2 as d ON f.director_id = d.id
LEFT JOIN People as p ON d.people_id = p.id
WHERE score >= 8;


-- EXTENSION 2

CREATE TABLE Casts (
	id SERIAL PRIMARY KEY,
	film_id INTEGER NOT NULL,
	people_id INTEGER NOT NULL,
	FOREIGN KEY (film_id) REFERENCES Films2(id),
	FOREIGN KEY (people_id) REFERENCES People(id)
);

INSERT INTO Casts (film_id, people_id)
VALUES
    (1, 1),
    (1, 2),
    (1, 3),
    (2, 4),
    (3, 5),
    (3, 6),
    (3, 7),
    (3, 8)




