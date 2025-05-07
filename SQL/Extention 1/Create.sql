﻿CREATE TABLE films(
 id serial PRIMARY KEY,
 directorId INTEGER REFERENCES directors(id),
 writerId INTEGER REFERENCES writers(id),
 starId INTEGER REFERENCES actors(id),
 title VARCHAR(255) NOT NULL,
 release_year INTEGER NOT NULL,
 score INTEGER NOT NULL,
 genre VARCHAR(255) NOT NULL,
 UNIQUE(title)
);

CREATE TABLE directors(
 id serial PRIMARY KEY,
 personId INTEGER REFERENCES people(id),
 country VARCHAR(255) NOT NULL
);

CREATE TABLE writers(
 id serial PRIMARY KEY,
 personId INTEGER REFERENCES people(id),
 email VARCHAR(255) NOT NULL
);

CREATE TABLE actors(
 id serial PRIMARY KEY,
 personId INTEGER REFERENCES people(id),
 DOB DATE NOT NULL
);

CREATE TABLE people(
id serial PRIMARY KEY,
name VARCHAR(255) NOT NULL
)