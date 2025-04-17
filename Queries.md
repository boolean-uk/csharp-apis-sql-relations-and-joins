
Database creation:
CREATE TABLE films(
 film_id SERIAL PRIMARY KEY,
 title VARCHAR(255) NOT NULL UNIQUE,
 release_year int NOT NULL,
 genre VARCHAR(255) NOT NULL,
 score int NOT NULL,
 director_id int NOT NULL,
 writer_id int NOT NULL,
 star_id int NOT NULL
)

CREATE TABLE writers(
 writer_id SERIAL PRIMARY KEY,
 writer_name VARCHAR(255) NOT NULL UNIQUE,
 email VARCHAR(255) NOT NULL UNIQUE
)

CREATE TABLE directors(
 director_id SERIAL PRIMARY KEY,
 director_name VARCHAR(255) NOT NULL UNIQUE,
 country VARCHAR(255) NOT NULL
)

CREATE TABLE stars(
 star_id SERIAL PRIMARY KEY,
 star_name VARCHAR(255) NOT NULL UNIQUE,
 date_of_birth VARCHAR(255) NOT NULL
)


Database Insertion:
INSERT INTO films(title, release_year, genre, score, director_id, writer_id, star_id) VALUES ('2001: A Space Odyssey', 1968, 'Science Fiction', 10, 1, 1, 1);
INSERT INTO films(title, release_year, genre, score, director_id, writer_id, star_id) VALUES ('Star Wars: A New Hope', 1977, 'Science Fiction', 7, 2, 2, 2);
INSERT INTO films(title, release_year, genre, score, director_id, writer_id, star_id) VALUES ('To Kill A Mockingbird', 1962, 'Science Fiction', 10, 3, 3, 3);
INSERT INTO films(title, release_year, genre, score, director_id, writer_id, star_id) VALUES ('Titanic', 1997, 'Romance', 5, 4, 4, 4);
INSERT INTO films(title, release_year, genre, score, director_id, writer_id, star_id) VALUES ('Dr Zhivago', 1965, 'Historoical', 8, 5, 5, 5);
INSERT INTO films(title, release_year, genre, score, director_id, writer_id, star_id) VALUES ('El Cid', 1961, 'Historical', 6, 6, 6, 6);
INSERT INTO films(title, release_year, genre, score, director_id, writer_id, star_id) VALUES ('Voyage to Cythera', 1984, 'Drama', 8, 7, 7, 7);
INSERT INTO films(title, release_year, genre, score, director_id, writer_id, star_id) VALUES ('Soldier of Orange', 1977, 'Thriller', 8, 8, 8, 8);
INSERT INTO films(title, release_year, genre, score, director_id, writer_id, star_id) VALUES ('Three Colours: Blue', 1993, 'Drama', 8, 9, 9, 9);
INSERT INTO films(title, release_year, genre, score, director_id, writer_id, star_id) VALUES ('Cyrano de Bergerac', 1980, 'Historical', 9, 10, 10, 10);

INSERT INTO writers(writer_name, email) VALUES ('Arthur C Clarke', 'arthur@clarke.com');
INSERT INTO writers(writer_name, email) VALUES ('George Lucas', 'george@email.com');
INSERT INTO writers(writer_name, email) VALUES ('Harper Lee', 'harper@lee.com');
INSERT INTO writers(writer_name, email) VALUES ('James Cameron', 'james@cameron.com');
INSERT INTO writers(writer_name, email) VALUES ('Boris Pasternak', 'boris@boris.com');
INSERT INTO writers(writer_name, email) VALUES ('Frederick Frank', 'fred@frank.com');
INSERT INTO writers(writer_name, email) VALUES ('Theodoros Angelopoulos', 'theo@angelopoulos.com');
INSERT INTO writers(writer_name, email) VALUES ('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com');
INSERT INTO writers(writer_name, email) VALUES ('Krzysztof Kieslowsk', 'email@email.com');
INSERT INTO writers(writer_name, email) VALUES ('Edmond Rostand', 'edmond@rostand.com');

INSERT INTO stars(star_name, date_of_birth) VALUES ('Keir Dullea', '30/05/1936');
INSERT INTO stars(star_name, date_of_birth) VALUES ('Mark Hamill', '25/09/1951');
INSERT INTO stars(star_name, date_of_birth) VALUES ('Gregory Peck', '05/04/1916');
INSERT INTO stars(star_name, date_of_birth) VALUES ('Leonardo Dicaprio', '11/11/1974');
INSERT INTO stars(star_name, date_of_birth) VALUES ('Julie Christie', '14/04/1940');
INSERT INTO stars(star_name, date_of_birth) VALUES ('Charlton Heston', '04/10/1923');
INSERT INTO stars(star_name, date_of_birth) VALUES ('Manos Katrakis', '14/08/1908');
INSERT INTO stars(star_name, date_of_birth) VALUES ('Rutger Hauer', '23/01/1944');
INSERT INTO stars(star_name, date_of_birth) VALUES ('Juliette Binoche', '09/03/1964');
INSERT INTO stars(star_name, date_of_birth) VALUES ('Gerard Depardieu', '27/12/1948');

INSERT INTO directors(director_name, country) VALUES ('Stanley Kubrick', 'USA');
INSERT INTO directors(director_name, country) VALUES ('George Lucas', 'USA');
INSERT INTO directors(director_name, country) VALUES ('Robert Mulligan', 'USA');
INSERT INTO directors(director_name, country) VALUES ('James Cameron', 'Canada');
INSERT INTO directors(director_name, country) VALUES ('David Lean', 'UK');
INSERT INTO directors(director_name, country) VALUES ('Anthony Mann', 'USA');
INSERT INTO directors(director_name, country) VALUES ('Theodoros Angelopoulos', 'Greece');
INSERT INTO directors(director_name, country) VALUES ('Paul Verhoeven', 'Netherlands');
INSERT INTO directors(director_name, country) VALUES ('Krzyszstof Kieslowski', 'Poland');
INSERT INTO directors(director_name, country) VALUES ('Jean-Paul Rappeneau', 'France');


Database selections:
SELECT title, director_name FROM films
JOIN directors ON films.director_id = directors.director_id;

SELECT title, director_name, star_name FROM films
JOIN directors ON films.director_id = directors.director_id
JOIN stars ON films.star_id = stars.star_id;

SELECT title FROM films
JOIN directors ON films.director_id = directors.director_id 
WHERE directors.country = 'USA';

SELECT title, release_year, genre, score FROM films
JOIN directors ON films.director_id = directors.director_id
JOIN writers ON films.writer_id = writers.writer_ID
WHERE directors.director_name = writers.writer_name;

SELECT director_name, title FROM films
JOIN directors ON films.director_id = directors.director_id 
WHERE score > 7;

SELECT title, release_year, genre, score FROM films
JOIN directors ON films.director_id = directors.director_id
WHERE directors.director_name LIKE '%George%';

SELECT title, release_year, genre, score FROM films
JOIN writers ON films.writer_id = writers.writer_id
WHERE writers.email LIKE '%email%';

SELECT director_name, title, genre, score FROM films
JOIN directors ON films.director_id = directors.director_id
WHERE genre = 'Science Fiction';

SELECT director_name,star_name, date_of_birth, title, genre, score FROM films
JOIN directors ON films.director_id = directors.director_id
JOIN stars ON films.star_id = stars.star_id
WHERE genre = 'Historical';

SELECT title, genre, score, director_name, star_name, writer_name FROM films
JOIN directors ON films.director_id = directors.director_id
JOIN stars ON films.star_id = stars.star_id
JOIN writers ON films.writer_id = writers.writer_id;




Extension 1:


Extension 2:

