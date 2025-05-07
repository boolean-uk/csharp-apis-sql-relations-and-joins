


CREATE TABLE person(
id serial PRIMARY KEY,
name VARCHAR
);

CREATE TABLE director(
id serial primary key,
person_id integer,
country varchar,
FOREIGN KEY(person_id) REFERENCES person(id)
);


CREATE TABLE star(
id serial primary key,
person_id integer,
dob DATE,
FOREIGN KEY(person_id) REFERENCES person(id)
);


CREATE TABLE writer(
id serial primary key,
person_id integer,
email VARCHAR,
FOREIGN KEY(person_id) REFERENCES person(id)
);



create table film(
id serial primary KEY,
title varchar,
genre varchar,
score integer,
year integer,
director_id integer,
star_id integer,
writer_id integer,
FOREIGN KEY(director_id) REFERENCES director(id),
FOREIGN KEY(star_id) REFERENCES star(id),
FOREIGN KEY(writer_id) REFERENCES writer(id)
);

INSERT INTO person(name) VALUES
('Stanley Kubrick'),
('George Lucas'),
('Robert Mulligan'),
('James Cameron'),
('David Lean'),
('Anthony Mann'),
('Theodoros Angelopoulos'),
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



INSERT INTO director(person_id, country) VALUES
(1, 'USA'),
(2, 'USA'),
(3, 'USA'),
(4, 'Canada'),
(5, 'UK'),
(6, 'USA'),
(7, 'Greence'),
(8, 'Netherlands'),
(9, 'Poland'),
(10, 'France');



INSERT INTO star(person_id, dob) VALUES
(11, '1936-05-30'),
(12, '1951-09-25'),
(13, '1916-05-04'),
(14, '1974-11-11'),
(15, '1940-04-14'),
(16, '1923-10-04'),
(17, '1908-08-14'),
(18, '1944-01-23'),
(19, '1936-03-09'),
(20, '1948-12-27');



INSERT INTO writer(person_id, email) VALUES
(21, 'arthur@clarke.com'),
(2, 'george@email.com'),
(22, 'harper@lee.com'),
(4, 'james@cameron.com'),
(23, 'boris@boris.com'),
(24, 'fred@frank.com'),
(7, 'theo@angelopoulos.com'),
(25, 'erik@roelfzema.com'),
(9, 'email@email.com'),
(26, 'edmond@rostand.com');



INSERT INTO film(title, genre, score, year, director_id, star_id, writer_id) VALUES
('2001: A Space Odyssey', 'Science Fiction', 10, 1968, 1, 1, 1),
('Star Wars: A New Hope', 'Science Fiction', 7, 1977, 2, 2, 2),
('To Kill A Mockingbird', 'Drama', 10, 1962, 3, 3, 3),
('Titanic', 'Romance', 5, 1997, 4, 4, 4),
('Dr Zhivago', 'Historical', 8, 1965, 5, 5, 5),
('El Cid', 'Historical', 6, 1961, 6, 6, 6),
('Voyage to Cythera', 'Drama', 8, 1984, 7, 7, 7),
('Soldier of Orange', 'Thriller', 8, 1977, 8, 8, 8),
('Three Colours: Blue', 'Drama', 8, 1993, 9, 9, 9),
('Cyrano de Bergerac', 'Historical', 9, 1990, 10, 10, 10);



--Show the title and director name for all films

SELECT film.title, person.name AS director_name
FROM film
JOIN director ON film.director_id = director.id
JOIN person ON director.person_id = person.id;


--Show the title, director and star name for all films

SELECT film.title, director_person.name, star_person.name 
FROM film
JOIN director ON film.director_id = director.id
JOIN person AS director_person ON director.person_id = director_person.id
JOIN star ON film.star_id = star.id
JOIN person AS star_person ON star.person_id = star_person.id;


--Show the title of films where the director is from the USA

SELECT film.title,  director.country
FROM film 
JOIN director on film.director_id = director.id
WHERE director.country LIKE '%USA%';
;
--Show only those films where the writer and the director are the same person
SELECT film.title, director_person.name, writer_person.name
FROM film
JOIN director ON film.director_id = director.id
JOIN person AS director_person ON director.person_id = director_person.id

JOIN writer on film.writer_id = writer.id
JOIN person as writer_person ON writer.person_id = writer_person.id

WHERE director_person.name = writer_person.name;

--Show directors and film titles for films with a score of 8 or higher
SELECT film.title, film.score, director_person.name
FROM film
JOIN director ON film.director_id = director.id
JOIN person AS director_person ON director.person_id = director_person.id
WHERE film.score > 7;

--Show titles and writers where writers emials contain 'r'

SELECT film.title, writer_person.name 
FROM  film
JOIN writer ON film.writer_id = writer.id
JOIN person AS writer_person ON writer.person_id = writer_person.id
WHERE writer.email LIKE '%r%';


--Show films and stars where stars dob > 1944
SELECT film.title, star_person.name 
FROM film
JOIN star on film.star_id = star.id
JOIN person AS star_person ON star.person_id = star_person.id
WHERE star.dob > '1944-01-23';


-- Show film where genre = thriller, and rating > 7
SELECT film.title
FROM film 
WHERE film.genre LIKE '%Thriller%' and film.score > 7;


--Show films and directors where country is usa and title contains p 
SELECT film.title, director_person.name
FROM film
LEFT JOIN director ON film.director_id = director.id
JOIN person AS director_person ON director.person_id = director_person.id
WHERE director.country LIKE '%USA%' AND film.title LIKE '%p%';




--SHow films and directors where country is not usa 
SELECT film.title, director_person.name
FROM film
LEFT JOIN director ON film.director_id = director.id
JOIN person AS director_person ON director.person_id = director_person.id
WHERE director.country NOT LIKE '%USA%'
