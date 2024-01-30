
--Creating Tables

CREATE TABLE Film (
id serial PRIMARY KEY,
Title VARCHAR(99),
Genre VARCHAR(50),
Year INTEGER,
Score INTEGER,
Director_id INTEGER,
Star_id INTEGER,
Writer_id INTEGER
)

CREATE TABLE Director (
id serial PRIMARY KEY,
Name VARCHAR(99),
Country VARCHAR(99)
)

CREATE TABLE Star (
id serial PRIMARY KEY,
Name VARCHAR(99),
DOB VARCHAR(15)
)

CREATE TABLE Writer (
id serial PRIMARY KEY,
Name VARCHAR(99),
Email VARCHAR(99)
)

--Populated through table

--Show the title and director name for all films
SELECT film.title, director.name AS director
from film
JOIN director ON film.director_id = director.id

--Show the title, director and star name for all films
SELECT Film.Title, Director.Name AS Director, Star.Name AS Star
FROM Film
JOIN Director ON Film.Director_id = Director.id
JOIN Star ON Film.Star_id = Star.id;

--Show the title of films where the director is from the USA
SELECT Film.Title
FROM Film
JOIN Director ON Film.Director_id = Director.id
WHERE Director.Country = 'USA';

--Show only those films where the writer and the director are the same person
SELECT Film.Title
FROM Film
JOIN Director ON Film.Director_id = Director.id
JOIN Writer ON Film.Writer_id = Writer.id
WHERE Director.id = Writer.id;

--Show directors and film titles for films with a score of 8 or higher
SELECT Film.Title, Director.name AS Director
FROM Film
JOIN Director ON Film.Director_id = Director.id
where film.score > 7

--Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.
--Shows Title, Director and writer
SELECT Film.Title, Director.Name AS Director, Writer.Name AS Writer
FROM Film
JOIN Director ON Film.Director_id = Director.id
JOIN Writer ON Film.Writer_id = Writer.id;

--Shows Title and star from movies made after 2000
SELECT Film.Title, Star.Name AS Star
FROM Film
JOIN Star ON Film.Star_id = Star.id
WHERE Film.Year > 2000;

--shows title, director and writer for films with a score of 7 or lower
SELECT Film.Title, Director.Name AS Director, Writer.Name AS Writer
FROM Film
JOIN Director ON Film.Director_id = Director.id
JOIN Writer ON Film.Writer_id = Writer.id
WHERE Film.Score <= 7;

--shows director with total number of films directed
SELECT Director.Name, COUNT(Film.id) AS TotalFilmsDirected
FROM Director
LEFT JOIN Film ON Director.id = Film.Director_id
GROUP BY Director.id, Director.Name;

--shows name and country of all directors
SELECT Name, Country
FROM Director;

--Show the names of stars, titles of films, and genres for all films:
SELECT Star.Name AS Star, Film.Title, Film.Genre
FROM Film
JOIN Star ON Film.Star_id = Star.id;