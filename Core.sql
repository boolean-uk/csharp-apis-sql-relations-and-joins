-- create

CREATE TABLE directors(
  id SERIAL PRIMARY KEY,
  name varchar(255) NOT NULL UNIQUE,
  country varchar(30)
);

CREATE TABLE writers(
  id SERIAL PRIMARY KEY,
  name varchar(255) NOT NULL UNIQUE,
  email varchar(30)
);

CREATE TABLE stars(
  id SERIAL PRIMARY KEY,
  name varchar(255) NOT NULL UNIQUE,
  dob varchar(10)
);

CREATE TABLE films (
  id SERIAL PRIMARY KEY,
  title varchar(255) NOT NULL UNIQUE,
  genre varchar(30),
  release_year integer, 
  score integer,
  fk_director_id int REFERENCES directors(id),
  fk_writer_id int REFERENCES writers(id),
  fk_star_id int REFERENCES stars(id)
);


--insert
INSERT INTO directors (name, country) 
VALUES
('Stanley Kubrick'	,'USA'),
('George Lucas',	'USA'			),
('Robert Mulligan',	'USA'			),
('James Cameron',	'Canada'		),
('David Lean',		'UK'			),
('Anthony Mann',	'USA'),
('Theodoros Angelopoulos','Greece'	),
('Paul Verhoeven',	'Netherlands'	),
('Krzysztof Kieslowski',	'Poland'),	
('Jean-Paul Rappeneau',	'France'	);
 
INSERT INTO stars (name, dob)
VALUES
('Keir Dullea'	,'30/05/1936'),
  ( 'Mark Hamill'	    ,'25/09/1951'	 ),
	('Gregory Peck'	    ,'05/04/1916'	 ),
	('Leonardo DiCaprio'	,'11/11/1974'),
	('Julie Christie'   ,'14/04/1940'),     
	('Charlton Heston'    ,'04/10/1923'),	
  ( 'Manos Katrakis'	 ,'14/08/1908'	 ), 
	('Rutger Hauer'	    ,'23/01/1944'	 ), 
	('Juliette Binoche'	,'09/03/1964'	 ), 
	('Gerard Depardieu'	,'27/12/1948'	 ); 

INSERT INTO writers (name, email)
VALUES
('Arthur C Clarke',	'arthur@clarke.com'),
('George Lucas','george@email.com'),	             
('Harper Lee'	  ,'harper@lee.com'),	             
('James Cameron','james@cameron.com'),	             
('Boris Pasternak','boris@boris.com'),	             
('Frederick Frank'	,'fred@frank.com'),	             
('Theodoros Angelopoulos','theo@angelopoulos.com'),
('Erik Hazelhoff Roelfzema','erik@roelfzema.com'),	 
('Krzysztof Kieslowsk'	 ,'email@email.com'),	     
('Edmond Rostand'	 ,'edmond@rostand.com');     


INSERT INTO films (title , release_year , genre, score, fk_director_id, fk_star_id, fk_writer_id)
VALUES
('2001: A Space Odyssey'    , 1968,	'Science Fiction'  ,10  , 1,1,1),
(	'Star Wars: A New Hope' , 1977,	'Science Fiction'  ,7   ,2,2,2),
(	'To Kill A Mockingbird' , 1962,	'Drama'	           , 10  ,3,3,3),
(	'Titanic'			    , 1997,	'Romance'	       , 5   ,4,4,4),
(	'Dr Zhivago'			, 1965,	'Historical'	   , 8   ,5,5,5),
(	'El Cid'				, 1961,	'Historical'	   , 6   ,6,6,6),
(	'Voyage to Cythera'		, 1984,	'Drama'	           , 8   ,7,7,7),
(	'Soldier of Orange'		, 1977,	'Thriller'	       , 8   ,8,8,8),
(	'Three Colours: Blue'	, 1993,	'Drama'	           , 8   ,9,9,9),
(	'Cyrano de Bergerac'	, 1990,	'Historical'       , 9   ,10,10,10);


--  1. Show the title and director name for all films
SELECT title, d.name FROM films f LEFT JOIN directors d ON f.fk_director_id = d.id ORDER BY f.title ASC;

--  2. Show the title, director and star name for all films

SELECT title AS "Title", d.name AS "Director", s.name AS "Star" FROM films f 
LEFT JOIN directors d ON f.fk_director_id = d.id
LEFT JOIN stars s ON f.fk_star_id = s.id;

--  3. Show the title of films where the director is from the USA

SELECT title AS "American directed movies" FROM films f INNER JOIN directors ON f.fk_director_id = directors.id WHERE directors.country LIKE '%USA%';

--  4. Show only those films where the writer and the director are the same person

SELECT f.id,f.title, f.genre, f.release_year, f.score, directors.name, writers.name FROM films f 
INNER JOIN directors ON f.fk_director_id = directors.id 
INNER JOIN writers ON f.fk_writer_id = writers.id
WHERE directors.name = writers.name;

--  5. Show directors and film titles for films with a score of 8 or higher
SELECT f.title, f.score, directors.name AS "Director" FROM films f 
LEFT JOIN directors ON f.fk_director_id = directors.id 
WHERE f.score >= 8;

--  6. Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.

-- show stars from all movies with a score of 5 or higher
SELECT stars.name AS "Featuring star", f.title, f.genre, f.release_year, f.score FROM stars  
INNER JOIN films f ON f.fk_star_id = stars.id 
WHERE f.score >= 5;

-- get all writers of "Historical" movies

SELECT writers.name AS "Author", f.title, f.genre, f.release_year FROM writers  
INNER JOIN films f ON f.fk_writer_id = writers.id 
WHERE f.genre ILIKE '%historical%';

-- all movies group by Directors country and movie genre

SELECT d.country , f.genre, COUNT(f.id) FROM films f  
LEFT JOIN directors d ON f.fk_director_id = d.id 
GROUP BY f.genre, d.country;

-- get number of directors pr country on movies before 1980 

SELECT d.country , COUNT(f.id) AS "Number of Directors"  FROM films f  
LEFT JOIN directors d ON f.fk_director_id = d.id
WHERE f.release_year < 1980
GROUP BY d.country;

-- get a full table of all movies with writer, director and star info, if the star is born in the 1940's
SELECT * FROM films f  
LEFT JOIN directors d ON f.fk_director_id = d.id
LEFT JOIN writers w ON f.fk_writer_id = w.id
LEFT JOIN stars s ON f.fk_star_id = s.id
WHERE s.dob LIKE '%194_';
