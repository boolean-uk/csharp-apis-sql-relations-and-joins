CREATE TABLE People (
    id SERIAL PRIMARY KEY,
    name VARCHAR (100) NOT NULL,
    birthdate DATE,
    country VARCHAR (100),
    email VARCHAR (100) UNIQUE
);

CREATE TABLE Film (
    id SERIAL PRIMARY KEY,
    title VARCHAR (100) NOT NULL, 
    year_made INTEGER NOT NULL,
    genre VARCHAR (100) NOT NULL,
    score INTEGER NOT NULL,
    -- Foreign keys
    director_id INTEGER REFERENCES People(id),
    star_id INTEGER REFERENCES People(id),
    writer_id INTEGER REFERENCES People(id)
);

-- People Inserts

-- Both director and writer
INSERT INTO People (id, name, birthdate, country, email) VALUES (4, 'George Lucas', NULL, 'USA', 'george@email.com');
INSERT INTO People (id, name, birthdate, country, email) VALUES (9, 'James Cameron', NULL, 'Canada', 'james@cameron.com');
INSERT INTO People (id, name, birthdate, country, email) VALUES (17, 'Theodoros Angelopoulos', NULL, 'Greece', 'theo@angelopoulos.com');
INSERT INTO People (id, name, birthdate, country, email) VALUES (22, 'Krzysztof Kieslowski', NULL, 'Poland', 'email@email.com');

-- Only Directors
INSERT INTO People (id, name, birthdate, country, email) VALUES (1, 'Stanley Kubrick', NULL, 'USA', NULL);
INSERT INTO People (id, name, birthdate, country, email) VALUES (6, 'Robert Mulligan', NULL, 'USA', NULL);
INSERT INTO People (id, name, birthdate, country, email) VALUES (11, 'David Lean', NULL, 'UK', NULL);
INSERT INTO People (id, name, birthdate, country, email) VALUES (14, 'Anthony Mann', NULL, 'USA', NULL);
INSERT INTO People (id, name, birthdate, country, email) VALUES (19, 'Paul Verhoeven', NULL, 'Netherlands', NULL);
INSERT INTO People (id, name, birthdate, country, email) VALUES (24, 'Jean-Paul Rappeneau', NULL, 'France', NULL);

-- Only Writers
INSERT INTO People (id, name, birthdate, country, email) VALUES (3, 'Arthur C Clarke', NULL, NULL, 'arthur@clarke.com');
INSERT INTO People (id, name, birthdate, country, email) VALUES (8, 'Harper Lee', NULL, NULL, 'harper@lee.com');
INSERT INTO People (id, name, birthdate, country, email) VALUES (13, 'Boris Pasternak', NULL, NULL, 'boris@boris.com');
INSERT INTO People (id, name, birthdate, country, email) VALUES (16, 'Frederick Frank', NULL, NULL, 'fred@frank.com');
INSERT INTO People (id, name, birthdate, country, email) VALUES (21, 'Erik Hazelhoff Roelfzema', NULL, NULL, 'erik@roelfzema.com');
INSERT INTO People (id, name, birthdate, country, email) VALUES (26, 'Edmond Rostand', NULL, NULL, 'edmond@rostand.com');

-- Only Stars
INSERT INTO People (id, name, birthdate, country, email) VALUES (2, 'Keir Dullea', '1936-05-30', NULL, NULL);
INSERT INTO People (id, name, birthdate, country, email) VALUES (5, 'Mark Hamill', '1951-09-25', NULL, NULL);
INSERT INTO People (id, name, birthdate, country, email) VALUES (7, 'Gregory Peck', '1916-04-05', NULL, NULL);
INSERT INTO People (id, name, birthdate, country, email) VALUES (10, 'Leonardo DiCaprio', '1974-11-11', NULL, NULL);
INSERT INTO People (id, name, birthdate, country, email) VALUES (12, 'Julie Christie', '1940-04-14', NULL, NULL);
INSERT INTO People (id, name, birthdate, country, email) VALUES (15, 'Charlton Heston', '1923-10-04', NULL, NULL);
INSERT INTO People (id, name, birthdate, country, email) VALUES (18, 'Manos Katrakis', '1908-08-14', NULL, NULL);
INSERT INTO People (id, name, birthdate, country, email) VALUES (20, 'Rutger Hauer', '1944-01-23', NULL, NULL);
INSERT INTO People (id, name, birthdate, country, email) VALUES (23, 'Juliette Binoche', '1964-03-09', NULL, NULL);
INSERT INTO People (id, name, birthdate, country, email) VALUES (25, 'Gerard Depardieu', '1948-12-27', NULL, NULL);


--Film Inserts
INSERT INTO Film (id, title, year_made, genre, score, director_id, star_id, writer_id)
VALUES (1, '2001: A Space Odyssey', 1968, 'Science Fiction', 10, 1, 2, 3);

INSERT INTO Film (id, title, year_made, genre, score, director_id, star_id, writer_id)
VALUES (2, 'Star Wars: A New Hope', 1977, 'Science Fiction', 7, 4, 5, 4);

INSERT INTO Film (id, title, year_made, genre, score, director_id, star_id, writer_id)
VALUES (3, 'To Kill A Mockingbird', 1962, 'Drama', 10, 6, 7, 8);

INSERT INTO Film (id, title, year_made, genre, score, director_id, star_id, writer_id)
VALUES (4, 'Titanic', 1997, 'Romance', 5, 9, 10, 9);

INSERT INTO Film (id, title, year_made, genre, score, director_id, star_id, writer_id)
VALUES (5, 'Dr Zhivago', 1965, 'Historical', 8, 11, 12, 13);

INSERT INTO Film (id, title, year_made, genre, score, director_id, star_id, writer_id)
VALUES (6, 'El Cid', 1961, 'Historical', 6, 14, 15, 16);

INSERT INTO Film (id, title, year_made, genre, score, director_id, star_id, writer_id)
VALUES (7, 'Voyage to Cythera', 1984, 'Drama', 8, 17, 18, 17);

INSERT INTO Film (id, title, year_made, genre, score, director_id, star_id, writer_id)
VALUES (8, 'Soldier of Orange', 1977, 'Thriller', 8, 19, 20, 21);

INSERT INTO Film (id, title, year_made, genre, score, director_id, star_id, writer_id)
VALUES (9, 'Three Colours: Blue', 1993, 'Drama', 8, 22, 23, 22);

INSERT INTO Film (id, title, year_made, genre, score, director_id, star_id, writer_id)
VALUES (10, 'Cyrano de Bergerac', 1990, 'Historical', 9, 24, 25, 26);


-- QUERIES

--Show the title and director name for all films
SELECT f.title, p.name AS director_name
FROM Film f
JOIN People p ON p.id = f.director_id

--Show the title, director and star name for all films
SELECT f.title, d.name AS director_name, s.name AS star_name
FROM Film f
LEFT JOIN People d ON d.id = f.director_id  
LEFT JOIN People s ON s.id = f.star_id

--Show the title of films where the director is from the USA
SELECT f.title
FROM Film f
LEFT JOIN People d ON d.id = f.director_id
WHERE d.country = 'USA'

--Show only those films where the writer and the director are the same person
SELECT f.title
FROM Film f 
LEFT JOIN People d ON d.id = f.director_id
LEFT JOIN People w ON w.id = f.writer_id
WHERE w.id = d.id

--Show directors and film titles for films with a score of 8 or higher
SELECT d.name AS director, f.title AS film_title
FROM Film f
JOIN People d ON d.id = f.director_id
WHERE f.score > 8

--Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.


--1. Show films made before the year 1980
SELECT title
FROM Film 
WHERE year_made < 1980

--2. Show only science fiction movies made by americans
SELECT f.title
FROM Film f
JOIN People d ON d.id = f.director_id
WHERE f.genre = 'Science Fiction' AND d.country = 'USA'

--3. Count how many of the films that was directed and written by the same person
SELECT COUNT(title) AS number_of_movies_w_same_director_writer_count
FROM Film
WHERE director_id = writer_id

--4. Find all genres that have more than 1 film with a score greater than 7
SELECT f.genre, COUNT(f.title) AS films_in_genre
FROM Film f
WHERE f.score > 7
GROUP BY f.genre
HAVING COUNT(f.title) > 1

--5. List all directors who have directed at least one film, and show how many films each of them directed.
SELECT d.name AS director, COUNT(f.title) AS number_of_films_directed
FROM Film f
JOIN People d ON d.id = f.director_id
GROUP BY d.name
HAVING COUNT(f.title) >= 1
ORDER BY number_of_films_directed DESC
