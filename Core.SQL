-- 1: Create tables
-- CREATE TABLE film (
-- id serial PRIMARY KEY,
-- title VARCHAR(50),
-- _year INTEGER,
-- genre VARCHAR(50),
-- score INTEGER,
-- star_id INTEGER,
-- writer_id INTEGER,
-- director_id INTEGER,
-- FOREIGN KEY (star_id) REFERENCES star(star_id),
-- FOREIGN KEY (writer_id) REFERENCES writer(writer_id),
-- FOREIGN KEY (director_id) REFERENCES director(director_id)

-- )

-- CREATE TABLE star  (
-- star_id serial PRIMARY KEY,
-- name VARCHAR(50),
-- star_dob VARCHAR(50)
-- )

-- CREATE TABLE writer  (
-- writer_id serial PRIMARY KEY,
-- name VARCHAR(50),
-- email VARCHAR(50)
-- )

-- CREATE TABLE director  (
-- director_id serial PRIMARY KEY,
-- name VARCHAR(50),
-- country VARCHAR(50)
-- )

-- 2: Inserting
-- INSERT INTO film (title, _year, genre, score)
-- VALUES ('2001: A Space Odyssey', 1968, 'Science Fiction', 10)

-- INSERT INTO film (title, _year, genre, score)
-- VALUES ('Star Wars: A New Hope', 1977, 'Science Fiction', 7);

-- INSERT INTO film (title, _year, genre, score)
-- VALUES ('To Kill A Mockingbird', 1962, 'Drama', 10);

INSERT INTO film (title, _year, genre, score)
VALUES ('Titanic', 1997, 'Romance', 5);


-- Query for inserting 'Dr Zhivago'
INSERT INTO film (title, _year, genre, score)
VALUES ('Dr Zhivago', 1965, 'Historical', 8);

-- Query for inserting 'El Cid'
INSERT INTO film(title, _year, genre, score)
VALUES ('El Cid', 1961, 'Historical', 6);

-- Query for inserting 'Voyage to Cythera'
INSERT INTO film (title, _year, genre, score)
VALUES ('Voyage to Cythera', 1984, 'Drama', 8);

-- Query for inserting 'Soldier of Orange'
INSERT INTO film (title, _year, genre, score)
VALUES ('Soldier of Orange', 1977, 'Thriller', 8);

-- Query for inserting 'Three Colours: Blue'
INSERT INTO film (title, _year, genre, score)
VALUES ('Three Colours: Blue', 1993, 'Drama', 8);

-- Query for inserting 'Cyrano de Bergerac'
INSERT INTO film (title, _year, genre, score)
VALUES ('Cyrano de Bergerac', 1990, 'Historical', 9);

-- Insert in star:
INSERT INTO star (name, star_dob)
VALUES ('Keir Dullea', '30/05/1936');

INSERT INTO star (name, star_dob)
VALUES ('Mark Hamill', '25/09/1951');

INSERT INTO star (name, star_dob)
VALUES ('Gregory Peck', '05/04/1916');

INSERT INTO star (name, star_dob)
VALUES ('Leonardo DiCaprio', '11/11/1974');

INSERT INTO star (name, star_dob)
VALUES ('Julie Christie', '14/04/1940');

INSERT INTO star (name, star_dob)
VALUES ('Charlton Heston', '04/10/1923');

INSERT INTO star (name, star_dob)
VALUES ('Manos Katrakis', '14/08/1908');

INSERT INTO star (name, star_dob)
VALUES ('Rutger Hauer', '23/01/1944');

INSERT INTO star (name, star_dob)
VALUES ('Juliette Binoche', '09/03/1964');

INSERT INTO star (name, star_dob)
VALUES ('Gerard Depardieu', '27/12/1948');

-- Insert in writer:
INSERT INTO writer (name, email)
VALUES ('Arthur C Clarke', 'arthur@clarke.com');

INSERT INTO writer (name, email)
VALUES ('George Lucas', 'george@email.com');

INSERT INTO writer (name, email)
VALUES ('Harper Lee', 'harper@lee.com');

INSERT INTO writer (name, email)
VALUES ('James Cameron', 'james@cameron.com');

INSERT INTO writer (name, email)
VALUES ('Boris Pasternak', 'boris@boris.com');

INSERT INTO writer (name, email)
VALUES ('Frederick Frank', 'fred@frank.com');

INSERT INTO writer (name, email)
VALUES ('Theodoros Angelopoulos', 'theo@angelopoulos.com');

INSERT INTO writer (name, email)
VALUES ('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com');

INSERT INTO writer (name, email)
VALUES ('Krzysztof Kieslowski', 'email@email.com');

INSERT INTO writer (name, email)
VALUES ('Edmond Rostand', 'edmond@rostand.com');

-- Insert in director:
INSERT INTO director (name, country)
VALUES ('Stanley Kubrick', 'USA');

INSERT INTO director (name, country)
VALUES ('George Lucas', 'USA');

INSERT INTO director (name, country)
VALUES ('Robert Mulligan', 'USA');

INSERT INTO director (name, country)
VALUES ('James Cameron', 'Canada');

INSERT INTO director (name, country)
VALUES ('David Lean', 'UK');

INSERT INTO director (name, country)
VALUES ('Anthony Mann', 'USA');

INSERT INTO director (name, country)
VALUES ('Theodoros Angelopoulos', 'Greece');

INSERT INTO director (name, country)
VALUES ('Paul Verhoeven', 'Netherlands');

INSERT INTO director (name, country)
VALUES ('Krzysztof Kieslowski', 'Poland');

INSERT INTO director (name, country)
VALUES ('Jean-Paul Rappeneau', 'France');


-- 3. Queries to return:

-- Show the title and director name for all films
SELECT f.title, d."name"
FROM film f
JOIN director d ON f.id = d.director_id;

-- Show the title, director and star name for all films
SELECT f.title, d."name" as director, s."name" as star
FROM film f
JOIN director d ON f.id = d.director_id
JOIN star s ON f.id = s.star_id;

-- Show the title of films where the director is from the USA
SELECT f.title
FROM film f
JOIN director d ON f.id = d.director_id
WHERE d.country = 'USA';

-- Show only those films where the writer and the director are the same person
SELECT f.title
FROM film f
JOIN director d ON f.id = d.director_id
JOIN writer w ON f.writer_id = w.writer_id
WHERE d.name = w.name;


-- Show directors and film titles for films with a score of 8 or higher
SELECT f.title, d."name" as director
FROM film f
JOIN director d ON f.id = d.director_id
WHERE f.score >= 8;


-- Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.
SELECT f.title, f.genre, d.name
FROM film f
JOIN director d ON f.id = d.director_id;

SELECT f.title, d.name, s."name", s.star_dob
FROM film f
JOIN director d ON f.id = d.director_id
JOIN star s ON f.star_id = s.star_id
WHERE f._year > 1980;

SELECT f.title, d.name, s."name", s.star_dob, w."name"
FROM film f
JOIN director d ON f.id = d.director_id
JOIN star s ON f.star_id = s.star_id
JOIN writer w ON f.writer_id = w.writer_id
WHERE f._year > 1970;

SELECT d.name as director
FROM director d
LEFT JOIN film f ON d.director_id = f.director_id
WHERE f.director_id IS NULL;

SELECT d.name as director
FROM director d
LEFT JOIN film f ON d.director_id = f.director_id
WHERE f.director_id IS NULL;

SELECT d.name as director
FROM director d
LEFT JOIN film f ON d.director_id = f.director_id
WHERE f.director_id IS NOT NULL;

