/*
CREATE TABLE Films(
id serial primary key,
title varchar(255) not null,
releaseDate int not null,
genre varchar (255) not null,
score int not NULL,
director_FK int not null,
star_FK int not null,
writer_FK int not null


);

CREATE TABLE Directors(
id serial primary key,
name varchar(255) not NULL,
country VARCHAR (255) not NULL

);

CREATE TABLE Star(
id serial primary key,
name varchar(255) not null,
DOB varchar(255) not null
);

CREATE TABLE Writer(
id serial primary key,
name varchar(255) not NULL,
email varchar (255) not null
);
*/

--SELECT * FROM films


/*
SELECT f.title, d."name", s."name" FROM films f
LEFT JOIN directors d ON f.director_fk = d.id
LEFT JOIN star s ON f.star_fk = s.id
*/


/*
SELECT f.title AS film_title, 
       d.name AS director_name, 
       d.country AS director_country
FROM films f, directors d
WHERE f.director_fk = d.id;
*/
/*
SELECT f.title AS film_title, 
       d.name AS director_name, 
       w.name AS writer_name
FROM films f
JOIN directors d ON f.director_fk = d.id
JOIN writers w ON f.writer_fk = w.id
WHERE d.name = w.name;
*/
-- ALTER TABLE writer rename to writers 
/*
SELECT 	d.name AS director_name,
		f.title AS film_title,
		f.score AS film_score
FROM 	directors d
JOIN 	films f ON d.id = f.director_fk
WHERE 	f.score >=8;
*/

