--CORE


CREATE TABLE IF NOT EXISTS Director (
	id SERIAL PRIMARY KEY,
	name VARCHAR(250) NOT NULL,
	country VARCHAR(250) NOT NULL
);


CREATE TABLE IF NOT EXISTS Star (
	id SERIAL PRIMARY KEY,
	name VARCHAR(250) NOT NULL,
	date_of_birth DATE NOT NULL
);


CREATE TABLE IF NOT EXISTS Writer (
	id SERIAL PRIMARY KEY,
	name VARCHAR(250) NOT NULL,
	email VARCHAR(250) NOT NULLs
);


CREATE TABLE IF NOT EXISTS Film (
	id SERIAL PRIMARY KEY,
	title VARCHAR(250) NOT NULL,
	year INTEGER NOT NULL,
	genre VARCHAR(250) NOT NULL,
	score INTEGER NOT NULL,
	director_id SERIAL,
	star_id SERIAL,
	writer_id SERIAL,
	FOREIGN KEY (director_id) REFERENCES Director(id),
	FOREIGN KEY (star_id) REFERENCES Star(id),
	FOREIGN KEY (writer_id) REFERENCES Writer(id)
);


INSERT INTO Director 
	(name, country)
VALUES
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


INSERT INTO Star
	(name, date_of_birth)
VALUES 
	('Keir Dullea', '1936-05-30'),
	('Mark Hamill', '1951-09-25'),
	('Gregory Peck', '1916-04-05'),
	('Leonardo DiCaprio', '1974-11-11'),
	('Julie Christie', '1940-04-14'),
	('Charlton Heston', '1923-04-10'),
	('Manos Katrakis', '1908-08-14'),
	('Rutger Hauer', '1944-01-23'),
	('Juliette Binoche', '1964-09-03'),
	('Gerard Depardieu', '1948-12-27');


INSERT INTO Writer 
	(name, email) 
VALUES
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


INSERT INTO Film (title, year, genre, score, director_id, star_id, writer_id) VALUES
    ('2001: A Space Odyssey', 1968, 'Science Fiction', 10, 1, 1, 1),
    ('Star Wars: A New Hope', 1977, 'Science Fiction', 7, 2, 2, 2),
    ('To Kill A Mockingbird', 1962, 'Drama', 10, 3, 3, 3),
    ('Titanic', 1997, 'Romance', 5, 4, 4, 4),
    ('Dr Zhivago', 1965, 'Historical', 8, 5, 5, 5),
    ('El Cid', 1961, 'Historical', 6, 6, 6, 6),
    ('Voyage to Cythera', 1984, 'Drama', 8, 7, 7, 7),
    ('Soldier of Orange', 1977, 'Thriller', 8, 8, 8, 8),
    ('Three Colours: Blue', 1993, 'Drama', 8, 9, 9, 9),
    ('Cyrano de Bergerac', 1990, 'Historical', 9, 10, 10, 10);


-- Show the title and director name for all films
SELECT Film.title, Director.name as director_name
FROM Film  
LEFT JOIN Director ON Film.director_id = Director.id;


-- Show the title, director and star name for all films
SELECT Film.Title, Director.Name as director_name, Star.Name as star_name
FROM Film
LEFT JOIN Director ON Film.director_id = Director.id
LEFT JOIN Star ON Film.director_id = Star.id;


-- Show the title of films where the director is from the USA
SELECT Film.title
FROM Film
LEFT JOIN Director ON Film.director_id = Director.id
WHERE Director.country LIKE 'USA';


-- Show only those films where the writer and the director are the same person
SELECT Film.title
FROM Film
LEFT JOIN Writer ON Film.writer_id = Writer.id
LEFT JOIN Director ON Film.director_id = Director.id
WHERE Writer.name LIKE Director.Name;


-- Show directors and film titles for films with a score of 8 or higher
SELECT Film.title, Director.name as director_name
FROM Film
LEFT JOIN Director ON Film.director_id = Director.id
WHERE Film.score >= 8;


-- Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.

-- 1. Show stars and score for stars who play in films with a score of 10
SELECT Star.Name as star_name, Film.score
FROM Film
LEFT JOIN Star ON Film.star_id = Star.id
WHERE Film.Score = 10;

-- 2. Show directors who direct films with genre 'Thriller'
SELECT Director.name as director_name, FIlm.Genre
FROM Film	
LEFT JOIN Director ON Film.director_id = Director.Id
WHERE Film.genre LIKE 'Thriller';


-- 3. Show year and count of stars who play in films released before 1980, ordered by r elease year descending
SELECT Count(Star.name) as nr_stars, Film.year
FROM Film 
LEFT JOIN Star ON Film.star_id = Star.Id
WHERE Film.year < 1980 
GROUP BY Film.year
ORDER BY Film.year DESC;

-- 4. Show star name and dob for stars who act in films with writer Cameron
SELECT Star.name, Star.date_of_birth, Writer.name
FROM Film
LEFT JOIN Writer ON Film.writer_id = Writer.Id
LEFT JOIN Star ON Film.star_id = Star.Id
WHERE Writer.name LIKE '%Cameron%'

-- 5. Order the movies directed in USA with recent years first, and show the 2 bottom movies and their year
SELECT Film.title, Film.year, Director.country
FROM Film
LEFT JOIN Director ON Film.director_id = Director.id
WHERE Director.country LIKE 'USA'
ORDER BY year DESC
LIMIT 2 OFFSET 2;













