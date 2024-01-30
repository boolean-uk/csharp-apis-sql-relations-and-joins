DROP TABLE IF EXISTS Films;
DROP TABLE IF EXISTS Directors;
DROP TABLE IF EXISTS Stars;
DROP TABLE IF EXISTS Writers;

--------------------------------------

CREATE TABLE Directors(
	ID serial PRIMARY KEY,
	name varchar(100),
	country varchar(40)
);

CREATE TABLE Stars(
	ID serial PRIMARY KEY,
	name varchar(100),
	dateOfBirth date
);

CREATE TABLE Writers(
	ID serial PRIMARY KEY,
	name varchar(100),
	email varchar(200)
);

CREATE TABLE Films(
	ID serial PRIMARY KEY,
	title varchar(255),
	directorID integer REFERENCES Directors(ID), 
	writerID integer REFERENCES Writers(ID), 
	starID integer REFERENCES Stars(ID),
	releaseYear integer,
	genre varchar(50),
	score integer
);

--------------------------------------------------------------

INSERT INTO Films (title, directorID, writerID, starID, releaseYear, score, genre) VALUES
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

INSERT INTO Directors (name, country) VALUES
  ('Stanley Kubrick', 		 'USA'),
  ('George Lucas', 			 'USA'),
  ('Robert Mulligan', 		 'USA'),
  ('James Cameron', 		 'Canada'),
  ('David Lean', 			 'UK'),
  ('Anthony Mann', 			 'USA'),
  ('Theodoros Angelopoulos', 'Greece'),
  ('Paul Verhoeven', 		 'Netherlands'),
  ('Krzysztof Kieslowski', 	 'Poland'),
  ('Jean-Paul Rappeneau', 	 'France');


INSERT INTO Stars (name, dateOfBirth) VALUES
  ('Keir Dullea', 		'1936-05-30'),
  ('Mark Hamill', 		'1951-09-25'),
  ('Gregory Peck', 		'1916-04-05'),
  ('Leonardo DiCaprio', '1974-11-11'),
  ('Julie Christie', 	'1940-04-14'),
  ('Charlton Heston', 	'1923-10-04'),
  ('Manos Katrakis', 	'1908-08-14'),
  ('Rutger Hauer', 		'1944-01-23'),
  ('Juliette Binoche', 	'1964-03-09'),
  ('Gerard Depardieu', 	'1948-12-27');


INSERT INTO Writers (name, email) VALUES
	('Arthur C Clarke', 		 'arthur@clarke.com'),
	('George Lucas', 			 'george@email.com'),
	('Harper Lee', 				 'harper@lee.com'),
	('James Cameron', 			 'james@cameron.com'),
	('Boris Pasternak', 		 'boris@boris.com'),
	('Frederick Frank', 		 'fred@frank.com'),
	('Theodoros Angelopoulos',	 'theo@angelopoulos.com'),
	('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com'),
	('Krzysztof Kieslowsk', 	 'email@email.com'),
	('Edmond Rostand', 			 'edmond@rostand.com');

---------------------------------------------------------------
--Show the title and director name for all films
SELECT Films.title film_Title, Directors.name director 
FROM Films
LEFT JOIN Directors ON films.directorID = Directors.ID;

--Show the title, director and star name for all films
SELECT Films.title, Directors.name director, Stars.Name star FROM Films
LEFT JOIN Directors ON Films.directorID = Directors.ID
LEFT JOIN Stars ON Films.starID = Stars.ID;

--Show the title of films where the director is from the USA
SELECT Films.title, Directors.name director, Directors.country director_country 
FROM Films
LEFT JOIN Directors ON Films.directorID = Directors.ID
WHERE directors.country = 'USA';

--Show only those films where the writer and the director are the same person
SELECT Films.title, Writers.name writer_and_director 
FROM Films
LEFT JOIN Directors ON Films.directorID = Directors.ID
LEFT JOIN Writers ON Films.writerID = Writers.ID
WHERE Directors.name = Writers.Name;

--Show directors and film titles for films with a score of 8 or higher
SELECT Directors.name director, Films.title, Films.score 
FROM Films
LEFT JOIN Directors ON Films.directorID = Directors.ID
WHERE Films.score >= 8;

--Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.
SELECT Films.score, Films.Title, Films.genre, Films.releaseYear release_year, Directors.name director, Stars.name star, Writers.name writer FROM Films
LEFT JOIN Directors ON Films.directorID = Directors.ID
LEFT JOIN Writers ON Films.writerID = Writers.ID
LEFT JOIN Stars ON Films.starID = Stars.ID;

SELECT Films.score, Films.Title, Films.genre, Films.releaseYear release_year, Directors.name director, Stars.name star, Writers.name writer FROM Films
LEFT JOIN Directors ON Films.directorID = Directors.ID
LEFT JOIN Writers ON Films.writerID = Writers.ID
LEFT JOIN Stars ON Films.starID = Stars.ID
WHERE score > 7 ORDER BY Films.score DESC;

SELECT Films.score, Films.Title, Films.genre, Films.releaseYear release_year, Directors.name director, Stars.name star, Writers.name writer 
FROM Films
LEFT JOIN Directors ON Films.directorID = Directors.ID
LEFT JOIN Writers ON Films.writerID = Writers.ID
LEFT JOIN Stars ON Films.starID = Stars.ID
WHERE Films.title = 'Star Wars: A New Hope';

SELECT Films.Title, Films.releaseYear release_year, Directors.name director, Stars.name star 
FROM Films
LEFT JOIN Directors ON Films.directorID = Directors.ID
LEFT JOIN Stars ON Films.starID = Stars.ID
WHERE Stars.name = 'Gregory Peck';

SELECT Films.Title, Films.releaseYear release_year, Directors.name director 
FROM Films
INNER JOIN Directors ON Films.directorID = Directors.ID