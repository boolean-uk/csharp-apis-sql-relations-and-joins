CREATE TABLE directors(
	id serial PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	director_country VARCHAR(50) NOT NULL,
	UNIQUE(name)
)

CREATE TABLE stars(
	id serial PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	dateOfBirth DATE NOT NULL,
	UNIQUE(name)
)

CREATE TABLE writers(
	id serial PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	email VARCHAR(255) NOT NULL,
	UNIQUE(name)
)

CREATE TABLE films(
	id serial PRIMARY KEY,
	title VARCHAR(255) NOT NULL,
	directorId INTEGER NOT NULL,
	starId INTEGER NOT NULL,
	writerId INTEGER NOT NULL,
	release_year INTEGER NOT NULL,
	genre VARCHAR(50) NOT NULL,
	score INTEGER,
	UNIQUE(title)
)
