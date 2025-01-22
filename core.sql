-- Creates director table
CREATE TABLE director (
    director_id SERIAL PRIMARY KEY,
    director_name VARCHAR(255) NOT NULL,
    director_country VARCHAR(100) NOT NULL
);

-- Creates star table
CREATE TABLE star (
    star_id SERIAL PRIMARY KEY,
    star_name VARCHAR(255) NOT NULL,
    star_dob VARCHAR(255) NOT NULL
);

-- Creates writer table
CREATE TABLE writer (
    writer_id SERIAL PRIMARY KEY,
    writer_name VARCHAR(255) NOT NULL,
    writer_email VARCHAR(255) NOT NULL
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

-- Inserts into director
INSERT INTO director (director_name, director_country) VALUES
('Stanley Kubrick', 'USA'),
('George Lucas', 'USA'),
('Robert Mulligan', 'USA'),
('James Cameron', 'Canada'),
('David Lean', 'UK'),
('Anthony Mann', 'USA'),
('Theodoros Angelopoulos', 'Greece'),
('Paul Verhoeven', 'Netherlands'),
('Krzysztof Kieslowski', 'Poland'),
('Jean-Paul Rappeneau', 'France');

-- Inserts into star
INSERT INTO star (star_name, star_dob) VALUES
('Keir Dullea', '30/05/1936'),
('Mark Hamill', '25/09/1951'),
('Gregory Peck', '05/04/1916'),
('Leonardo DiCaprio', '11/11/1974'),
('Julie Christie', '14/04/1940'),
('Charlton Heston', '04/10/1923'),
('Manos Katrakis', '14/08/1908'),
('Rutger Hauer', '23/01/1944'),
('Juliette Binoche', '09/03/1964'),
('Gerard Depardieu', '27/12/1948');

-- Inserts into writer
INSERT INTO writer (writer_name, writer_email) VALUES
('Arthur C Clarke', 'arthur@clarke.com'),
('George Lucas', 'george@email.com'),
('Harper Lee', 'harper@lee.com'),
('James Cameron', 'james@cameron.com'),
('Boris Pasternak', 'boris@boris.com'),
('Frederick Frank', 'fred@frank.com'),
('Theodoros Angelopoulos', 'theo@angelopoulos.com'),
('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com'),
('Krzysztof Kieslowski', 'email@email.com'),
('Edmond Rostand', 'edmond@rostand.com');

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
SELECT film.film_title, director.director_name
FROM film
JOIN director ON film.director_id = director.director_id;

-- Shows the title, director and star name for all films
SELECT film.film_title, director.director_name, star.star_name
FROM film
JOIN director ON film.director_id = director.director_id
JOIN star on film.star_id = star.star_id;

-- Shows the title of films where the director is from the USA
SELECT film.film_title
FROM film
JOIN director ON film.director_id = director.director_id
WHERE director.director_country = 'USA';

-- Shows only those films where the writer and the director are the same person
SELECT film.film_title
FROM film
JOIN director ON film.director_id = director.director_id
JOIN writer ON film.writer_id = writer.writer_id
WHERE director.director_name = writer.writer_name;

-- Shows directors and film titles for films with a score of 8 or higher
SELECT director.director_name, film.film_title
FROM director
JOIN film on director.director_id = film.director_id
WHERE film.film_score >= 8;

-- Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables

-- Query 1, Shows writer name and email of movies released 1990 or later
SELECT writer.writer_name, writer.writer_email
FROM writer
JOIN film ON writer.writer_id = film.writer_id
WHERE film.film_release_year >= 1990;

-- Query 2, Shows director names ordered by ascending film score
SELECT director.director_name
FROM director
JOIN film ON director.director_id = film.film_id
ORDER BY film.film_score ASC;

-- Query 3, Shows film titles ordered in directors country alfabetically order
SELECT film.film_title
FROM film
JOIN director ON film.director_id = director.director_id
ORDER BY director.director_country ASC;

-- Query 4, Shows all director names that have worked with Keir Dullea 
SELECT DISTINCT director.director_name
FROM director
JOIN film ON director.director_id = film.director_id
JOIN star ON film.star_id = star.star_id
WHERE star.star_name = 'Keir Dullea';

-- Query 5, Shows everything as a single monolithic table
SELECT film.film_id, film.film_title, director.director_name, director.director_country, star.star_name, star.star_dob, writer.writer_name, writer.writer_email, film.film_release_year, film.film_genre, film.film_score
FROM film
JOIN director ON film.director_id = director.director_id
JOIN star on film.star_id = star.star_id
JOIN writer on film.writer_id = writer.writer_id;