DROP TABLE films;
DROP TABLE directors;
DROP TABLE stars;
DROP TABLE writers;
DROP TABLE people;

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

CREATE TABLE people (
id serial primary key,
name varchar(255) unique not null,
country varchar(255), 
dob date, 
email varchar(255))
;

INSERT INTO people (name, email)  VALUES 
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

INSERT INTO people (name, country) VALUES
('Stanley Kubrick', 'USA'),
--('George Lucas', 'USA'),
('Robert Mulligan', 'USA'),
--('James Cameron', 'Canada'),
('David Lean', 'UK'),
('Anthony Mann', 'USA'),
--('Theodoros Angelopoulos', 'Greece'),
('Paul Verhoeven', 'Netherlands'),
('Krysztof Kieslowski', 'Poland'),
('Jean-Paul Rappeneau', 'France')
;

UPDATE people SET country = 'USA' WHERE name LIKE 'George Lucas';
UPDATE people SET country = 'Canada' WHERE name LIKE 'James Cameron';
UPDATE people SET country = 'Greece' WHERE name LIKE 'Theodoros Angelopoulus';

INSERT INTO people (name, dob) VALUES
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

SELECT * FROM people ORDER BY id ASC;
--SELECT * FROM stars;
--SELECT * FROM directors;

CREATE TABLE directors (
id serial primary key,
peopleid int not null)
;

CREATE TABLE stars (
id serial primary key,
peopleid int not null)
;

CREATE TABLE writers (
id serial primary key,
peopleid int not null)
;

INSERT INTO writers (peopleid)  VALUES 
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10)
;

INSERT INTO directors (peopleid) VALUES
(11),
(2),
(12),
(4),
(13),
(14),
(7),
(15),
(9),
(17)
;

INSERT INTO stars (peopleid) VALUES
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27)
;

/*
INSERT INTO writers (peopleid, name, email)  VALUES 
(1, 'Arthur C Clarke', 'arthur@clarke.com'),
(2, 'George Lucas','george@email.com'),
(3, 'Harper Lee','harper@lee.com'),
(4, 'James Cameron','james@cameron.com'),
(5, 'Boris Pasternak','boris@boris.com'),
(6, 'Frederick Frank','fred@frank.com'),
(7, 'Theodoros Angelopoulos','theo@angelopoulos.com'),
(8, 'Erik Hazelhoff Roelfzema','erik@roelfzema.com'),
(9, 'Krzysztof Kieslowsk','email@email.com'),
(10, 'Edmond Rostand','edmond@rostand.com')
;

INSERT INTO directors (peopleid, name, country) VALUES
(11, 'Stanley Kubrick', 'USA'),
(2, 'George Lucas', 'USA'),
(12, 'Robert Mulligan', 'USA'),
(4, 'James Cameron', 'Canada'),
(13, 'David Lean', 'UK'),
(14, 'Anthony Mann', 'USA'),
(7, 'Theodoros Angelopoulos', 'Greece'),
(15, 'Paul Verhoeven', 'Netherlands'),
(9, 'Krysztof Kieslowski', 'Poland'),
(17, 'Jean-Paul Rappeneau', 'France')
;

INSERT INTO stars (peopleid, name, dob) VALUES
(18, 'Keir Dullea', '1936-05-30'),
(19, 'Mark Hamill', '1951-09-25'),
(20, 'Gregory Peck', '1916-04-05'),
(21, 'Leonarde DiCarprio', '1974-11-11'),
(22, 'Julie Christie', '1940-04-14'),
(23, 'Charlton Heston', '1923-10-04'),
(24, 'Manos Katrakis', '1908-08-14'),
(25, 'Rutger Hauer', '1944-01-23'),
(26, 'Juliette Binoche', '1964-03-09'),
(27, 'Gerard Depardieu', '1948-12-27')
;
*/


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
SELECT title, people.name AS director FROM films
JOIN directors ON films.directorID = directors.id
JOIN people ON directors.peopleid = people.id;

--ii: Show the title, director and star name from all films
SELECT title, people.name AS director, starstable.name AS star FROM films 
JOIN directors ON films.directorid = directors.id
JOIN people ON directors.peopleid = people.id
JOIN stars ON films.starid = stars.id
JOIN people AS starstable ON stars.peopleid = starstable.id;

--iii: Show the title of films where the director is from the USA
SELECT title FROM films
JOIN directors ON films.directorid = directors.id
JOIN people ON directors.peopleID = people.id
WHERE people.country LIKE 'USA';

--iv: Show only those films where the writer and the director are the same person
SELECT title FROM films 
JOIN directors ON films.directorid = directors.id
JOIN people AS directorstable ON directors.peopleid = directorstable.id
JOIN writers ON films.writerid = writers.id
JOIN people AS writerstable ON writers.peopleid = writerstable.id
WHERE writerstable.name LIKE directorstable.name;

--SELECT * FROM writers;

--v: Show directors and films titles for films with a score of 8 or higher
SELECT title, people.name AS director, score FROM films
JOIN directors ON films.directorid = directors.id
JOIN people ON directors.peopleid = people.id
WHERE films.score >= 8
ORDER BY films.score DESC;

--vi: Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables
--A: Show film names and star names of all films with actors born before 1944
SELECT title, people.name AS star, people.dob AS dob FROM films
JOIN stars ON films.starid = stars.id
JOIN people ON stars.peopleid = people.id
WHERE people.dob < '1944-01-01';

--B: Show stars names of stars that played in DRAMA films with a director from the USA
SELECT starstable.name as star FROM films
JOIN stars ON films.starid = stars.id
JOIN people AS starstable ON stars.peopleid = starstable.id
JOIN directors ON films.directorid = directors.id
JOIN people AS directorstable ON directors.peopleid = directorstable.id
WHERE directorstable.country LIKE 'USA'
AND films.genre LIKE 'Drama';

--C: Show the names of writers who made films with a score of 9 or higher
SELECT people.name AS writer FROM films
LEFT JOIN writers ON films.writerid = writers.id
LEFT JOIN people ON writers.peopleid = people.id
WHERE films.score >= 9;

--D: Show the names of all films and their stars for films in the Science Fiction genre
SELECT films.title, people.name AS star FROM films
LEFT JOIN stars ON films.starid = stars.id
LEFT JOIN people ON stars.peopleid = people.id
WHERE films.genre LIKE 'Science Fiction';

--E: Show the titles of films made after 1975 with a star born before 1957
SELECT title FROM films
LEFT JOIN stars ON films.starid = stars.id
LEFT JOIN people ON stars.peopleid = people.id
WHERE people.dob < '1957-01-01' AND films.year_released > 1975;

--Extension 2: Add Cast table
CREATE TABLE filmcast (
id serial primary key, 
filmid int not null, 
peopleid int not null);

SELECT * FROM people;

INSERT INTO filmcast (filmid, peopleid) VALUES 
(1, 3),
(1, 5),
(1, 7),
(2, 1), 
(2, 27),
(2, 32),
(3, 18), 
(3, 24),
(4, 20),
(4, 26),
(4, 21),
(5, 2),
(5, 4),
(6, 25),
(6, 19),
(7, 8),
(7, 9),
(8, 13),
(8, 7), 
(9, 14), 
(9, 16), 
(10, 12), 
(10, 16);

--Example: Show cast for specific movie (by ID from films table)
SELECT people.name AS name FROM people
LEFT JOIN filmcast ON filmcast.peopleid = people.id
WHERE filmcast.filmid = 1;

--Example: Show case for a movie by movie name
SELECT people.name AS name FROM people
LEFT JOIN filmcast ON filmcast.peopleid = people.id
LEFT JOIN films ON filmcast.filmid = films.id
WHERE films.title LIKE '%Star Wars%';