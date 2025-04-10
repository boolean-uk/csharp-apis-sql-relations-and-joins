CREATE TABLE films (
	id serial PRIMARY KEY,
	title VARCHAR ( 50 ),
	year INTEGER,
	genre VARCHAR ( 50 ),
	score INTEGER,
	directorFK INTEGER,
	starFK INTEGER,
	writerFK INTEGER
);

INSERT INTO films 
(title, year, genre, score, directorFK, starFK, writerFK)
VALUES 
('2001: A Space Odyssey', '1968', 'Science Fiction', 10, 1, 1, 1),
('Star Wars: A New Hope', '1977', 'Science Fiction', 7, 2, 2, 2),
('To Kill A Mockingbird', '1962', 'Drama', 10, 3, 3, 3),
('Titanic', '1997', 'Romance', 5, 4, 4, 4),
('Dr Zhivago', '1965', 'Historical', 8, 5, 5, 5),
('El Cid', '1961', 'Historical', 6, 6, 6, 6),
('Voyage to Cythera', '1984', 'Drama', 8, 7, 7, 7),
('Soldier of Orange', '1977', 'Thriller', 8, 8, 8, 8),
('Three Colours: Blue', '1993', 'Drama', 8, 9, 9, 9),
('Cyrano de Bergerac', '1990', 'Historical', 9, 10, 10, 10)

	
CREATE TABLE directors (
	id serial PRIMARY KEY,
	name VARCHAR ( 50 ) NOT NULL,
	country VARCHAR ( 50 ) NOT NULL
);

INSERT INTO directors 
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
('Jean-Paul Rappeneau', 'France')


CREATE TABLE stars (
	id serial PRIMARY KEY,
	name VARCHAR ( 50 ) NOT NULL,
	dob VARCHAR ( 50 ) NOT NULL
);

INSERT INTO stars 
(name, dob)
VALUES
('Keir Dullea', '30/05/1936'),
('Mark Hamill', '25/09/1951'),
('Gregory Peck', '05/04/1916'),
('Leonardo DiCaprio', '11/11/1974'),
('Julie Christie', '14/04/1940'),
('Charlton Heston', '04/10/1923'),
('Manos Katrakis', '14/08/1908'),
('Rutger Hauer', '23/01/1944'),
('Juliette Binoche', '09/03/1964'),
('Gerard Depardieu', '27/12/1948')

CREATE TABLE writers (
	id serial PRIMARY KEY,
	name VARCHAR ( 50 ) NOT NULL,
	email VARCHAR ( 255 ) UNIQUE NOT NULL
);


INSERT INTO writers 
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
('Krzysztof Kieślowski', 'email@email.com'),
('Edmond Rostand', 'edmond@rostand.com')


--Show the title and director name for all films
SELECT f.title, dir.name
FROM films f
LEFT JOIN directors dir ON f.directorfk = dir.id 

--Show the title, director and star name for all films
SELECT f.title, dir.name, s.name
FROM films f
LEFT JOIN directors dir ON f.directorfk = dir.id 
LEFT JOIN stars s ON f.starfk = s.id

--Show the title of films where the director is from the USA
SELECT f.title
FROM films f
LEFT JOIN directors dir ON f.directorfk = dir.id 
WHERE dir.country = 'USA'

--Show only those films where the writer and the director are the same person
SELECT f.title, dir.name, w.name
FROM films f
LEFT JOIN directors dir ON f.directorfk = dir.id
LEFT JOIN writers w ON f.writerfk = w.id
WHERE dir.name = w.name

--Show directors and film titles for films with a score of 8 or higher
SELECT f.title, dir.name
FROM films f
LEFT JOIN directors dir ON f.directorfk = dir.id
WHERE f.score >= 8

--Show the title, director, star and writer name for all films
SELECT f.title, dir.name, w.name, s.name
FROM films f
LEFT JOIN directors dir ON f.directorfk = dir.id
LEFT JOIN writers w ON f.writerfk = w.id
LEFT JOIN stars s On f.starfk = s.id

--Show only those films where the writer and the director are the same person and that person is form Greece
SELECT f.title, dir.name, w.name
FROM films f
LEFT JOIN directors dir ON f.directorfk = dir.id
LEFT JOIN writers w ON f.writerfk = w.id
WHERE dir.name = w.name AND dir.country = 'Greece'

--Show only those films where the writer and the director are NOT the same person and the score is 8 or higher
SELECT f.title, dir.name, w.name, f.score
FROM films f
LEFT JOIN directors dir ON f.directorfk = dir.id
LEFT JOIN writers w ON f.writerfk = w.id
WHERE dir.name != w.name AND f.score >= 8


