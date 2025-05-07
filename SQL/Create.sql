﻿CREATE TABLE films(
 id serial PRIMARY KEY,
 directorId INTEGER REFERENCES directors(id),
 writerId INTEGER REFERENCES writers(id),
 starId INTEGER REFERENCES stars(id),
 title VARCHAR(255) NOT NULL,
 release_year INTEGER NOT NULL,
 score INTEGER NOT NULL,
 genre VARCHAR(255) NOT NULL,
 UNIQUE(title)
);

CREATE TABLE directors(
 id serial PRIMARY KEY,
 name VARCHAR(255) NOT NULL,
 country VARCHAR(255) NOT NULL
);

CREATE TABLE writers(
 id serial PRIMARY KEY,
 name VARCHAR(255) NOT NULL,
 email VARCHAR(255) NOT NULL
);

CREATE TABLE stars(
 id serial PRIMARY KEY,
 name VARCHAR(255) NOT NULL,
 DOB DATE NOT NULL
);