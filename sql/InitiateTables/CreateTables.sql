DROP TABLE IF EXISTS director CASCADE;
DROP TABLE IF EXISTS writer CASCADE;
DROP TABLE IF EXISTS film CASCADE;
DROP TABLE IF EXISTS star CASCADE;

CREATE TABLE director (
director_id serial PRIMARY KEY,
name VARCHAR(50),
country VARCHAR(50)
);

CREATE TABLE star (
star_id serial PRIMARY KEY,
name VARCHAR(50),
DOB DATE
);

CREATE TABLE writer (
writer_id serial PRIMARY KEY,
name VARCHAR(50),
email VARCHAR(50)
);

CREATE TABLE film (
film_id serial PRIMARY KEY,
title VARCHAR(50),
year_released INTEGER,
genre VARCHAR(50),
score INTEGER,
director_id INT,
writer_id INT,
star_id INT,
CONSTRAINT fk_director
	FOREIGN KEY(director_id)
	REFERENCES director(director_id),
CONSTRAINT fk_writer
	FOREIGN KEY(writer_id)
	REFERENCES writer(writer_id),
CONSTRAINT fk_star
	FOREIGN KEY(star_id)
	REFERENCES star(star_id)
);

