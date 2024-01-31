-- Create directors
CREATE TABLE directors(
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	country VARCHAR(255) NOT NULL
);

-- Create writers 
CREATE TABLE writers(
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL
);

-- Create stars
CREATE TABLE stars(
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	birth DATE NOT NULL DEFAULT CURRENT_DATE
);

--Create movies
CREATE TABLE movies(
	id SERIAL PRIMARY KEY,
	title VARCHAR(255) NOT NULL,
	r_year INTEGER NOT NULL,
	genre VARCHAR(255) NOT NULL,
	score INTEGER NOT NULL,
	director_id INTEGER,
	star_id INTEGER,
	writer_id INTEGER,
	FOREIGN KEY (director_id) REFERENCES directors(id),
	FOREIGN KEY (star_id) REFERENCES stars(id),
	FOREIGN KEY (writer_id) REFERENCES writers(id)	
);

--Insert into stars
INSERT INTO stars(name, birth)
VALUES
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

-- Insert into directors
INSERT INTO directors (name, country) 
VALUES 
('Stanley Kubrick', 'USA'),
('George Lucas', 'USA'),
('Robert Mulligan', 'USA'),
('James Cameron', 'Canada'),
('David Lean', 'UK'),
('Anthony Mann', 'USA'),
('Theodoros Angelopoulos', 'Greece'),
('Paul Verhoeven', 'Netherlands'),
('Krzystof Kieslowski', 'Poland'),
('Jean-Paul Rappeneau', 'France');

-- Insert into writers
INSERT INTO writers(name, email) VALUES 
	('Arthur C Clarke', 'arthur@clarke.com'),
	('George Lucas', 'george@email.com'),
	('Harper Lee', 'harper@lee.com'),
	('James Cameron', 'james@cameron.com'),
	('Boris Pasternak', 'boris@boris.com'),
	('Frederick Frank', 'fred@frank.com'),
	('Theodoros Angelopoulos', 'theo@angelopoulos.com'),
	('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com'),
	('Krzysztof Kieslowsk', 'email@email.com'),
	('Edmond Rostand', 'edmond@rostand.com');

--Insert into movies
INSERT INTO movies(writer_id, star_id, director_id, title, r_year, genre, score)
VALUES
(1, 1, 1, '2001: A Space Odyssey', 1968, 'Science Fiction', 10),
(2, 2, 2, 'Star Wars: A New Hope', 1977, 'Science Fiction', 7),
(3, 3, 3, 'To Kill A Mockingbird', 1962, 'Drama', 10),
(4, 4, 4, 'Titanic', 1997, 'Romance', 5),
(5, 5, 5, 'Dr Zhivago', 1965, 'Historical', 8),
(6, 6, 6, 'El Cid', 1961, 'Historical', 6),
(7, 7, 7, 'Voyage to Cythera', 1984, 'Drama', 8),
(8, 8, 8, 'Soldier of Orange', 1977, 'Thriller', 8),
(9, 9, 9, 'Three Colours: Blue', 1993, 'Drama', 8),
(10, 10, 10, 'Cyrano de Bergerac', 1990, 'Historical', 9);


-- Show the title and director name for all films
SELECT title movietitle, name directorname FROM movies INNER JOIN directors on director_id=directors.id;

-- Show the title, director and star name for all films
SELECT title movietitle, directors.name directorname, stars.name starname FROM movies INNER JOIN directors on director_id=directors.id INNER JOIN stars on star_id=stars.id;

-- Show the title of films where the director is from the USA
SELECT title movietitle from movies inner join directors on director_id=directors.id WHERE directors.country='USA';

-- Show only those films where the writer and the director are the same person
SELECT title movietitle from movies INNER JOIN writers ON writer_id=writers.id INNER JOIN directors ON director_id=directors.id WHERE directors.name=writers.name;

-- Show directors and film titles for films with a score of 8 or higher
SELECT directors.name directorname, title movietitle FROM movies INNER JOIN directors on director_id=directors.id WHERE score>=8;

-- 1. Show everything
SELECT * FROM movies INNER JOIN directors on director_id=directors.id INNER JOIN writers ON writer_id=writers.id INNER JOIN stars ON star_id=stars.id;

-- 2. Show movies released in the 90s
SELECT title, r_year releaseyear FROM movies WHERE r_year >= 1990 AND r_year < 2000;

-- 3. Show number of movies that Mark Hamill starred in
SELECT name, COUNT(*) FROM movies INNER JOIN stars ON star_id=stars.id WHERE stars.name = 'Mark Hamill' GROUP BY stars.name;

-- 4. Show the date of birth for the star in every movie
SELECT title, name, birth FROM movies INNER JOIN stars ON star_id=stars.id;

-- 5. Show directors responsible for movies with 5 or less in score
SELECT name, title, score FROM movies INNER JOIN directors on director_id=directors.id WHERE score<=5;
