DROP TABLE IF EXISTS films CASCADE;
DROP TABLE IF EXISTS directors CASCADE;
DROP TABLE IF EXISTS stars CASCADE;
DROP TABLE IF EXISTS writers CASCADE;

CREATE TABLE directors (
	"id" SERIAL PRIMARY KEY,
	"name" VARCHAR(255),
	"country" VARCHAR(255)
);

CREATE TABLE stars (
	"id" SERIAL PRIMARY KEY,
	"name" VARCHAR(255),
	"date_of_birth" DATE
);

CREATE TABLE writers (
	"id" SERIAL PRIMARY KEY,
	"name" VARCHAR(255),
	"email" VARCHAR(255)
);


CREATE TABLE films (
	"id" SERIAL PRIMARY KEY,
	"director_id" INT,
	"star_id" INT,
	"writer_id" INT,
	"title" VARCHAR(255),
	"genre" VARCHAR(50),
	"release_year" INT,
	"score" INT
);

ALTER TABLE films ADD FOREIGN KEY ("director_id") REFERENCES directors("id");
ALTER TABLE films ADD FOREIGN KEY ("star_id") REFERENCES stars("id");
ALTER TABLE films ADD FOREIGN KEY ("writer_id") REFERENCES writers("id");

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
('Jean-Paul Rappeneau', 'France'),
('Ridley Scott', 'UK'),
('Christopher Nolan', 'UK'),
('Alfred Hitchcock', 'UK'),
('Steven Spielberg', 'USA');


INSERT INTO stars (name, date_of_birth) VALUES 
('Keir Dullea', '1936-05-30'),
('Mark Hamill', '1951-09-25'),
('Gregory Peck', '1916-04-05'),
('Leonardo DiCaprio', '1974-11-11'),
('Julie Christie', '1940-04-14'),
('Charlton Heston', '1923-10-04'),
('Manos Katrakis', '1908-08-14'),
('Rutger Hauer', '1944-01-23'),
('Juliette Binoche', '1964-03-09'),
('Gerard Depardieu', '1948-12-27'),
('Harrison Ford', '1942-07-13'),
('Christian Bale', '1974-01-30'),
('Tom Hanks', '1956-07-09'),
('Audrey Hepburn', '1929-05-04');


INSERT INTO writers (name, email) VALUES 
('Arthur C Clarke', 'arthur@clarke.com'),
('George Lucas', 'george@email.com'),
('Harper Lee', 'harper@lee.com'),
('James Cameron', 'james@cameron.com'),
('Boris Pasternak', 'boris@boris.com'),
('Frederick Frank', 'fred@frank.com'),
('Theodoros Angelopoulos', 'theo@angelopoulos.com'),
('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com'),
('Krzysztof Kieslowski', 'email@email.com'),
('Edmond Rostand', 'edmond@rostand.com'),
('Philip K. Dick', 'philip@k.dick.com'),
('Jonathan Nolan', 'jonathan@nolan.com'),
('Stephen King', 'stephen@king.com'),
('Agatha Christie', 'agatha@christie.com');


INSERT INTO films (title, director_id, star_id, writer_id, genre, release_year, score)
VALUES ('2001: A Space Odyssey', 
        (SELECT id FROM directors WHERE name = 'Stanley Kubrick'), 
        (SELECT id FROM stars WHERE name = 'Keir Dullea'), 
        (SELECT id FROM writers WHERE name = 'Arthur C Clarke'), 
        'Science Fiction', 1968, 10);

INSERT INTO films (title, director_id, star_id, writer_id, genre, release_year, score)
VALUES ('Star Wars: A New Hope', 
        (SELECT id FROM directors WHERE name = 'George Lucas'), 
        (SELECT id FROM stars WHERE name = 'Mark Hamill'), 
        (SELECT id FROM writers WHERE name = 'George Lucas'), 
        'Science Fiction', 1977, 7);

INSERT INTO films (title, director_id, star_id, writer_id, genre, release_year, score)
VALUES ('To Kill A Mockingbird', 
        (SELECT id FROM directors WHERE name = 'Robert Mulligan'), 
        (SELECT id FROM stars WHERE name = 'Gregory Peck'), 
        (SELECT id FROM writers WHERE name = 'Harper Lee'), 
        'Drama', 1962, 10);

INSERT INTO films (title, director_id, star_id, writer_id, genre, release_year, score)
VALUES ('Titanic', 
        (SELECT id FROM directors WHERE name = 'James Cameron'), 
        (SELECT id FROM stars WHERE name = 'Leonardo DiCaprio'), 
        (SELECT id FROM writers WHERE name = 'James Cameron'), 
        'Romance', 1997, 5);

INSERT INTO films (title, director_id, star_id, writer_id, genre, release_year, score)
VALUES ('Dr Zhivago', 
        (SELECT id FROM directors WHERE name = 'David Lean'), 
        (SELECT id FROM stars WHERE name = 'Julie Christie'), 
        (SELECT id FROM writers WHERE name = 'Boris Pasternak'), 
        'Historical', 1965, 8);

INSERT INTO films (title, director_id, star_id, writer_id, genre, release_year, score)
VALUES ('El Cid', 
        (SELECT id FROM directors WHERE name = 'Anthony Mann'), 
        (SELECT id FROM stars WHERE name = 'Charlton Heston'), 
        (SELECT id FROM writers WHERE name = 'Frederick Frank'), 
        'Historical', 1961, 6);

INSERT INTO films (title, director_id, star_id, writer_id, genre, release_year, score)
VALUES ('Voyage to Cythera', 
        (SELECT id FROM directors WHERE name = 'Theodoros Angelopoulos'), 
        (SELECT id FROM stars WHERE name = 'Manos Katrakis'), 
        (SELECT id FROM writers WHERE name = 'Theodoros Angelopoulos'), 
        'Drama', 1984, 8);

INSERT INTO films (title, director_id, star_id, writer_id, genre, release_year, score)
VALUES ('Soldier of Orange', 
        (SELECT id FROM directors WHERE name = 'Paul Verhoeven'), 
        (SELECT id FROM stars WHERE name = 'Rutger Hauer'), 
        (SELECT id FROM writers WHERE name = 'Erik Hazelhoff Roelfzema'), 
        'Thriller', 1977, 8);

INSERT INTO films (title, director_id, star_id, writer_id, genre, release_year, score)
VALUES ('Three Colours: Blue', 
        (SELECT id FROM directors WHERE name = 'Krzysztof Kieslowski'), 
        (SELECT id FROM stars WHERE name = 'Juliette Binoche'), 
        (SELECT id FROM writers WHERE name = 'Krzysztof Kieslowski'), 
        'Drama', 1993, 8);

INSERT INTO films (title, director_id, star_id, writer_id, genre, release_year, score)
VALUES ('Cyrano de Bergerac', 
        (SELECT id FROM directors WHERE name = 'Jean-Paul Rappeneau'), 
        (SELECT id FROM stars WHERE name = 'Gerard Depardieu'), 
        (SELECT id FROM writers WHERE name = 'Edmond Rostand'), 
        'Historical', 1990, 9);


INSERT INTO films (title, director_id, star_id, writer_id, genre, release_year, score)
VALUES ('Galactic Odyssey', 
        (SELECT id FROM directors WHERE name = 'George Lucas'), 
        (SELECT id FROM stars WHERE name = 'Keir Dullea'), 
        (SELECT id FROM writers WHERE name = 'George Lucas'), 
        'Science Fiction', 1980, 8);

INSERT INTO films (title, director_id, star_id, writer_id, genre, release_year, score)
VALUES ('Mars Uprising', 
        (SELECT id FROM directors WHERE name = 'Ridley Scott'), 
        (SELECT id FROM stars WHERE name = 'Mark Hamill'), 
        (SELECT id FROM writers WHERE name = 'Arthur C Clarke'), 
        'Science Fiction', 1995, 7);

INSERT INTO films (title, director_id, star_id, writer_id, genre, release_year, score)
VALUES ('The Future King', 
        (SELECT id FROM directors WHERE name = 'Robert Mulligan'), 
        (SELECT id FROM stars WHERE name = 'Harrison Ford'), 
        (SELECT id FROM writers WHERE name = 'Harper Lee'), 
        'Drama', 1999, 9);

INSERT INTO films (title, director_id, star_id, writer_id, genre, release_year, score)
VALUES ('Blade Runner Redux', 
        (SELECT id FROM directors WHERE name = 'Ridley Scott'), 
        (SELECT id FROM stars WHERE name = 'Rutger Hauer'), 
        (SELECT id FROM writers WHERE name = 'Philip K. Dick'), 
        'Thriller', 1982, 10);

INSERT INTO films (title, director_id, star_id, writer_id, genre, release_year, score)
VALUES ('Dreamscape', 
        (SELECT id FROM directors WHERE name = 'Christopher Nolan'), 
        (SELECT id FROM stars WHERE name = 'Leonardo DiCaprio'), 
        (SELECT id FROM writers WHERE name = 'Jonathan Nolan'), 
        'Science Fiction', 2010, 8);
        
INSERT INTO films (title, director_id, star_id, writer_id, genre, release_year, score)
VALUES ('Mystery on the Orient Express', 
        (SELECT id FROM directors WHERE name = 'Alfred Hitchcock'), 
        (SELECT id FROM stars WHERE name = 'Audrey Hepburn'), 
        (SELECT id FROM writers WHERE name = 'Agatha Christie'), 
        'Mystery', 1974, 9);

INSERT INTO films (title, director_id, star_id, writer_id, genre, release_year, score)
VALUES ('The Haunting of Hill House', 
        (SELECT id FROM directors WHERE name = 'Steven Spielberg'), 
        (SELECT id FROM stars WHERE name = 'Julie Christie'), 
        (SELECT id FROM writers WHERE name = 'Stephen King'), 
        'Horror', 1983, 8);

INSERT INTO films (title, director_id, star_id, writer_id, genre, release_year, score)
VALUES ('Lost in Time', 
        (SELECT id FROM directors WHERE name = 'Christopher Nolan'), 
        (SELECT id FROM stars WHERE name = 'Tom Hanks'), 
        (SELECT id FROM writers WHERE name = 'Jonathan Nolan'), 
        'Science Fiction', 2007, 7);

INSERT INTO films (title, director_id, star_id, writer_id, genre, release_year, score)
VALUES ('The Cosmic Adventure', 
        (SELECT id FROM directors WHERE name = 'George Lucas'), 
        (SELECT id FROM stars WHERE name = 'Harrison Ford'), 
        (SELECT id FROM writers WHERE name = 'Arthur C Clarke'), 
        'Science Fiction', 1985, 8);

INSERT INTO films (title, director_id, star_id, writer_id, genre, release_year, score)
VALUES ('The Last Explorer', 
        (SELECT id FROM directors WHERE name = 'James Cameron'), 
        (SELECT id FROM stars WHERE name = 'Leonardo DiCaprio'), 
        (SELECT id FROM writers WHERE name = 'James Cameron'), 
        'Adventure', 2000, 6);

--QUERIES
-- Show the title and director name for all films
SELECT f."title" AS "film", d."name" AS "director"
FROM films f JOIN directors d
ON f."director_id" = d."id";

-- Show the title, director and star name for all films
SELECT f."title" AS "film", d."name" AS "director", s."name" AS "star"
FROM films f JOIN directors d ON f."director_id" = d."id"
JOIN stars s ON f."star_id" = s."id";

-- Show the title of films where the director is from the USA
SELECT f."title"
FROM films f JOIN directors d ON f."director_id" = d."id"
WHERE d.country LIKE 'USA';

-- Show only those films where the writer and the director are the same person
SELECT f."title" AS "film", w."name" AS "writer", d."name" AS "director"
FROM films f JOIN writers w ON f."writer_id" = w."id"
JOIN directors d ON w."name" = d."name";

-- Show directors and film titles for films with a score of 8 or higher
SELECT f."title" AS "film", d."name" AS "director"
FROM films f JOIN directors d ON f."director_id" = d."id"
WHERE f."score" >= 8;

-- MAKE AT LEAST 5 MORE QUERIES TO DEMONSTRATE YOUR UNDERSTANDING OF JOINS, AND OTHER RELATIONSHIPS BETWEEN TABLES--
----------------------------------------------------------------------------------------------------------------------------

-- Show directors ranked by average scores of their films
SELECT d."name" AS "director", AVG(f."score") AS "average_score"
FROM films f JOIN directors d ON f."director_id" = d."id"
GROUP BY d."name"
ORDER BY "average_score" DESC;

-- Show average film score for each generation of stars: Baby Boomer, Generation X, Millennials, Generation Z
SELECT
CASE
	WHEN s."date_of_birth" < '1946-01-01' THEN 'Pre-Boomer'
	WHEN s."date_of_birth" BETWEEN '1946-01-01' AND '1964-12-31' THEN 'Baby Boomers'
	WHEN s."date_of_birth" BETWEEN '1965-01-01' AND '1980-12-31' THEN 'Gen X'
	WHEN s."date_of_birth" BETWEEN '1981-01-01' AND '1996-12-31' THEN 'Millennials'
	WHEN s."date_of_birth" BETWEEN '1997-01-01' AND '2012-12-31' THEN 'Gen Z'
	ELSE 'Post-Zoomer'
END AS "generation",
AVG(f."score") AS "average_score"
FROM stars s
JOIN films f ON s."id" = f."star_id"
GROUP BY "generation"
ORDER BY "average_score" DESC;

-- Show age of stars at time of their film's release
SELECT
	s."name" AS "star",
	f."title" AS "film",
	f."release_year",
	f."release_year" - EXTRACT(YEAR FROM s."date_of_birth") AS "age_at_release"
FROM films f
JOIN stars s ON f."star_id" = s."id"
ORDER BY "age_at_release" ASC;

-- Show average age of stars at film's release based on director's nationality
SELECT
	d."country" as "director_nationality",
	AVG(f."release_year" - EXTRACT(YEAR FROM s."date_of_birth")) AS "average_star_age"
FROM directors d
JOIN films f ON d."id" = f."director_id"
JOIN stars s ON f."star_id" = s."id"
GROUP BY "director_nationality"
ORDER BY "average_star_age" ASC;

-- Show avere score for each genre by nationality of director
SELECT d."country", f."genre", ROUND(AVG(f."score"), 2) AS "average_score"
FROM films f
JOIN directors d ON f."director_id" = d."id"
GROUP BY f."genre", d."country"
ORDER BY f."genre" ASC, "average_score" DESC;
