-- Create Film table
CREATE TABLE film (
	id serial primary key,
	title varchar(255),
	directorId int,
	starId int,
	writerId int,
	release_year int,
	genre varchar(255),
	score int
);

-- Create Director table
CREATE TABLE director (
	id serial primary key,
	name varchar(255),
	country varchar(255)
);

-- Create Star table
CREATE TABLE star (
	id serial primary key, 
	name varchar(255), 
	dob date 
);

-- Create Writer table
CREATE TABLE writer ( 
	id serial primary key, 
	name varchar(255),
	email varchar(255)
);

-- Insert directors
INSERT INTO director (name, country) VALUES
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

-- Insert stars
INSERT INTO star (name, dob) VALUES
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

-- Insert writers
INSERT INTO writer (name, email) VALUES
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

-- Insert films
INSERT INTO film (title, directorId, writerId, starId, release_year, score, genre) VALUES
  ('2001: A Space Odyssey', 1, 1, 1, 1968, 10, 'Science Fiction'),
  ('Star Wars: A New Hope', 2, 2, 2, 1977, 7, 'Science Fiction'),
  ('To Kill A Mockingbird', 3, 3, 3, 1962, 10, 'Drama'),
  ('Titanic', 4, 4, 4, 1997, 5, 'Romance'),
  ('Dr Zhivago', 5, 5, 5, 1965, 8, 'Historical'),
  ('El Cid', 6, 6, 6, 1961, 6, 'Historical'),
  ('Voyage to Cythera', 7, 7, 7, 1984, 8, 'Drama'),
  ('Soldier of Orange', 8, 8, 8, 1977, 8, 'Thriller'),
  ('Three Colours: Blue', 9, 9, 9, 1993, 8, 'Drama'),
  ('Cyrano de Bergerac', 10, 10, 10, 1990, 9, 'Historical');
  
  
SELECT * FROM film;
SELECT * FROM writer;
SELECT * FROM star;
SELECT * FROM director; 

------------------------------------- Core tasks ------------------------------------------

-- Show the title and director name for all films
SELECT film.title, director.name AS director 
FROM film 
JOIN director ON film.directorid = director.id;

-- Show the title, director and star name for all films
SELECT film.title, director.name AS director, star.name AS star 
FROM film 
JOIN director ON film.directorId = director.id 
JOIN star ON film.starId = star.id;

-- Show the title of films where the director is from the USA
SELECT film.title 
FROM film 
JOIN director ON film.directorId = director.id 
WHERE director.country = 'USA';

-- Show only those films where the writer and the director are the same person
SELECT film.title, director.name AS director, writer.name AS writer 
FROM film 
JOIN director ON film.directorid = director.id 
JOIN writer ON film.writerid = writer.id 
WHERE director.name = writer.name;

-- Show directors and film titles for films with a score of 8 or higher
SELECT film.title, director.name AS director, film.score 
FROM film 
JOIN director ON film.directorid = director.id 
WHERE film.score >= 8;

-- Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.
-- Query 1: Show all movies and directores for films made after 1980 
SELECT film.title, director.name AS director, film.release_year
FROM film
JOIN director ON film.directorId = director.id
WHERE film.release_year > 1980;

-- Query 2: Show the titles and genres of films along with the names of their stars
SELECT film.title, film.genre, star.name AS star
FROM film
JOIN star ON film.starid = star.id;

--Query 3: Display the names of writers and the titles of films the have written
SELECT film.title, writer.name AS writer
FROM film
JOIN writer ON film.writerid = writer.id
WHERE film.writerid = writerid;

-- Query 4: Display the names of stars born before 1950 who starred in films with a score of 7 or higher
SELECT star.name, star.dob, film.title, film.score
FROM star
JOIN film ON star.id = film.starId
WHERE star.dob < '1950-01-01' AND film.score >= 7;

-- Query 5: List the titles of films in the 'Drama' genre along with the names of their writers
SELECT film.title, writer.name AS writer
FROM film
JOIN writer ON film.writerId = writer.id
WHERE film.genre = 'Drama';








