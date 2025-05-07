DROP TABLE IF EXISTS director CASCADE;
DROP TABLE IF EXISTS writer CASCADE;
DROP TABLE IF EXISTS film CASCADE;
DROP TABLE IF EXISTS star CASCADE;
DROP TABLE IF EXISTS people CASCADE;

CREATE TABLE people (
    people_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    dob DATE,
    country VARCHAR(50),
    email VARCHAR(50)
);

CREATE TABLE director (
director_id serial PRIMARY KEY,
people_id INT,
CONSTRAINT fk_people
FOREIGN KEY(people_id)
REFERENCES people(people_id)
);

CREATE TABLE star (
star_id serial PRIMARY KEY,
people_id INT,
CONSTRAINT fk_people
FOREIGN KEY(people_id)
REFERENCES people(people_id)
);

CREATE TABLE writer (
writer_id serial PRIMARY KEY,
people_id INT,
CONSTRAINT fk_people
FOREIGN KEY(people_id)
REFERENCES people(people_id)
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
	REFERENCES people(people_id),
CONSTRAINT fk_writer
	FOREIGN KEY(writer_id)
	REFERENCES people(people_id),
CONSTRAINT fk_star
	FOREIGN KEY(star_id)
	REFERENCES people(people_id)
);

