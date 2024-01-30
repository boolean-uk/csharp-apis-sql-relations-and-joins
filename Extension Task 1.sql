/*
## Extension Task 1

1. Refactor the database tables so that the Actors, Directors and Writers all identify people (using a Foreign Key) that are present in a single People table
2. Where necessary refactor the queries to take advantage of this new structure


=> 

writers.fk_people_id REFERENCES people.id (since people can have the same name we separate by id)

people(
    id SERIAL PRIMARY KEY,
    name varchar(255) NOT NULL
)

*/

-- create

CREATE TABLE people(
    id SERIAL PRIMARY KEY,
    name varchar(255) NOT NULL,
    country varchar(255),
    email varchar(255),
    dob varchar(10)
)

CREATE TABLE films (
  id SERIAL PRIMARY KEY,
  title varchar(255) NOT NULL UNIQUE,
  genre varchar(30),
  release_year integer, 
  score integer,
  fk_director_id int REFERENCES people(id),
  fk_star_id int REFERENCES people(id),
  fk_writer_id int REFERENCES people(id)
);

--insert
INSERT INTO people (name, country, email, dob)VALUES 
('Stanley Kubrick','USA', NULL, NULL ),
('George Lucas', 'USA', 'george@email.com',NULL),
('Robert Mulligan','USA', NULL, NULL),
('James Cameron', 'Canada','james@cameron.com', NULL),	
('David Lean', 'UK', NULL,NULL),	
('Anthony Mann', 'USA', NULL,NULL),	
('Theodoros Angelopoulos', 'Greece','theo@angelopoulos.com' ,NULL),
('Paul Verhoeven','Netherlands',NULL, NULL),
('Krzysztof Kieslowski','Poland',NULL, NULL),
('Jean-Paul Rappeneau','France',NULL, NULL),
('Keir Dullea',NULL ,NULL, '30/05/1936'),	         
('Mark Hamill',NULL,NULL, '25/09/1951'),	     
('Gregory Peck',NULL, NULL, '05/04/1916'),     
('Leonardo DiCaprio',NULL, NULL, '11/11/1974'),
('Julie Christie',NULL, NULL,'14/04/1940'),   
('Charlton Heston',NULL, NULL,'04/10/1923'),	 
( 'Manos Katrakis',NULL, NULL,'14/08/1908'), 
('Rutger Hauer'	,NULL, NULL,'23/01/1944'), 
('Juliette Binoche'	,NULL, NULL,'09/03/1964'), 
('Gerard Depardieu'	 ,NULL, NULL,'27/12/1948'),
('Arthur C Clarke',NULL, 'arthur@clarke.com',NULL), 
('Harper Lee',NULL, 'harper@lee.com',NULL),  
('Boris Pasternak',NULL, 'boris@boris.com',NULL), 
('Frederick Frank',NULL, 'fred@frank.com',NULL), 
('Erik Hazelhoff Roelfzema',NULL, 'erik@roelfzema.com',NULL), 
('Krzysztof Kieslowsk',NULL, 'email@email.com',NULL), 	 
('Edmond Rostand',NULL, 'edmond@rostand.com',NULL);


INSERT INTO films (title , release_year , genre, score, fk_director_id, fk_star_id, fk_writer_id)
VALUES
('2001: A Space Odyssey'    , 1968,	'Science Fiction'  ,10, 1, 11, 21),
(	'Star Wars: A New Hope' , 1977,	'Science Fiction'  ,7, 2,12,2  ),
(	'To Kill A Mockingbird' , 1962,	'Drama'	           ,10,3,13,22 ),
(	'Titanic'			    , 1997,	'Romance'	       ,5,4,14,4  ),
(	'Dr Zhivago'			, 1965,	'Historical'	   ,8,5,15,23  ),
(	'El Cid'				, 1961,	'Historical'	   ,6,6,16,24  ),
(	'Voyage to Cythera'		, 1984,	'Drama'	           ,8,7,17,7  ),
(	'Soldier of Orange'		, 1977,	'Thriller'	       ,8,8,18,25  ),
(	'Three Colours: Blue'	, 1993,	'Drama'	           ,8,9,19,26  ),
(	'Cyrano de Bergerac'	, 1990,	'Historical'       ,9,10,20,27  );


--  1. Show the title and director name for all films

SELECT f.title, p.name AS "Director" FROM films f
LEFT JOIN people p ON f.fk_director_id  = p.id;

--  2. Show the title, director and star name for all films

SELECT title AS "Title", d.name AS "Director", s.name AS "Star" FROM films f 
LEFT JOIN people d ON f.fk_director_id = d.id
LEFT JOIN people s ON f.fk_star_id = s.id;

--  3. Show the title of films where the director is from the USA

SELECT title AS "American directed movies" FROM films f INNER JOIN people ON f.fk_director_id = people.id WHERE people.country LIKE '%USA%';

--  4. Show only those films where the writer and the director are the same person

SELECT f.id,f.title, f.genre, f.release_year, f.score, people.name AS "Director & Writer" FROM films f 
INNER JOIN people ON f.fk_director_id = people.id
WHERE f.fk_writer_id = f.fk_director_id;

--  5. Show directors and film titles for films with a score of 8 or higher
SELECT f.title, f.score, people.name AS "Director" FROM films f 
LEFT JOIN people ON f.fk_director_id = people.id 
WHERE f.score >= 8;

--  6. Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.

-- show stars from all movies with a score of 5 or higher
SELECT people.name AS "Featuring star", f.title, f.genre, f.release_year, f.score FROM people  
INNER JOIN films f ON f.fk_star_id = people.id 
WHERE f.score >= 5;

-- get all writers of "Historical" movies

SELECT p.name AS "Author", f.title, f.genre, f.release_year FROM films f
INNER JOIN people p ON f.fk_writer_id = p.id 
WHERE f.genre ILIKE '%historical%';

-- all movies group by Directors country and movie genre

SELECT p.country , f.genre, COUNT(f.id) FROM films f  
LEFT JOIN people p ON f.fk_director_id = p.id 
GROUP BY f.genre, p.country;

-- get number of directors pr country on movies before 1980 

SELECT d.country , COUNT(f.id) AS "Number of Directors"  FROM films f  
LEFT JOIN people d ON f.fk_director_id = d.id
WHERE f.release_year < 1980
GROUP BY d.country;

-- get a full table of all movies with writer, director and star info, if the star is born in the 1940's
SELECT * FROM films f  
LEFT JOIN people.name d ON f.fk_director_id = d.id
LEFT JOIN people.name w ON f.fk_writer_id = w.id
LEFT JOIN people.name s ON f.fk_star_id = s.id
WHERE people.dob LIKE '%194_';
