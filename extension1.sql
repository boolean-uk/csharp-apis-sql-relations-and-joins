-- Creates person table
CREATE TABLE person (
    person_id SERIAL PRIMARY KEY,
    person_name VARCHAR(255) NOT NULL,
    person_country VARCHAR(255),
    person_dob VARCHAR(255),
    person_email VARCHAR(255)
);

-- Creates director table
CREATE TABLE director (
    director_id SERIAL PRIMARY KEY,
    person_id INT NOT NULL,
    FOREIGN KEY (person_id) REFERENCES person(person_id)
);

-- Creates star table
CREATE TABLE star (
    star_id SERIAL PRIMARY KEY,
    person_id INT NOT NULL,
    FOREIGN KEY (person_id) REFERENCES person(person_id)
);

-- Creates writer table
CREATE TABLE writer (
    writer_id SERIAL PRIMARY KEY,
    person_id INT NOT NULL,
    FOREIGN KEY (person_id) REFERENCES person(person_id)
);

-- Creates film table
CREATE TABLE film (
    film_id SERIAL PRIMARY KEY,
    film_title VARCHAR(255) NOT NULL,
    director_id INT NOT NULL,
    star_id INT NOT NULL,
    writer_id INT NOT NULL,
    film_release_year INT NOT NULL,
    film_genre VARCHAR(100) NOT NULL,
    film_score INT NOT NULL,
    FOREIGN KEY (director_id) REFERENCES director(director_id),
    FOREIGN KEY (star_id) REFERENCES star(star_id),
    FOREIGN KEY (writer_id) REFERENCES writer(writer_id)
);

-- Inserts into person
INSERT INTO person (person_name, person_country, person_dob, person_email) VALUES
('Stanley Kubrick', 'USA', '1928/07/26', NULL),
('George Lucas', 'USA', '1944/05/14', 'george@email.com'),
('Robert Mulligan', 'USA', '1925/08/23', NULL),
('James Cameron', 'Canada', '1954/08/16', 'james@cameron.com'),
('David Lean', 'UK', '1908/03/25', NULL),
('Anthony Mann', 'USA', '1906/06/30', NULL),
('Theodoros Angelopoulos', 'Greece', '1935/04/27', 'theo@angelopoulos.com'),
('Paul Verhoeven', 'Netherlands', '1938/07/18', NULL),
('Krzysztof Kieslowski', 'Poland', '1941/06/27', 'email@email.com'),
('Jean-Paul Rappeneau', 'France', '1932/04/24', NULL),
('Keir Dullea', NULL, '1936/05/30', NULL),
('Mark Hamill', NULL, '1951/09/25', NULL),
('Gregory Peck', NULL, '1916/04/05', NULL),
('Leonardo DiCaprio', NULL, '1974/11/11', NULL),
('Julie Christie', NULL, '1940/04/14', NULL),
('Charlton Heston', NULL, '1923/10/04', NULL),
('Manos Katrakis', NULL, '1908/08/14', NULL),
('Rutger Hauer', NULL, '1944/01/23', NULL),
('Juliette Binoche', NULL, '1964/03/09', NULL),
('Gerard Depardieu', NULL, '1948/12/27', NULL),
('Arthur C Clarke', NULL, NULL, 'arthur@clarke.com'),
('Harper Lee', NULL, NULL, 'harper@lee.com'),
('Boris Pasternak', NULL, NULL, 'boris@boris.com'),
('Frederick Frank', NULL, NULL, 'fred@frank.com'),
('Erik Hazelhoff Roelfzema', NULL, NULL, 'erik@roelfzema.com'),
('Edmond Rostand', NULL, NULL, 'edmond@rostand.com');

-- Inserts into director
INSERT INTO director (person_id) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);

-- Inserts into star
INSERT INTO star (person_id) VALUES
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20);

-- Inserts into writer
INSERT INTO writer (person_id) VALUES
(21),
(2),
(22),
(4),
(23),
(24),
(7),
(25),
(9),
(26);

-- Inserts into film
INSERT INTO film (film_title, director_id, star_id, writer_id, film_genre, film_release_year, film_score) VALUES
('2001: A Space Odyssey', 1, 1, 1, 'Science Fiction', 1968, 10),
('Star Wars: A New Hope', 2, 2, 2, 'Science Fiction', 1977, 7),
('To Kill A Mockingbird', 3, 3, 3, 'Drama', 1962, 10),
('Titanic', 4, 4, 4, 'Romance', 1997, 5),
('Dr Zhivago', 5, 5, 5, 'Historical', 1965, 8),
('El Cid', 6, 6, 6, 'Historical', 1961, 6),
('Voyage to Cythera', 7, 7, 7, 'Drama', 1984, 8),
('Soldier of Orange', 8, 8, 8, 'Thriller', 1977, 8),
('Three Colours: Blue', 9, 9, 9, 'Drama', 1993, 8),
('Cyrano de Bergerac', 10, 10, 10, 'Historical', 1990, 9);

-- Shows the title and director name for all films
SELECT film.film_title, person.person_name AS director_name
FROM film
JOIN director ON film.director_id = director.director_id
JOIN person ON director.person_id = person.person_id;

-- Shows the title, director and star name for all films
SELECT film.film_title, person.person_name AS director_name, star_person.person_name AS star_name
FROM film
JOIN director ON film.director_id = director.director_id
JOIN person ON director.person_id = person.person_id
JOIN star ON film.star_id = star.star_id
JOIN person AS star_person ON star.person_id = star_person.person_id;

-- Shows the title of films where the director is from the USA
SELECT film.film_title
FROM film
JOIN director ON film.director_id = director.director_id
JOIN person ON director.person_id = person.person_id
WHERE person.person_country = 'USA';

-- Shows only those films where the writer and the director are the same person
SELECT film.film_title
FROM film
JOIN director ON film.director_id = director.director_id
JOIN person AS director_person ON director.person_id = director_person.person_id
JOIN writer ON film.writer_id = writer.writer_id
JOIN person AS writer_person ON writer.person_id = writer_person.person_id
WHERE director_person.person_name = writer_person.person_name;

-- Shows directors and film titles for films with a score of 8 or higher
SELECT person.person_name AS director_name, film.film_title
FROM director
JOIN film ON director.director_id = film.director_id
JOIN person ON director.person_id = person.person_id
WHERE film.film_score >= 8;

-- Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables

-- Query 1, Shows writer name and email of movies released 1990 or later
SELECT person.person_name AS writer_name, person.person_email AS writer_email
FROM writer
JOIN film ON writer.writer_id = film.writer_id
JOIN person ON writer.person_id = person.person_id
WHERE film.film_release_year >= 1990;

-- Query 2, Shows director names ordered by ascending film score
SELECT person.person_name AS director_name
FROM director
JOIN film ON director.director_id = film.director_id
JOIN person ON director.person_id = person.person_id
ORDER BY film.film_score ASC;

-- Query 3, Shows film titles ordered in directors country alfabetically order
SELECT film.film_title
FROM film
JOIN director ON film.director_id = director.director_id
JOIN person ON director.person_id = person.person_id
ORDER BY person.person_country ASC;

-- Query 4, Shows all director names that have worked with Keir Dullea 
SELECT DISTINCT person.person_name AS director_name
FROM director
JOIN film ON director.director_id = film.director_id
JOIN star ON film.star_id = star.star_id
JOIN person ON director.person_id = person.person_id
JOIN person AS star_person ON star.person_id = star_person.person_id
WHERE star_person.person_name = 'Keir Dullea';

-- Query 5, Shows everything as a single monolithic table
SELECT film.film_id, film.film_title, director_person.person_name AS director_name, director_person.person_country AS director_country, star_person.person_name AS star_name, star_person.person_dob AS star_dob, writer_person.person_name AS writer_name, writer_person.person_email AS writer_email, film.film_release_year, film.film_genre, film.film_score
FROM film
JOIN director ON film.director_id = director.director_id
JOIN person AS director_person ON director.person_id = director_person.person_id
JOIN star ON film.star_id = star.star_id
JOIN person AS star_person ON star.person_id = star_person.person_id
JOIN writer ON film.writer_id = writer.writer_id
JOIN person AS writer_person ON writer.person_id = writer_person.person_id;