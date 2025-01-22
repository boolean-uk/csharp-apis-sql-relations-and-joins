--Core 4
CREATE TABLE writers(
    id serial PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    email VARCHAR(99) NOT NULL
);

CREATE TABLE stars(
    id serial PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    birthdate DATE NOT NULL
);

CREATE TABLE directors(
    id serial PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    country VARCHAR(20) NOT NULL
);

CREATE TABLE films(
    id serial PRIMARY KEY,
    title VARCHAR(40) NOT NULL,
    genre VARCHAR(40) NOT NULL,
    year INT CHECK(year BETWEEN 999 AND 9999) NOT NULL,
    score INT CHECK(score BETWEEN 0 AND 10),
    writer_id INT NOT NULL REFERENCES writers,
    star_id INT NOT NULL REFERENCES stars,
    director_id INT NOT NULL REFERENCES directors,
    UNIQUE(title)
);

-- Core 5
--Start by adding directors
INSERT INTO directors (name, country) VALUES('Stanley Kubrick','USA');
INSERT INTO directors (name, country) VALUES('George Lucas','USA');
INSERT INTO directors (name, country) VALUES('Robert Mulligan','USA');
INSERT INTO directors (name, country) VALUES('James Cameron','Canada');
INSERT INTO directors (name, country) VALUES('David Lean','UK');
INSERT INTO directors (name, country) VALUES('Anthony Mann','USA');
INSERT INTO directors (name, country) VALUES('Theodoros Angelopoulos','Greece');
INSERT INTO directors (name, country) VALUES('Paul Verhoeven','Netherlands');
INSERT INTO directors (name, country) VALUES('Krzysztof Kieslowski','Poland');
INSERT INTO directors (name, country) VALUES('Jean-Paul Rappeneau','France');

--Populating writers
INSERT INTO writers (name, email) VALUES('Arthur C Clarke','arthur@clarke.com');
INSERT INTO writers (name, email) VALUES('George Lucas','george@email.com');
INSERT INTO writers (name, email) VALUES('Harper Lee','harper@lee.com');
INSERT INTO writers (name, email) VALUES('James Cameron','james@cameron.com');
INSERT INTO writers (name, email) VALUES('Boris Pasternak','boris@boris.com');
INSERT INTO writers (name, email) VALUES('Frederick Frank','fred@frank.com');
INSERT INTO writers (name, email) VALUES('Theodoros Angelopoulos','theo@angelopoulos.com');
INSERT INTO writers (name, email) VALUES('Erik Hazelhoff Roelfzema','erik@roelfzema.com');
INSERT INTO writers (name, email) VALUES('Krzysztof Kieslowski','email@email.com');
INSERT INTO writers (name, email) VALUES('Edmond Rostand','edmond@rostand.com');

--Populating stars
INSERT INTO stars(name, birthdate) VALUES('Keir Dullea','1936-05-30');
INSERT INTO stars(name, birthdate) VALUES('Mark Hamill','1951-09-25');
INSERT INTO stars(name, birthdate) VALUES('Gregory Peck','1916-04-05');
INSERT INTO stars(name, birthdate) VALUES('Leonardo DiCaprio','1974-11-11');
INSERT INTO stars(name, birthdate) VALUES('Julie Christie','1940-04-14');
INSERT INTO stars(name, birthdate) VALUES('Charlton Heston','1923-10-04');
INSERT INTO stars(name, birthdate) VALUES('Manos Katrakis','1908-08-14');
INSERT INTO stars(name, birthdate) VALUES('Rutger Hauer','1944-01-23');
INSERT INTO stars(name, birthdate) VALUES('Juliette Binoche','1964-03-09');
INSERT INTO stars(name, birthdate) VALUES('Gerard Depardieu','1948-12-27');

--Populating movies, something happened in my first query that made me onyl have Gerard as a star with ID 10, therefore these star IDs are +10 
INSERT INTO films (title, genre, year, score, writer_id, star_id, director_id) VALUES('2021: A Space Odyssey','Science Fiction',1968,10, 1,11,1);
INSERT INTO films (title, genre, year, score, writer_id, star_id, director_id) VALUES('Star Wars: A New Hope','Science Fiction',1977,7, 2,12,2);
INSERT INTO films (title, genre, year, score, writer_id, star_id, director_id) VALUES('To Kill A Mockingbird','Drama',1962,10, 3,13,3);
INSERT INTO films (title, genre, year, score, writer_id, star_id, director_id) VALUES('Titanic','Romance',1997,5, 4,14,4);
INSERT INTO films (title, genre, year, score, writer_id, star_id, director_id) VALUES('DR Zhivago','Historical',1965,8, 5,15,5);
INSERT INTO films (title, genre, year, score, writer_id, star_id, director_id) VALUES('El Cid','Historical',1961,6, 6,16,6);
INSERT INTO films (title, genre, year, score, writer_id, star_id, director_id) VALUES('Voyage to Cythera','Drama',1984,8, 7,17,7);
INSERT INTO films (title, genre, year, score, writer_id, star_id, director_id) VALUES('Soliders of Orange','Thriller',1977,8, 8,18,8);
INSERT INTO films (title, genre, year, score, writer_id, star_id, director_id) VALUES('Three Colours: Blue','Drama',1993,8, 9,19,9);
INSERT INTO films (title, genre, year, score, writer_id, star_id, director_id) VALUES('Cyrano de Bergerac','Historical',1990,9, 10,10,10);



-- Core 6
--i
SELECT films.title, directors.name AS Director FROM films
INNER JOIN directors ON films.director_id = directors.id

--ii
SELECT
films.title,
directors.name AS Director,
stars.name AS star
FROM films
INNER JOIN directors ON films.director_id = directors.id
INNEr JOIN stars ON films.star_id = stars.id

--iii
SELECT films.title
FROM films
INNER JOIN directors ON directors.id = films.director_id
WHERE directors.country = 'USA'

--Iv
SELECT films.*
FROM films
INNER JOIN directors ON films.director_id = directors.id
INNER JOIN writers ON films.writer_id = writers.id
WHERE directors.name = writers.name

--v 
SELECT films.title, directors.name
FROM films
INNER JOIN directors ON directors.id = films.director_id
WHERE films.score >= 8

--vi
--Get writer email for films with score 8+
SELECT writers.email
FROM writers
INNER JOIN films ON writers.id = films.writer_id
WHERE films.score >= 8

--Get star names where actor starred at the age under 30, also displays the age when they starred
SELECT stars.name, films.year - DATE_PART('year', stars.birthdate::DATE) AS age
FROM stars
INNER JOIN films ON films.star_id = stars.id
WHERE films.year - DATE_PART('year', stars.birthdate::DATE) < 30
ORDER BY age ASC
