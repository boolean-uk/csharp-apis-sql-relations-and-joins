-- Init
CREATE TABLE people(
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100),
  birth DATE,
  country VARCHAR(100)
);

CREATE TABLE role(
  id SERIAL PRIMARY KEY,
	rolename VARCHAR(100) NOT NULL
);


CREATE TABLE filmsnew (
 	id SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  year INTEGER NOT NULL,
  genre VARCHAR(50),
  score INTEGER
);


CREATE TABLE Relations (
	id SERIAL PRIMARY KEY,
  film_id INTEGER NOT NULL,
  role_id INTEGER NOT NULL,
  person_id INTEGER NOT NULL
);

-- Populate
INSERT INTO filmsnew (title, year, genre, score) 
VALUES
    ('2001: A Space Odyssey', 1968, 'Science Fiction', 10),
    ('Star Wars: A New Hope', 1977, 'Science Fiction', 7),
    ('To Kill A Mockingbird', 1962, 'Drama', 10),
    ('Titanic', 1997, 'Romance', 5),
    ('Dr Zhivago', 1965, 'Historical', 8),
    ('El Cid', 1961, 'Historical', 6),
    ('Voyage to Cythera', 1984, 'Drama', 8),
    ('Soldier of Orange', 1977, 'Thriller', 8),
    ('Three Colours: Blue', 1993, 'Drama', 8),
    ('Cyrano de Bergerac', 1990, 'Historical', 9);

INSERT INTO people (name, email, birth, country)
VALUES
('Stanley Kubrick', NULL, NULL, 'USA'),
('George Lucas', 'george@email.com', NULL, 'USA'),
('Robert Mulligan', NULL, NULL, 'USA'),
('James Cameron', 'james@cameron.com', NULL, 'Canada'),
('David Lean', NULL, NULL, 'UK'),
('Anthony Mann', NULL, NULL, 'USA'),
('Theodoros Angelopoulos', 'theo@angelopoulos.com', NULL, 'Greece'),
('Paul Verhoeven', NULL, NULL, 'Netherlands'),
('Krzysztof Kieslowski', 'email@email.com', NULL, 'Poland'),
('Jean-Paul Rappeneau', NULL, NULL, 'France'),

('Arthur C Clarke', 'arthur@clarke.com', NULL, NULL),
('Harper Lee', 'harper@lee.com', NULL, NULL),
('Boris Pasternak', 'boris@boris.com', NULL, NULL),
('Frederick Frank', 'fred@frank.com', NULL, NULL),
('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com', NULL, NULL),
('Edmond Rostand', 'edmond@rostand.com', NULL, NULL),

('Keir Dullea', NULL, '1936-05-30', NULL),
('Mark Hamill', NULL, '1951-09-25', NULL),
('Gregory Peck', NULL, '1916-04-05', NULL),
('Leonardo DiCaprio', NULL, '1974-11-11', NULL),
('Julie Christie', NULL, '1940-04-14', NULL),
('Charlton Heston', NULL, '1923-10-04', NULL),
('Manos Kartakis', NULL, '1908-08-14', NULL),
('Rutger Hauer', NULL, '1944-01-23', NULL),
('Juliette Binoche', NULL, '1964-03-09', NULL),
('Gerard Depardieu', NULL, '1948-12-27', NULL)

INSERT INTO role (rolename)
VALUES
	('Director'),
  ('Actor'),
  ('Writer')
  
INSERT INTO relations (film_id, role_id, person_id)
VALUES
	(1, 1, 1),
  (1, 2, 17),
  (1, 3, 11),
  
 	(2, 1, 2),
  (2, 2, 18),
  (2, 3, 2),
  
  (3, 1, 3),
  (3, 2, 19),
  (3, 3, 12),
  
  (4, 1, 4),
  (4, 2, 20),
  (4, 3, 4),
  
  (5, 1, 5),
  (5, 2, 21),
  (5, 3, 13),
  
  (6, 1, 6),
  (6, 2, 22),
  (6, 3, 14),
  
  (7, 1, 7),
  (7, 2, 23),
  (7, 3, 7),
  
  (8, 1, 8),
  (8, 2, 24),
  (8, 3, 15),
  
  (9, 1, 9),
  (9, 2, 25),
  (9, 3, 9),
  
  (10, 1, 10),
  (10, 2, 26),
  (10, 3, 16)


-- i
SELECT
	f.title, pe.name
FROM filmsnew f
LEFT JOIN relations re ON f.id = re.film_id
LEFT JOIN people pe ON pe.id = re.person_id
LEFT JOIN role rs ON re.role_id = rs.id
WHERE rs.rolename = 'Director';

-- ii
SELECT 
	f.title, pe.name, rs.rolename "role"
FROM filmsnew f
LEFT JOIN relations re ON f.id = re.film_id
LEFT JOIN people pe ON pe.id = re.person_id  
LEFT JOIN role rs ON re.role_id = rs.id
WHERE rs.rolename = 'Director' OR rs.rolename = 'Actor'
ORDER BY f.title;

-- iii
SELECT DISTINCT
	f.title
FROM filmsnew f
LEFT JOIN relations re ON f.id = re.film_id
LEFT JOIN people pe ON pe.id = re.person_id
LEFT JOIN role ro ON re.role_id = ro.id
WHERE pe.country = 'USA';

-- iv
SELECT DISTINCT
	f.title
FROM filmsnew f
RIGHT JOIN relations re ON f.id = re.film_id
RIGHT JOIN people pe ON pe.id = re.person_id  
RIGHT JOIN role ro ON re.role_id = ro.id 
WHERE ro.rolename = 'Director' or ro.rolename = 'Writer' group by name, title having count(name) > 1;

-- v
SELECT DISTINCT
	f.title, pe.name
FROM filmsnew f
RIGHT JOIN relations re ON f.id = re.film_id
RIGHT JOIN people pe ON pe.id = re.person_id  
RIGHT JOIN role ro ON re.role_id = ro.id
WHERE ro.rolename = 'Director' AND f.score >=8

