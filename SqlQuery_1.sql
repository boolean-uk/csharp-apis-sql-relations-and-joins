-- Core Criteria

--Film, Director, Star and Writer

-------------Normalisation_________

-- CREATE TABLE Film (
-- filmID serial primary key,
-- directorID INT not null,
-- starID INT not null,
-- writerID INT not null,
-- title VARCHAR(255) not null,
-- year INT not null,
-- genre VARCHAR(255) not null,
-- score INT not null
-- );

-- CREATE TABLE Director (
-- directorID serial primary key,
-- name VARCHAR(255) not null,
-- country VARCHAR(255) not null
-- );

-- CREATE TABLE Star (
-- StarID serial primary key,
-- name VARCHAR(255) not null,
-- DOB  DATE NOT NULL
-- );

-- CREATE TABLE Writer (
-- WriterID serial primary key,
-- name VARCHAR(255) not null,
-- email VARCHAR(255) not null
-- );


-- INSERT INTO Film (directorID, starID, writerID, title, year, genre, score) VALUES 
-- (1, 1, 1,'2001: A Space Odyssey', 1968, 'Science Fiction', 10),
-- (2, 2, 2,'Star Wars: A New Hope',  1977, 'Science Fiction', 7),
-- (3, 3, 3,'To Kill A Mockingbird',  1962, 'Drama', 10),
-- (4, 4, 4,'Titanic',  1997, 'Romance', 5),
-- (5, 5, 5,'Dr Zhivago',  1965, 'Historical', 8),
-- (6, 6, 6,'El Cid',  1961, 'Historical', 6),
-- (7, 7, 7,'Voyage to Cythera',  1984, 'Drama', 8),
-- (8, 8, 8,'Soldier of Orange',  1977, 'Thriller', 8),
-- (9, 9, 9,'Three Colours: Blue',  1993, 'Drama', 8),
-- (10, 10, 10,'Cyrano de Bergerac', 1990, 'Historical', 9);

-- INSERT INTO Director (name, country) VALUES 
-- ('Stanley Kubrick', 'USA'),
-- ('George Lucas', 'USA'),
-- ('Robert Mulligan', 'USA'),
-- ('James Cameron', 'Canada'),
-- ('David Lean', 'UK'),
-- ('Anthony Mann', 'USA'),
-- ('Theodoros Angelopoulos', 'Greece'),
-- ('Paul Verhoeven', 'Netherlands'),
-- ('Krzysztof Kieslowski', 'Poland'),
-- ('Jean-Paul Rappeneau', 'France');

-- INSERT INTO Star (name, DOB) VALUES 
-- ('Keir Dullea', '1936/05/30'),
-- ('Mark Hamill', '1951/09/25'),
-- ('Gregory Peck', '1916/04/05'),
-- ('Leonardo DiCaprio', '1974/11/11'),
-- ('Julie Christie', '1940/04/14'),
-- ('Charlton Heston', '1923/10/04'),
-- ('Manos Katrakis', '1908/08/14'),
-- ('Rutger Hauer', '1944/01/23'),
-- ('Juliette Binoche', '1964-03-09'),
-- ('Gerard Depardieu', '1948-12-27');

-- INSERT INTO Writer (name, email) VALUES 
-- ('Arthur C Clarke', 'arthur@clarke.com'),
-- ('George Lucas', 'george@email.com'),
-- ('Harper Lee', 'harper@lee.com'),
-- ('James Cameron', 'james@cameron.com'),
-- ('Boris Pasternak', 'boris@boris.com'),
-- ('Frederick Frank', 'fred@frank.com'),
-- ('Theodoros Angelopoulos', 'theo@angelopoulos.com'),
-- ('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com'),
-- ('Krzysztof Kieslowski', 'email@email.com'),
-- ('Edmond Rostand', 'edmond@rostand.com');

------------End of Normalisation and insertion______________

-- Query 1

SELECT Film.title, Director.name FROM Film 
JOIN Director ON Film.directorID = Director.directorID;

-- Query 2

SELECT Film.title, Director.name, Star.name FROM Film 
JOIN Director ON Film.directorID = Director.directorID
JOIN Star ON Film.starID = Star.starID;

-- Query 3

SELECT Film.title FROM Film
JOIN Director ON Film.directorID = Director.directorID
WHERE Director.country = 'USA';

-- Query 4

SELECT Film.title, Director.name, Writer.name FROM Film
JOIN Director ON Film.directorID = Director.directorID
JOIN Writer ON Film.writerID = Writer.writerID
WHERE Director.name = Writer.name;

-- Query 5

SELECT Film.title, Director.name, Film.score FROM Film 
JOIN Director ON Film.directorID = Director.directorID
WHERE Film.score >= 8;

-- Query 6

SELECT Film.title, Director.name, Film.score FROM Film 
INNER JOIN Director ON Film.directorID = Director.directorID;


SELECT Film.title FROM Film
JOIN Director ON Film.directorID = Director.directorID;


SELECT Film.title FROM Film
LEFT JOIN Director ON Film.directorID = Director.directorID
WHERE Film.score >= 8;


SELECT Film.title, Director.name, Star.name FROM Film 
INNER JOIN Director ON Film.directorID = Director.directorID
JOIN Star ON Film.starID = Star.starID;

SELECT Film.title, Director.name FROM Director 
LEFT JOIN Film ON Film.directorID = Director.directorID
WHERE Director.country = 'UK';

--------------End of Core------------------
--------------Extension 1------------------

--Refactor the database tables so that the Actors, Directors and Writers all identify people (using a Foreign Key) that are present in a --single People table

-- I do not understand the exercise

--------------Extension 2------------------

-- CREATE TABLE CastList (
-- castID serial primary key,
-- name VARCHAR(255) not null,
-- filmID INT not null
-- );

-- INSERT INTO CastList (name, filmID) VALUES 
-- ('Ker Dua', 1),
-- ('Mark Ham', 2),
-- ('Greg Peck', 3),
-- ('Leonardo DiCap', 4),
-- ('Jul Chris', 5),
-- ('Char Hest', 6),
-- ('Manos Rakis', 7),
-- ('Rutger Hauer', 8),
-- ('Julie Bin', 9),
-- ('Gerard Deu', 10);


-- Shows Cast of a film , in this case 2001: A Space Odyssey with ID = 1
SELECT Film.title, CastList.name From Film
JOIN CastList ON Film.filmID = CastList.filmID 
WHERE Film.filmID = 1;
