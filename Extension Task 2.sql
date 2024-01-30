/*
##Extension Task 2

1. Add a `Cast` table that links Films to Actors (ie the Cast table contains details of all of the Actors in addition to the Star who appear in the Film).
2. You can either add some more people as actors (these can be real actors or just made up names) or just reuse all of the existing people.

*/

CREATE TABLE people(
    id SERIAL PRIMARY KEY,
    name varchar(255) NOT NULL UNIQUE,
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
  fk_writer_id int REFERENCES people(id)
);


CREATE TABLE movie_cast(
    id SERIAL PRIMARY KEY,
    fk_star_name varchar(255) REFERENCES people(name),
    fk_film_id integer REFERENCES films(id),
    fk_actor_id integer REFERENCES people(id)
)

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



INSERT INTO films (title , release_year , genre, score, fk_director_id, fk_writer_id)
VALUES
('2001: A Space Odyssey'    , 1968,	'Science Fiction'  ,10, 1, 21),
(	'Star Wars: A New Hope' , 1977,	'Science Fiction'  ,7, 2,2  ),
(	'To Kill A Mockingbird' , 1962,	'Drama'	           ,10,3,22 ),
(	'Titanic'			    , 1997,	'Romance'	       ,5,4,4  ),
(	'Dr Zhivago'			, 1965,	'Historical'	   ,8,5,23  ),
(	'El Cid'				, 1961,	'Historical'	   ,6,6,24  ),
(	'Voyage to Cythera'		, 1984,	'Drama'	           ,8,7,7  ),
(	'Soldier of Orange'		, 1977,	'Thriller'	       ,8,8,25  ),
(	'Three Colours: Blue'	, 1993,	'Drama'	           ,8,9,26  ),
(	'Cyrano de Bergerac'	, 1990,	'Historical'       ,9,10,27  );

INSERT INTO movie_cast (fk_star_name, fk_film_id, fk_actor_id)VALUES('Boris Pasternak', 2, 20);
INSERT INTO movie_cast (fk_star_name, fk_film_id, fk_actor_id)VALUES('Leonardo DiCaprio', 4, 12);
INSERT INTO movie_cast (fk_star_name, fk_film_id, fk_actor_id)VALUES('Leonardo DiCaprio', 4, 3);
INSERT INTO movie_cast (fk_star_name, fk_film_id, fk_actor_id)VALUES('Jean-Paul Rappeneau', 6, 5);


-- shows film title, name of star and number of actors in the movie
SELECT films.title, mc.fk_star_name AS "Star", COUNT(people.id) 
FROM movie_cast mc
LEFT JOIN films ON mc.fk_film_id = films.id
LEFT JOIN people ON mc.fk_film_id = people.id
GROUP BY films.title, mc.fk_star_name;

-- Includes number people not casted in any movie
SELECT films.title, mc.fk_star_name AS "Star", COUNT(people.id) 
FROM movie_cast mc
LEFT JOIN films ON mc.fk_film_id = films.id
RIGHT JOIN people ON mc.fk_film_id = people.id
GROUP BY films.title, mc.fk_star_name;

-- get country of star in movie "El Cid"
SELECT star.name, star.country, film.title FROM movie_cast
LEFT JOIN people star ON movie_cast.fk_star_name = star.name
RIGHT JOIN films film ON movie_cast.fk_film_id = film.id
WHERE film.title LIKE '%El Cid%';

--get list of actors in movie 'Titanic'

SELECT actor.name AS "Actors", film.title FROM movie_cast
LEFT JOIN people actor ON movie_cast.fk_actor_id = actor.id
RIGHT JOIN films film ON movie_cast.fk_film_id = film.id
WHERE film.title LIKE '%Titanic%';
