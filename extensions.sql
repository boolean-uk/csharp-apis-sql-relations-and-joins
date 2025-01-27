--extension 1

CREATE TABLE people (
	person_id serial PRIMARY KEY,
	name VARCHAR(50),
	role ENUM('Director', 'Star', 'Writer') NOT NULL
);

CREATE TABLE films (
    id SERIAL PRIMARY KEY,
    title VARCHAR(50),
    year INTEGER CHECK (year BETWEEN 1 AND 9999),
    genre VARCHAR(50),
    score INTEGER CHECK (score BETWEEN 0 AND 10),
    director_id INT REFERENCES people(person_id),
    star_id INT REFERENCES people(person_id),
    writer_id INT REFERENCES people(person_id)
);

SELECT films.title, directors.name FROM films JOIN people AS directors ON films.director_id = directors.person_id;
SELECT films.title, directors.name AS director, stars.name AS star FROM films JOIN people AS directors ON films.director_id = directors.person_idJOIN people AS stars ON films.star_id = stars.person_id;
SELECT films.title FROM films JOIN people AS directors ON films.director_id = directors.person_id WHERE directors.country = 'USA';
SELECT films.* FROM films JOIN people AS directors ON films.director_id = directors.person_idJOIN people AS writers ON films.writer_id = writers.person_id WHERE directors.person_id = writers.person_id;
SELECT directors.name AS director, films.title FROM films JOIN people AS directors ON films.director_id = directors.person_id WHERE films.score >= 8;
SELECT directors.name AS director, stars.name AS star FROM films JOIN people AS directors ON films.director_id = directors.person_id JOIN people AS stars ON films.star_id = stars.person_id;
SELECT films.title, stars.name AS star, directors.country AS director_country FROM films JOIN people AS directors ON films.director_id = directors.person_id JOIN people AS stars ON films.star_id = stars.person_id WHERE directors.country = 'USA' AND stars.name LIKE '%a%';
SELECT films.title, films.genre, directors.name AS director FROM films JOIN people AS directors ON films.director_id = directors.person_id;
SELECT films.title, writers.name AS writer, writers.email FROM films JOIN people AS writers ON films.writer_id = writers.person_id WHERE writers.email LIKE '%@email.com';
SELECT films.title, directors.name AS director, films.score FROM films JOIN people AS directors ON films.director_id = directors.person_id WHERE films.score > 7 AND directors.country = 'Poland';

--extension 2

CREATE TABLE cast (
    cast_id SERIAL PRIMARY KEY,
    film_id INT REFERENCES films(film_id),
    person_id INT REFERENCES people(person_id),
    role VARCHAR(50)
);

INSERT INTO cast (film_id, person_id, role) VALUES 
(1, 5, 'Star'),
(1, 3, 'Villain'),
(2, 6, 'Hero'),
(2, 2, 'Comedian'),
(3, 4, 'Plumber'),
(3, 10, 'Boolean');
