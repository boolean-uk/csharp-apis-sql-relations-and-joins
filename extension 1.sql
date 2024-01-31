--Refactor the database tables so that the Actors, Directors and Writers
--all identify people (using a Foreign Key) that are present in a single People table
CREATE Table people(
	id serial primary key,
	name varchar (255)
);

INSERT INTO people (name) VALUES ('Stanley Kubrick'),
('George Lucas'),
('Robert Mulligan'),
('James Cameron'),
('David Lean'),
('Anthony Mann'),
('Theodors Angelopoulous'),
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

CREATE TABLE director(
	id serial primary key,
	director_id integer,
	director_country varchar(255),
	constraint fk_id foreign key(director_id) references people(id)
);

INSERT INTO director(director_id, director_country) VALUES(1, 'USA'),
(2, 'USA'),
(3, 'USA'),
(4, 'Canada'),
(5, 'UK'),
(6, 'USA'),
(7, 'Greece'),
(8, 'Netherlands'),
(9, 'Poland'),
(10, 'France');


CREATE TABLE star(
    id serial primary key,
    star_id integer,
    star_dob date,
    constraint fk_id foreign key(star_id) references people(id)
);

INSERT INTO star(star_id, star_dob) VALUES (11, '1936-05-30'),
(12, '1951-09-25'),
(13, '1916-04-05'),
(14, '1974-11-11'),
(15, '1940-04-14'),
(16, '1923-10-04'),
(17, '1908-08-14'),
(18, '1944-01-23'),
(19, '1964-03-09'),
(20, '1948-12-27');

CREATE TABLE writer(
    id serial primary key,
    writer_id integer,
    writer_email varchar(255),
    constraint fk_id foreign key(writer_id) references people(id)
);

INSERT INTO writer(writer_id, writer_email) VALUES (21, 'arthur@clarke.com'),
(2, 'george@email.com'),
(22, 'harper@lee.com'),
(4, 'james@cameron.com'),
(23, 'boris@boris.com'),
(24, 'fred@frank.com'),
(7, 'theo@angelopoulos.com'),
(25, 'erik@roelfzema.com'),
(9, 'email@email.com'),
(26, 'edmond@rostand.com');

CREATE TABLE film(
    id serial primary key,
    title varchar(255),
    director_id integer,
    writer_id integer,
    star_id integer,
    release_year integer,
    genre varchar(255),
    score integer,
    constraint fk_director foreign key(director_id) references director(id),
    constraint fk_writer foreign key(writer_id) references writer(id),
    constraint fk_star foreign key(star_id) references star(id)
);

INSERT INTO film(title, director_id, writer_id, star_id, release_year, genre, score) VALUES ('2001: A Space Odyssey', 1, 1, 1, 1968, 'SciFi', 10),
('Star Wars: A New Hope', 2, 2, 2, 1977, 'SciFi', 7),
('To Kill A Mockingbird', 3, 3, 3, 1962, 'Drama', 10),
('Titanic', 4, 4, 4, 1997, 'Romance', 5),
('Dr Zhivago', 5, 5, 5, 1965, 'Historical', 8),
('El Cid', 6, 6, 6, 1961, 'Historical', 6),
('Voyage to Cythera', 7, 7, 7, 1985, 'Drama', 8),
('Soldier of Orange', 8, 8, 8, 1977, 'Thriller', 8),
('Three Colours: Blue', 9, 9, 9, 1993, 'Drama', 8),
('Cyrano de Bergerac', 10, 10, 10, 1990, 'Historical', 9);

-- Where necessary refactor the queries to take advantage of this new structure

--Show the title and director name for all films
SELECT title, people.name FROM film 
INNER JOIN director ON film.director_id = director.id 
INNER JOIN people ON director.director_id=people.id
--Show the title, director and star name for all films
SELECT film.title, stars.name as stars, directors.name as directors FROM film 
INNER JOIN star ON film.star_id=star.id 
INNER JOIN people as stars ON star.star_id=stars.id 
INNER JOIN director ON film.director_id=director.id 
INNER JOIN people as directors ON director.director_id=directors.id
--Show the title of films where the director is from the USA
SELECT title, director_country from FILM INNER JOIN director on film.director_id=director.id WHERE director_country = 'USA';
--Show only those films where the writer and the director are the same person
SELECT title, directors.name, writers.name FROM film
INNER JOIN director ON film.director_id=director.id 
INNER JOIN people as directors ON director.director_id=directors.id 
INNER JOIN writer ON film.writer_id=writer.id 
INNER JOIN people as writers ON writer.writer_id=writers.id 
WHERE directors.name = writers.name
--Show directors and film titles for films with a score of 8 or higher
SELECT directors.name, title, score FROM film 
INNER JOIN director on film.director_id=director.id 
INNER JOIN people as directors ON director.director_id=directors.id 
WHERE score >= 8