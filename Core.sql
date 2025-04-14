DROP TABLE films;
DROP TABLE directors;
DROP TABLE stars;
DROP TABLE writers;

CREATE TABLE films (
id serial primary key,
title varchar(255) unique not null,
directorId int not null,
starId int not null,
writerId int not null,
year_released int not null,
genre varchar(255) not null,
score int not null)
;

CREATE TABLE directors (
id serial primary key,
name varchar(255) unique not null,
country varchar(255) not null)
;

CREATE TABLE stars (
id serial primary key,
name varchar(255) unique not null,
dob date not null)
;

CREATE TABLE writers (
id serial primary key,
name varchar(255) unique not null,
email varchar(255) not null)
;

INSERT INTO writers (name, email)  VALUES 
('Arthur C Clarke', 'arthur@clarke.com'),
('George Lucas','george@email.com'),
('Harper Lee','harper@lee.com'),
('James Cameron','james@cameron.com'),
('Boris Pasternak','boris@boris.com'),
('Frederick Frank','fred@frank.com'),
('Theodoros Angelopoulos','theo@angelopoulos.com'),
('Erik Hazelhoff Roelfzema','erik@roelfzema.com'),
('Krzysztof Kieslowsk','email@email.com'),
('Edmond Rostand','edmond@rostand.com')
;

INSERT INTO directors (name, country) VALUES
('Stanley Kubrick', 'USA'),
('George Lucas', 'USA'),
('Robert Mulligan', 'USA'),
('James Cameron', 'Canada'),
('David Lean', 'UK'),
('Anthony Mann', 'USA'),
('Theodoros Angelopoulos', 'Greece'),
('Paul Verhoeven', 'Netherlands'),
('Krysztof Kieslowski', 'Poland'),
('Jean-Paul Rappeneau', 'France')
;

INSERT INTO stars (name, dob) VALUES
('Keir Dullea', '1936-05-30'),
('Mark Hamill', '1951-09-25'),
('Gregory Peck', '1916-04-05'),
('Leonarde DiCarprio', '1974-11-11'),
('Julie Christie', '1940-04-14'),
('Charlton Heston', '1923-10-04'),
('Manos Katrakis', '1908-08-14'),
('Rutger Hauer', '1944-01-23'),
('Juliette Binoche', '1964-03-09'),
('Gerard Depardieu', '1948-12-27');

--SELECT * FROM stars;
--SELECT * FROM directors;

INSERT INTO films (title, directorId, starId, writerId, year_released, genre, score) VALUES
('2001: A Space Odyssey', 1, 1, 1,'1968', 'Science Fiction', 10),
('Star Wars: A New Hope', 2, 2, 2,'1977', 'Science Fiction', 7),
('To Kill A Mockingbird', 3, 3, 3, '1962', 'Drama', 10),
('Titanic', 4, 4, 4, '1997', 'Romance', 5),
('Dr Zhivago', 5, 5, 5, '1965', 'Historical', 8),
('El Cid', 6, 6, 6, '1961', 'Historical', 6),
('Voyage to Cythera', 7, 7, 7, '1984', 'Drama', 8),
('Soldier of Orange', 8, 8, 8, '1977', 'Thriller', 8),
('Three Colours: Blue', 9, 9, 9, '1993', 'Drama', 8),
('Cyrano de Bergerac', 10, 10, 10, '1990', 'Historical', 9)
;

--SELECT * FROM films;

--i: Show title and director name for all films
SELECT title, directors.name AS directorname FROM films LEFT JOIN directors ON films.directorId = directors.Id;

--ii: Shot the title, director and start name from all films
SELECT title, directors.name AS director, stars.name AS star FROM films 
LEFT JOIN directors ON films.directorid = directors.id
LEFT JOIN stars ON films.starid = stars.id;

--iii: Show the title of films where the director is from the USA
SELECT title FROM films
LEFT JOIN directors ON films.directorid = directors.id
WHERE directors.country LIKE 'USA';

--iv: Show only those films where the writer and the director are the same person
SELECT title FROM films 
LEFT JOIN directors ON films.directorid = directors.id
LEFT JOIN writers ON films.writerid = writers.id
WHERE writers.name LIKE directors.name;

--SELECT * FROM writers;

--v: Show directors and films titles for films with a score of 8 or higher
SELECT title, directors.name AS director, score FROM films
LEFT JOIN directors ON films.directorid = directors.id
WHERE films.score >= 8
ORDER BY films.score DESC;

--vi: Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables
--A: Show film names and star names of all films with actors born before 1944
SELECT title, stars.name AS star, stars.dob AS dob FROM films
LEFT JOIN stars ON films.starid = stars.id
WHERE stars.dob < '1944-01-01';

--B: Show stars names of stars that played in DRAMA films with a director from the USA
SELECT stars.name as star FROM films
LEFT JOIN stars ON films.starid = stars.id
LEFT JOIN directors ON films.directorid = directors.id
WHERE directors.country LIKE 'USA'
AND films.genre LIKE 'Drama';

--C: Show the names of writers who made films with a score of 9 or higher
SELECT writers.name AS writer FROM films
LEFT JOIN writers ON films.writerid = writers.id
WHERE films.score >= 9;

--D: Show the names of all films and their stars for films in the Science Fiction genre
SELECT films.title, stars.name AS star FROM films
LEFT JOIN stars ON films.starid = stars.id
WHERE films.genre LIKE 'Science Fiction';

--E: Show the titles of films made after 1975 with a star born before 1957
SELECT title FROM films
LEFT JOIN stars ON films.starid = stars.id
WHERE stars.dob < '1957-01-01' AND films.year_released > 1975;