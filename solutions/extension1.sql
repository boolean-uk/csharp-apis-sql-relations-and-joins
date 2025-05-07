-- Create People table
CREATE TABLE people (
    id serial primary key,
    name varchar(255),
    dob date,
    email varchar(255),
    role varchar(50), -- Actor, Director, or Writer
    country varchar(255)
);

-- Create Film table
CREATE TABLE film (
    id serial primary key,
    title varchar(255),
    directorId int references people(id),
    starId int references people(id),
    writerId int references people(id),
    release_year int,
    genre varchar(255),
    score int
);

-- Insert people
INSERT INTO people (name, dob, email, role, country) VALUES
    ('Keir Dullea', '1936-05-30', NULL, 'Actor', NULL),
    ('Mark Hamill', '1951-09-25', NULL, 'Actor', NULL),
    ('Gregory Peck', '1916-04-05', NULL, 'Actor', NULL),
    ('Leonardo DiCaprio', '1974-11-11', NULL, 'Actor', NULL),
    ('Julie Christie', '1940-04-14', NULL, 'Actor', NULL),
    ('Charlton Heston', '1923-10-04', NULL, 'Actor', NULL),
    ('Manos Katrakis', '1908-08-14', NULL, 'Actor', NULL),
    ('Rutger Hauer', '1944-01-23', NULL, 'Actor', NULL),
    ('Juliette Binoche', '1964-03-09', NULL, 'Actor', NULL),
    ('Gerard Depardieu', '1948-12-27', NULL, 'Actor', NULL),
    ('Stanley Kubrick', NULL, NULL, 'Director', 'USA'),
    ('George Lucas', NULL, NULL, 'Director', 'USA'),
    ('Robert Mulligan', NULL, NULL, 'Director', 'USA'),
    ('James Cameron', NULL, NULL, 'Director', 'Canada'),
    ('David Lean', NULL, NULL, 'Director', 'UK'),
    ('Anthony Mann', NULL, NULL, 'Director', 'USA'),
    ('Theodoros Angelopoulos', NULL, NULL, 'Director', 'Greece'),
    ('Paul Verhoeven', NULL, NULL, 'Director', 'Netherlands'),
    ('Krzysztof Kieslowski', NULL, NULL, 'Director', 'Poland'),
    ('Jean-Paul Rappeneau', NULL, NULL, 'Director', 'France'),
    ('Arthur C Clarke', NULL, 'arthur@clarke.com', 'Writer', NULL),
    ('George Lucas', NULL, 'george@email.com', 'Writer', NULL),
    ('Harper Lee', NULL, 'harper@lee.com', 'Writer', NULL),
    ('James Cameron', NULL, 'james@cameron.com', 'Writer', NULL),
    ('Boris Pasternak', NULL, 'boris@boris.com', 'Writer', NULL),
    ('Frederick Frank', NULL, 'fred@frank.com', 'Writer', NULL),
    ('Theodoros Angelopoulos', NULL, 'theo@angelopoulos.com', 'Writer', NULL),
    ('Erik Hazelhoff Roelfzema', NULL, 'erik@roelfzema.com', 'Writer', NULL),
    ('Krzysztof Kieslowski', NULL, 'email@email.com', 'Writer', NULL),
    ('Edmond Rostand', NULL, 'edmond@rostand.com', 'Writer', NULL);

-- Insert films
INSERT INTO film (title, directorId, writerId, starId, release_year, genre, score) VALUES
    ('2001: A Space Odyssey', 11, 21, 1, 1968, 'Science Fiction', 10),
    ('Star Wars: A New Hope', 12, 22, 2, 1977, 'Science Fiction', 7),
    ('To Kill A Mockingbird', 13, 23, 3, 1962, 'Drama', 10),
    ('Titanic', 14, 24, 4, 1997, 'Romance', 5),
    ('Dr Zhivago', 15, 25, 5, 1965, 'Historical', 8),
    ('El Cid', 16, 26, 6, 1961, 'Historical', 6),
    ('Voyage to Cythera', 17, 27, 7, 1984, 'Drama', 8),
    ('Soldier of Orange', 18, 28, 8, 1977, 'Thriller', 8),
    ('Three Colours: Blue', 19, 29, 9, 1993, 'Drama', 8),
    ('Cyrano de Bergerac', 20, 30, 10, 1990, 'Historical', 9);

------------------------------------- Core tasks ------------------------------------------

-- Show the title and director name for all films
SELECT film.title, people.name AS director 
FROM film 
JOIN people ON film.directorid = people.id;

-- -- Show the title, director and star name for all films
SELECT film.title, director.name AS director, star.name AS star
FROM film
JOIN people AS director ON film.directorId = director.id
JOIN people AS star ON film.starId = star.id;



-- Show the title of films where the director is from the USA
SELECT film.title 
FROM film 
JOIN people ON film.directorId = people.id 
WHERE people.country = 'USA';

-- Show only those films where the writer and the director are the same person
SELECT film.title, director.name AS director, writer.name AS writer 
FROM film 
JOIN people AS director ON film.directorid = director.id 
JOIN people AS writer ON film.writerid = writer.id 
WHERE director.name = writer.name;

-- Show directors and film titles for films with a score of 8 or higher
SELECT film.title, director.name AS director, film.score 
FROM film 
JOIN people AS director ON film.directorid = director.id 
WHERE film.score >= 8;

-- Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.
-- Query 1: Show all movies and directores for films made after 1980 
SELECT film.title, director.name AS director, film.release_year
FROM film
JOIN people AS director ON film.directorId = director.id
WHERE film.release_year > 1980;

-- Query 2: Show the titles and genres of films along with the names of their stars
SELECT film.title, film.genre, star.name AS star
FROM film
JOIN people AS star ON film.starid = star.id;

--Query 3: Display the names of writers and the titles of films the have written
SELECT film.title, writer.name AS writer
FROM film
JOIN people AS writer ON film.writerid = writer.id
WHERE film.writerid = writerid;

-- Query 4: Display the names of stars born before 1950 who starred in films with a score of 7 or higher
SELECT star.name, star.dob, film.title, film.score
FROM people AS star
JOIN film ON star.id = film.starId
WHERE star.dob < '1950-01-01' AND film.score >= 7;

-- Query 5: List the titles of films in the 'Drama' genre along with the names of their writers
SELECT film.title, writer.name AS writer
FROM film
JOIN people AS writer ON film.writerId = writer.id
WHERE film.genre = 'Drama';
