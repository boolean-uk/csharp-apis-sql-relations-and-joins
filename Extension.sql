-- Task 1

-- Create people table and insert values
CREATE TABLE people (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  country VARCHAR (100),
  DOB DATE,
  email VARCHAR(100)
);

INSERT INTO people (name, country, DOB, email)
VALUES
  ('Stanley Kubrick', 'USA', NULL, NULL),
  ('George Lucas', 'USA', NULL, 'george@email.com'),
  ('Robert Mulligan', 'USA', NULL, NULL),
  ('James Cameron', 'Canada', NULL, 'james@cameron.com'),
  ('David Lean', 'UK', NULL, NULL),
  ('Anthony Mann', 'USA', NULL, NULL),
  ('Theodoros Angelopoulos', 'Greece', NULL, 'theo@angelopoulos.com'),
  ('Paul Verhoeven', 'Netherlands', NULL, NULL),
  ('Krzysztof Kieslowski', 'Poland', NULL, 'email@email.com'),
  ('Jean-Paul Rappeneau', 'France', NULL, NULL),
  ('Keir Dullea', NULL, '1936-05-30', NULL),
  ('Mark Hamill', NULL, '1951-09-25', NULL),
  ('Gregory Peck', NULL, '1916-04-05', NULL),
  ('Leonardo DiCaprio', NULL, '1974-11-11', NULL),
  ('Julie Christie', NULL, '1940-04-14', NULL),
  ('Charlton Heston', NULL, '1923-10-04', NULL),
  ('Manos Katrakis', NULL, '1908-08-14', NULL),
  ('Rutger Hauer', NULL, '1944-01-23', NULL),
  ('Juliette Binoche', NULL, '1964-03-09', NULL),
  ('Gerard Depardieu', NULL, '1948-12-27', NULL),
  ('Arthur C Clarke', NULL, NULL, 'arthur@clarke.com'),
  ('Harper Lee', NULL, NULL, 'harper@lee.com'),
  ('Boris Pasternak', NULL, NULL, 'boris@boris.com'),
  ('Frederick Frank', NULL, NULL, 'fred@frank.com'),
  ('Erik Hazelhoff Roelfzema', NULL, NULL, 'erik@roelfzema.com'),
  ('Edmond Rostand', NULL, NULL, 'edmond@rostand.com');

-- Create films table and insert values
CREATE TABLE films(
  id SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  year INTEGER NOT NULL,
  genre VARCHAR(100) NOT NULL,
  score INTEGER NOT NULL,
);

INSERT INTO films (title, year, genre, score)
VALUES
  ('2001: A Space Odyssy', 1968, 'Science Fiction', 10),
  ('Star Wars: A New Hope', 1977, 'Science Fiction', 7),
  ('To Kill A Mockingbird', 1962, 'Drama', 10),
  ('Titanic', 1997, 'Romance', 5),
  ('Dr Zhivago', 1965, 'Historical', 8),
  ('El Cid', 1961, 'Historical', 6),
  ('Voyage to Cythera', 1984, 'Drama', 8),
  ('Soldier of Orange', 1977, 'Thriller', 8),
  ('Three Colours: Blue', 1993, 'Drama', 8),
  ('Cyrano de Bergerac', 1990, 'Historical', 9);

-- Create roles table and insert values
CREATE TABLE roles(
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

INSERT INTO roles (name)
VALUES ('Director'), ('Star'), ('Writer');

-- Create PersonFilmRole table and insert values
CREATE TABLE PersonFilmRole (
  id SERIAL PRIMARY KEY,
  personID INTEGER NOT NULL,
  filmID INTEGER NOT NULL,
  roleID INTEGER NOT NULL,
  FOREIGN KEY (personID) REFERENCES people(id),
  FOREIGN KEY (filmID) REFERENCES films(id),
  FOREIGN KEY (roleID) REFERENCES roles(id)
);

INSERT INTO PersonFilmRole (personID, filmID, roleID )
VALUES
  (1, 1, 1),
  (11, 1, 2),
  (21, 1, 3),
  (2, 2, 1),
  (12, 2, 2),
  (2, 2, 3),
  (3, 3, 1),
  (13, 3, 2),
  (22, 3, 3),
  (4, 4, 1),
  (14, 4, 2),
  (4, 4, 3),
  (5, 5, 1),
  (15, 5, 2),
  (23, 5, 3),
  (6, 6, 1),
  (16, 6, 2),
  (24, 6, 3),
  (7, 7, 1),
  (17, 7, 2),
  (7, 7, 3),
  (8, 8, 1),
  (18, 8, 2),
  (25, 8, 3),
  (9, 9, 1),
  (19, 9, 2),
  (9, 9, 3),
  (10, 10, 1),
  (20, 10, 2),
  (26, 10, 3);


-- Queries

-- i. Show the title and director name for all films
SELECT f.title, p.name as director
FROM films f
LEFT JOIN PersonFilmRole m ON f.id = m.filmID
LEFT JOIN people p ON m.personID = p.id
WHERE m.roleID = 1
 
-- ii. Show the title, director and star name for all films
SELECT f.title, pd.name as director, ps.name as star
FROM films f
LEFT JOIN PersonFilmRole md ON f.id = md.filmID AND md.roleID = 1
LEFT JOIN people pd ON md.personID = pd.id
LEFT JOIN PersonFilmRole ms ON f.id = ms.filmID AND ms.roleID = 2
LEFT JOIN people ps ON ms.personID = ps.id
 
-- iii. Show the title of films where the director is from the USA
SELECT f.title, p.name as director, p.country
FROM films f
LEFT JOIN PersonFilmRole m ON f.id = m.filmID AND m.roleID = 1
LEFT JOIN people p ON m.personID = p.id
WHERE p.country = 'USA';

-- iv. Show only those films where the writer and the director are the same person
SELECT f.title, p.name as "Director & Writer"
FROM films f
LEFT JOIN PersonFilmRole md ON f.id = md.filmID AND md.roleID = 1
LEFT JOIN PersonFilmRole mw ON f.id = mw.filmID AND mw.roleID = 3
LEFT JOIN people p ON md.personID = p.id AND mw.personID = p.id
WHERE md.personID = mw.personID
 
-- v. Show directors and film titles for films with a score of 8 or higher
SELECT f.title, p.name as director, f.score
FROM films f
LEFT JOIN PersonFilmRole m ON f.id = m.filmID AND m.roleID = 1
LEFT JOIN people p ON m.personID = p.id
WHERE f.score >= 8;
 
-- vi. Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.
 
-- 1. Show film titles, year, writer name and email for filmes created after 1980
SELECT f.title, f.year, w.name as writer, w.email
FROM films f
LEFT JOIN PersonFilmRole m ON f.id = m.filmID AND m.roleID = 3
LEFT JOIN people w ON m.personID = w.id
WHERE f.year > 1980;

-- 2. Show all the films properties, but with the name of the director, star and writer
SELECT f.title, f.year, f.genre, f.score, d.name as director, s.name as star, w.name as writer
FROM films f
LEFT JOIN PersonFilmRole md ON f.id = md.filmID AND md.roleID = 1
LEFT JOIN people d ON md.personID = d.id
LEFT JOIN PersonFilmRole ms ON f.id = ms.filmID AND ms.roleID = 2
LEFT JOIN people s ON ms.personID = s.id
LEFT JOIN PersonFilmRole mw ON f.id = mw.filmID AND mw.roleID = 3
LEFT JOIN people w ON mw.personID = w.id

-- 3. Show film titles and stars name and DOB, but only for those film where the stars are born before 1950
SELECT f.title, s.name as star, s.DOB
FROM films f
LEFT JOIN PersonFilmRole ms ON f.id = ms.filmID AND ms.roleID = 2
LEFT JOIN people s ON ms.personID = s.id
WHERE s.DOB <= '1950-01-01';

-- 4. Show film titles, director and director country, but only for those films where the director is not from USA or UK
SELECT f.title, d.name as director, d.country
FROM films f
LEFT JOIN PersonFilmRole md ON f.id = md.filmID AND md.roleID = 1
LEFT JOIN people d ON md.personID = d.id
WHERE d.country != 'USA' AND d.country != 'UK';

-- 5. Show film titles, genre and star name, but only for those films where the genre is romance or drama
SELECT f.title, f.genre, s.name as star
FROM films f
LEFT JOIN PersonFilmRole ms ON f.id = ms.filmID AND ms.roleID = 2
LEFT JOIN people s ON ms.personID = s.id
WHERE f.genre = 'Romance' OR f.genre = 'Drama';



-- Task 2

-- Insert other actors into people
INSERT INTO people (name, country, DOB, email)
VALUES
  ('John Megna', NULL, '1952-11-09', NULL),
  ('Frank Overton', NULL, '1918-03-12', NULL),
  ('Kate Winslet', NULL, '1975-10-05', NULL),
  ('Billy Zane', NULL, '1966-02-24', NULL);

-- I reused my original three tables.
-- First, I added a 4th role to the roles table
INSERT INTO roles (name) VALUES ('Actor')

-- Second, I linked the new actors to the movies they were in
INSERT INTO PersonFilmRole (personID, filmID, roleID )
VALUES
  (27, 3, 4),
  (28, 3, 4),
  (29, 4, 4),
  (30, 4, 4);

-- Third, I created a query to list all the actors and stars in Titanic
SELECT f.title as film, a.name as cast, r.name as role
FROM films f
LEFT JOIN PersonFilmRole ma ON f.id = ma.filmID
LEFT JOIN people a ON ma.personID = a.id
LEFT JOIN roles r ON ma.roleID = r.id
WHERE f.title = 'Titanic' AND (r.name = 'Star' OR r.name = 'Actor');