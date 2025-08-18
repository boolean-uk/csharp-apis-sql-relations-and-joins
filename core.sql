CREATE TABLE Director (
    id SERIAL PRIMARY KEY,
    name VARCHAR (100) NOT NULL, 
    country VARCHAR (100) NOT NULL
);

CREATE TABLE Star (
    id SERIAL PRIMARY KEY,
    name VARCHAR (100) NOT NULL, 
    birthdate DATE NOT NULL
);

CREATE TABLE Writer (
    id SERIAL PRIMARY KEY,
    name VARCHAR (100) NOT NULL, 
    email VARCHAR (100) NOT NULL
);
CREATE TABLE Film (
    id SERIAL PRIMARY KEY,
    title VARCHAR (100) NOT NULL, 
    year_made INTEGER NOT NULL,
    genre VARCHAR (100) NOT NULL,
    score INTEGER NOT NULL,
    director_id INTEGER REFERENCES Director(id),
    star_id INTEGER REFERENCES Star(id),
    writer_id INTEGER REFERENCES Writer(id)
);

-- Film inserts
INSERT INTO Film (title, director_id, star_id, writer_id, year_made, genre, score) VALUES
('2001: A Space Odyssey', 1, 1, 1, 1968, 'Science Fiction', 10),
('Star Wars: A New Hope', 2, 2, 2, 1977, 'Science Fiction', 7),
('To Kill A Mockingbird', 3, 3, 3, 1962, 'Drama', 10),
('Titanic', 4, 4, 4, 1997, 'Romance', 5),
('Dr Zhivago', 5, 5, 5, 1965, 'Historical', 8),
('El Cid', 6, 6, 6, 1961, 'Historical', 6),
('Voyage to Cythera', 7, 7, 7, 1984, 'Drama', 8),
('Soldier of Orange', 8, 8, 8, 1977, 'Thriller', 8),
('Three Colours: Blue', 9, 9, 9, 1993, 'Drama', 8),
('Cyrano de Bergerac', 10, 10, 10, 1990, 'Historical', 9);

-- Director inserts
INSERT INTO Director (name, country) VALUES
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

-- Star inserts
INSERT INTO Star (name, birthdate) VALUES
('Keir Dullea', '1936-05-30'),
('Mark Hamill', '1951-09-25'),
('Gregory Peck', '1916-04-05'),
('Leonardo DiCaprio', '1974-11-11'),
('Julie Christie', '1940-04-14'),
('Charlton Heston', '1923-10-04'),
('Manos Katrakis', '1908-08-14'),
('Rutger Hauer', '1944-01-23'),
('Juliette Binoche', '1964-03-09'),
('Gerard Depardieu', '1948-12-27');

-- Writer inserts
INSERT INTO Writer (name, email) VALUES
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


--Show the title and director name for all films
SELECT title, director FROM Film

--Show the title, director and star name for all films
SELECT title, director, star FROM Film

--Show the title of films where the director is from the USA
SELECT Film.title
From Film
JOIN Director director ON Film.id = Director.id 
WHERE Director.country = 'USA'

--Show only those films where the writer and the director are the same person
SELECT Film.title
FROM Film
JOIN Director ON Film.director_id = Director.id
JOIN Writer ON Film.writer_id = Writer.id
WHERE Director.name = Writer.name;

--Show directors and film titles for films with a score of 8 or higher
SELECT Director.name AS film_director, Film.title as film_title
FROM Film
JOIN Director ON Film.director_id = Director.id
WHERE Film.Score > 8

--Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.

--1. Find films made before the year 1970
SELECT title 
FROM Film
WHERE year_made > 1970

--2. Show films ordered by descending year made with the most recent first
SELECT title
FROM Film 
ORDER BY year_made DESC 

--3. Show only the historical movies made by frenchmans
SELECT f.title
FROM Film f
JOIN Director d ON d.id = f.director_id
WHERE f.genre = 'Historical' AND d.country = 'France'
  
--4. Find all stars who acted in at least one movie
SELECT s.name AS star, COUNT(f.title) AS movies_acted_in
FROM Star s
JOIN Film f ON f.star_id = s.id
GROUP BY star
HAVING COUNT(f.title) > 0



