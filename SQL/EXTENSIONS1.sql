DROP TABLE IF EXISTS films, directors, stars, writers;

CREATE TABLE people(
    person_id serial primary key,
    person_name varchar(255)
);

CREATE TABLE directors(
director_id serial primary key,
person_id integer references people,
country varchar(50)
);

CREATE TABLE stars(
star_id serial primary key,
person_id integer references people,
date_of_birth date
);

CREATE TABLE writers(
writer_id serial primary key,
person_id integer references people,
email varchar(255)
);

CREATE TABLE films(
 film_id serial primary key,
 director_id integer references directors,
 star_id integer references stars,
 writer_id integer references writers,
 title varchar(255) not null,
 genre varchar(50) not null,
 release_year integer not null,
 score integer not null
);

INSERT INTO people (person_name)
VALUES
('Stanley Kubrick'),
('Keir Dullea'),
('Arthur C Clarke'),
('George Lucas'),
('Mark Hamill'),
('Robert Mulligan'),
('Gregory Peck'),
('Harper Lee'),
('James Cameron'),
('Leonardo DiCaprio'),
('David Lean'),
('Julie Christie'),
('Boris Pasternak'),
('Anthony Mann'),
('Charlton Heston'),
('Frederick Frank'),
('Theodoros Angelopoulos'),
('Manos Katrakis'),
('Paul Verhoeven'),
('Rutger Hauer'),
('Erik Hazelhoff Roelfzema'),
('Krzysztof Kieslowski'),
('Juliette Binoche'),
('Jean-Paul Rappeneau'),
('Gerard Depardieu'),
('Edmond Rostand');

INSERT INTO directors (person_id, country)
VALUES
  ((SELECT person_id FROM people WHERE person_name = 'Stanley Kubrick'), 'USA'),
  ((SELECT person_id FROM people WHERE person_name = 'George Lucas'), 'USA'),
  ((SELECT person_id FROM people WHERE person_name = 'Robert Mulligan'), 'USA'),
  ((SELECT person_id FROM people WHERE person_name = 'James Cameron'), 'Canada'),
  ((SELECT person_id FROM people WHERE person_name = 'David Lean'), 'UK'),
  ((SELECT person_id FROM people WHERE person_name = 'Anthony Mann'), 'USA'),
  ((SELECT person_id FROM people WHERE person_name = 'Theodoros Angelopoulos'), 'Greece'),
  ((SELECT person_id FROM people WHERE person_name = 'Paul Verhoeven'), 'Netherlands'),
  ((SELECT person_id FROM people WHERE person_name = 'Krzysztof Kieslowski'), 'Poland'),
  ((SELECT person_id FROM people WHERE person_name = 'Jean-Paul Rappeneau'), 'France');

INSERT INTO stars (person_id, date_of_birth)
VALUES
  ((SELECT person_id FROM people WHERE person_name = 'Keir Dullea'), '1936-05-30'),
  ((SELECT person_id FROM people WHERE person_name = 'Mark Hamill'), '1951-09-25'),
  ((SELECT person_id FROM people WHERE person_name = 'Gregory Peck'), '1916-04-05'),
  ((SELECT person_id FROM people WHERE person_name = 'Leonardo DiCaprio'), '1974-11-11'),
  ((SELECT person_id FROM people WHERE person_name = 'Julie Christie'), '1940-04-14'),
  ((SELECT person_id FROM people WHERE person_name = 'Charlton Heston'), '1923-10-04'),
  ((SELECT person_id FROM people WHERE person_name = 'Manos Katrakis'), '1908-08-14'),
  ((SELECT person_id FROM people WHERE person_name = 'Rutger Hauer'), '1944-01-23'),
  ((SELECT person_id FROM people WHERE person_name = 'Juliette Binoche'), '1964-03-09'),
  ((SELECT person_id FROM people WHERE person_name = 'Gerard Depardieu'), '1948-12-27');

INSERT INTO writers (person_id, email)
VALUES
  ((SELECT person_id FROM people WHERE person_name = 'Arthur C Clarke'), 'arthur@clarke.com'),
  ((SELECT person_id FROM people WHERE person_name = 'George Lucas'), 'george@email.com'),
  ((SELECT person_id FROM people WHERE person_name = 'Harper Lee'), 'harper@lee.com'),
  ((SELECT person_id FROM people WHERE person_name = 'James Cameron'), 'james@cameron.com'),
  ((SELECT person_id FROM people WHERE person_name = 'Boris Pasternak'), 'boris@boris.com'),
  ((SELECT person_id FROM people WHERE person_name = 'Frederick Frank'), 'fred@frank.com'),
  ((SELECT person_id FROM people WHERE person_name = 'Theodoros Angelopoulos'), 'theo@angelopoulos.com'),
  ((SELECT person_id FROM people WHERE person_name = 'Erik Hazelhoff Roelfzema'), 'erik@roelfzema.com'),
  ((SELECT person_id FROM people WHERE person_name = 'Krzysztof Kieslowski'), 'email@email.com'),
  ((SELECT person_id FROM people WHERE person_name = 'Edmond Rostand'), 'edmond@rostand.com');

  INSERT INTO films (director_id, star_id, writer_id, title, genre, release_year, score)
VALUES
  (1, 1, 1, '2001: A Space Odyssey', 'Science Fiction', 1968, 10),
  (2, 2, 2, 'Star Wars: A New Hope', 'Science Fiction', 1977, 7),
  (3, 3, 3, 'To Kill A Mockingbird', 'Drama', 1962, 10),
  (4, 4, 4, 'Titanic', 'Romance', 1997, 5),
  (5, 5, 5, 'Dr Zhivago', 'Historical', 1965, 8),
  (6, 6, 6, 'El Cid', 'Historical', 1961, 6),
  (7, 7, 7, 'Voyage to Cythera', 'Drama', 1984, 8),
  (8, 8, 8, 'Soldier of Orange', 'Thriller', 1977, 8),
  (9, 9, 9, 'Three Colours: Blue', 'Drama', 1993, 8),
  (10, 10, 10, 'Cyrano de Bergerac', 'Historical', 1990, 9);

--Show the title and director name for all films
SELECT title, person_name FROM films INNER JOIN directors ON films.director_id = directors.director_id INNER JOIN people ON directors.person_id = people.person_id;

--Show the title, director and star name for all films
SELECT title, directors, person_name FROM films INNER JOIN directors ON films.director_id = directors.director_id INNER JOIN stars ON films.star_id = stars.star_id LEFT JOIN people ON people.person_id = stars.person_id;

--Show the title of films where the director is from the USA
SELECT title FROM films INNER JOIN directors ON films.director_id = directors.director_id WHERE directors.country = 'USA';

--Show only those films where the writer and the director are the same person
SELECT * FROM films INNER JOIN directors ON films.director_id = directors.director_id INNER JOIN writers ON films.writer_id = writers.writer_id WHERE directors.person_id = writers.person_id;

--Show directors and film titles for films with a score of 8 or higher
SELECT directors, title FROM films INNER JOIN directors ON films.director_id = directors.director_id WHERE score >= 8

--Show writers for films with "email" in their email.
SELECT writers FROM films INNER JOIN writers ON films.writer_id = writers.writer_id WHERE writers.email LIKE '%email%';

--Show writers for films with "email" at the start of their email.
SELECT writers FROM films INNER JOIN writers ON films.writer_id = writers.writer_id WHERE writers.email LIKE 'email%';

--Show writers for films with "email.com" at the end of their email.
SELECT writers FROM films INNER JOIN writers ON films.writer_id = writers.writer_id WHERE writers.email LIKE '%email.com';

--Show stars for films in order of their birth year ascending
SELECT stars FROM films INNER JOIN stars ON films.star_id = stars.star_id ORDER BY date_of_birth ASC

--Show stars for films in order of their birth year descending
SELECT stars FROM films INNER JOIN stars ON films.star_id = stars.star_id ORDER BY date_of_birth DESC



