/* EXTENSION 1 */


CREATE SCHEMA exercise_sql_extension1;

CREATE TABLE exercise_sql_extension1.People
(
id serial PRIMARY KEY,
  name VARCHAR (100) NOT NULL,
  country VARCHAR (100),
  email VARCHAR (100),
  born DATE
);

CREATE TABLE exercise_sql_extension1.Films
(
id serial PRIMARY KEY,
  title VARCHAR (100) NOT NULL,
  year INTEGER NOT NULL,
  genre VARCHAR (100) NOT NULL,
  score INTEGER CHECK(score >= 0 AND score <= 10) NOT NULL,
  director_fk INTEGER NOT NULL,
  star_fk INTEGER NOT NULL,
  writer_fk INTEGER NOT NULL 
);

CREATE TABLE exercise_sql_extension1.Director
(
id serial PRIMARY KEY,
  people_fk INTEGER NOT NULL
);


CREATE TABLE exercise_sql_extension1.Star
(
id serial PRIMARY KEY,
  people_fk INTEGER NOT NULL
);

CREATE TABLE exercise_sql_extension1.Writer
(
  id serial PRIMARY KEY,
  people_fk INTEGER NOT NULL
);


INSERT INTO exercise_sql_extension1.People (name, country, email, born) VALUES
('Stanley Kubrick', 'USA', NULL, NULL),
('George Lucas', 'USA', 'george@email.com', NULL),
('Robert Mulligan', 'USA', NULL, NULL),
('James Cameron', 'Canada', 'james@cameron.com', NULL),
('David Lean', 'UK', NULL, NULL),
('Anthony Mann', 'USA', NULL, NULL),
('Theodoros Angelopoulos', 'Greece', 'theo@angelopoulos.com', NULL),
('Paul Verhoeven', 'Netherlands', NULL, NULL),
('Krzysztof Kieslowski', 'Poland', 'email@email.com', NULL),
('Jean-Paul Rappeneau', 'France', NULL, NULL),
('Keir Dullea', NULL, NULL, '1936-05-30'),
('Mark Hamill', NULL, NULL, '1951-09-25'),
('Gregory Peck', NULL, NULL, '1916-04-05'),
('Leonardo DiCaprio', NULL, NULL, '1974-11-11'),
('Julie Christie', NULL, NULL, '1940-04-14'),
('Charlton Heston', NULL, NULL, '1923-10-04'),
('Manos Katrakis', NULL, NULL, '1908-08-14'),
('Rutger Hauer', NULL, NULL, '1944-01-23'),
('Juliette Binoche', NULL, NULL, '1964-03-09'),
('Gerard Depardieu', NULL, NULL, '1948-12-27'),
('Arthur C Clarke', NULL, 'Arthur C Clarke', NULL),
('Harper Lee', NULL, 'harper@lee.com', NULL),
('Boris Pasternak', NULL, 'boris@boris.com', NULL),
('Frederick Frank', NULL, 'fred@frank.com', NULL),
('Erik Hazelhoff Roelfzema', NULL, 'erik@roelfzema.com', NULL),
('Edmond Rostand', NULL, 'edmond@rostand.com', NULL);

INSERT INTO exercise_sql_extension1.Director (people_fk) VALUES
(1), (2), (3), (4), (5), (6), (7), (8), (9), (10);

INSERT INTO exercise_sql_extension1.Star (people_fk) VALUES
(11), (12), (13), (14), (15), (16), (17), (18), (19), (20);

INSERT INTO exercise_sql_extension1.Writer (people_fk) VALUES
(21), (2), (22), (4), (23), (24), (7), (25), (9), (26);

INSERT INTO exercise_sql_extension1.Films (title, year, genre, score, director_fk, star_fk, writer_fk) VALUES 
('2001: A Space Odyssey', 1968, 'Science Fiction', 10, 1, 1, 21),
('Star Wars: A New Hope', 1977, 'Science Fiction', 7, 2, 2, 2),
('To Kill A Mockingbird', 1962, 'Drama', 10, 3, 3, 22),
('Titanic', 1997, 'Romance', 5, 4, 4, 4),
('Dr Zhivago', 1965, 'Historical', 8, 5, 5, 23),
('El Cid', 1961, 'Historical', 6, 6, 6, 24),
('Voyage to Cythera', 1984, 'Drama', 8, 7, 7, 7),
('Soldier of Orange', 1977, 'Thriller', 8, 8, 8, 25),
('Three Colours: Blue', 1993, 'Drama', 8, 9, 9, 9),
('Cyrano de Bergerac', 1990, 'Historical', 9, 10, 10, 26);
*/



/* Show the title and director name for all films */
SELECT f.title, p.name AS "Director" FROM exercise_sql_extension1.films f
INNER JOIN exercise_sql_extension1.director d ON d.id = f.director_fk
INNER JOIN exercise_sql_extension1.people p ON p.id = d.people_fk;

/* Show the title, director and star name for all films */
SELECT f.title, pd.name AS "Director", ps.name AS "Star" FROM exercise_sql_extension1.films f 
INNER JOIN exercise_sql_extension1.director d ON d.id = f.director_fk 
INNER JOIN exercise_sql_extension1.star s ON s.id = f.star_fk
INNER JOIN exercise_sql_extension1.people pd ON pd.id = d.people_fk 
INNER JOIN exercise_sql_extension1.people ps ON ps.id = s.people_fk;

/* Show the title of films where the director is from the USA */
SELECT f.title FROM exercise_sql_extension1.films f
INNER JOIN exercise_sql_extension1.director d ON d.id = f.director_fk
INNER JOIN exercise_sql_extension1.people p ON p.id = d.people_fk
WHERE p.country = 'USA';

/* Show only those films where the writer and the director are the same person */
SELECT f.title FROM exercise_sql_extension1.films f
INNER JOIN exercise_sql_extension1.director d ON d.id = f.director_fk
INNER JOIN exercise_sql_extension1.writer w ON w.id = f.writer_fk
INNER JOIN exercise_sql_extension1.people pd ON pd.id = d.people_fk
INNER JOIN exercise_sql_extension1.people pw ON pw.id = w.people_fk
WHERE pd.name = pw.name;

/* Show directors and film titles for films with a score of 8 or higher */
SELECT p.name AS "Director", f.title FROM exercise_sql_extension1.films f
INNER JOIN exercise_sql_extension1.director d ON d.id = f.director_fk
INNER JOIN exercise_sql_extension1.people p ON p.id = d.people_fk
WHERE f.score >= 8;


/* Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables. */
SELECT p.name AS "Star", f.title, f.score FROM exercise_sql_extension1.films f
INNER JOIN exercise_sql_extension1.star s ON s.id = f.star_fk
INNER JOIN exercise_sql_extension1.people p ON p.id = s.people_fk
WHERE f.score < 8;

SELECT s.name AS "Star", w.name AS "Writer", f.title FROM exercise_sql.films f 
RIGHT JOIN exercise_sql.star s ON s.id = f.star_fk
RIGHT JOIN exercise_sql.writer w ON w.id = f.writer_fk
WHERE s.name LIKE 'G%' AND w.name LIKE 'E%';

SELECT ps.name AS "Start", pw.name AS "Writer", f.title FROM exercise_sql_extension1.films f
INNER JOIN exercise_sql_extension1.star s ON s.id = f.star_fk
INNER JOIN exercise_sql_extension1.writer w ON w.id = f.writer_fk
INNER JOIN exercise_sql_extension1.people ps ON ps.id = s.people_fk
INNER JOIN exercise_sql_extension1.people pw ON pw.id = w.people_fk
WHERE ps.name LIKE 'G%' AND pw.name LIKE 'E%';