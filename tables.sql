-- tables

CREATE TABLE People(
id serial PRIMARY KEY,
name VARCHAR (100) NOT NULL,
email VARCHAR (100),
country_fk INTEGER,
dob DATE
);



CREATE TABLE Countries(
id serial PRIMARY KEY,
countryname VARCHAR (50) NOT NULL
);


CREATE TABLE Films(
id serial PRIMARY KEY,
title VARCHAR (200),
year INTEGER NOT NULL,
genre VARCHAR (50),
score INTEGER
);

CREATE TABLE Directors(
id serial PRIMARY KEY,
film_fk INTEGER NOT NULL,
person_fk INTEGER NOT NULL

);

CREATE TABLE Writers(
id serial PRIMARY KEY,
film_fk INTEGER NOT NULL,
person_fk INTEGER NOT NULL
);

CREATE TABLE FilmCast(
id serial PRIMARY KEY,
film_fk INTEGER NOT NULL,
person_fk INTEGER NOT NULL
);


-- populate

INSERT into countries (countryname) VALUES ('USA');
INSERT into countries (countryname) VALUES ('UK');
INSERT into countries (countryname) VALUES ('Canada');
INSERT into countries (countryname) VALUES ('Greece');
INSERT into countries (countryname) VALUES ('Netherlands');
INSERT into countries (countryname) VALUES ('Poland');
INSERT into countries (countryname) VALUES ('France');


INSERT INTO people (name, email, country_fk, dob) VALUES ('Stanley Kubrick', NULL, 1, NULL);
INSERT INTO people (name, email, country_fk, dob) VALUES ('George Lucas', 'george@email.com', 1, NULL);
INSERT INTO people (name, email, country_fk, dob) VALUES ('Robert Mulligan', NULL, 1, NULL);
INSERT INTO people (name, email, country_fk, dob) VALUES ('James Cameron', 'james@cameron.com', 3, NULL);
INSERT INTO people (name, email, country_fk, dob) VALUES ('David Lean', NULL, 2, NULL);

INSERT INTO people (name, email, country_fk, dob) VALUES ('Anthony Mann', NULL, 1, NULL);
INSERT INTO people (name, email, country_fk, dob) VALUES ('Theodoros Angelopoulos', 'theo@angelopoulos.com', 4, NULL);
INSERT INTO people (name, email, country_fk, dob) VALUES ('Paul Verhoeven', NULL, 5, NULL);
INSERT INTO people (name, email, country_fk, dob) VALUES ('Krzysztof Kieslowski', 'email@email.com', 6, NULL);
INSERT INTO people (name, email, country_fk, dob) VALUES ('Jean-Paul Rappeneau', NULL, 7, NULL);


INSERT INTO people (name, email, country_fk, dob) VALUES ('Keir Dullea', NULL, NULL, '1936-05-30');
INSERT INTO people (name, email, country_fk, dob) VALUES ('Mark Hamill', NULL, NULL, '1951-09-25');
INSERT INTO people (name, email, country_fk, dob) VALUES ('Gregory Peck', NULL, NULL, '1916-04-05');
INSERT INTO people (name, email, country_fk, dob) VALUES ('Leonardo DiCaprio', NULL, NULL, '1974-11-11');
INSERT INTO people (name, email, country_fk, dob) VALUES ('Julie Christie', NULL, NULL, '1940-04-14');

INSERT INTO people (name, email, country_fk, dob) VALUES ('Charlton Heston', NULL, NULL, '1923-10-04');
INSERT INTO people (name, email, country_fk, dob) VALUES ('Manos Katrakis', NULL, NULL, '1908-08-14');
INSERT INTO people (name, email, country_fk, dob) VALUES ('Rutger Hauer', NULL, NULL, '1944-01-23');
INSERT INTO people (name, email, country_fk, dob) VALUES ('Juliette Binoche', NULL, NULL, '1964-03-09');
INSERT INTO people (name, email, country_fk, dob) VALUES ('Gerard Depardieu', NULL, NULL, '1948-12-27');


INSERT INTO people (name, email, country_fk, dob) VALUES ('Arthur C Clarke', 'arthur@clarke.com', NULL, NULL);
INSERT INTO people (name, email, country_fk, dob) VALUES ('Harper Lee', 'harper@lee.com', NULL, NULL);
INSERT INTO people (name, email, country_fk, dob) VALUES ('Boris Pasternak', 'boris@boris.com', NULL, NULL);
INSERT INTO people (name, email, country_fk, dob) VALUES ('Frederick Frank', 'fred@frank.com', NULL, NULL);
INSERT INTO people (name, email, country_fk, dob) VALUES ('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com', NULL, NULL);
INSERT INTO people (name, email, country_fk, dob) VALUES ('Edmon Rostand', 'edmond@rostand.com', NULL, NULL);


INSERT INTO films (title, year, genre, score) VALUES ('2001: A Space Odyssey', 1968, 'Science Fiction', 10);
INSERT INTO films (title, year, genre, score) VALUES ('Star Wars: A New Hope', 1977, 'Science Fiction', 7);
INSERT INTO films (title, year, genre, score) VALUES ('To Kill A Mockingbird', 1962, 'Drama', 10);
INSERT INTO films (title, year, genre, score) VALUES ('Titanic', 1997, 'Romance', 5);
INSERT INTO films (title, year, genre, score) VALUES ('Dr Zhivago', 1965, 'Historical', 8);

INSERT INTO films (title, year, genre, score) VALUES ('El Cid', 1961, 'Historical', 6);
INSERT INTO films (title, year, genre, score) VALUES ('Voyage to Cythera', 1984, 'Drama', 8);
INSERT INTO films (title, year, genre, score) VALUES ('Soldier of Orange', 1977, 'Thriller', 8);
INSERT INTO films (title, year, genre, score) VALUES ('Three Colours: Blue', 1993, 'Drama', 8);
INSERT INTO films (title, year, genre, score) VALUES ('Cyrano de Bergerac', 1990, 'Historical', 9);

-- director table
INSERT INTO directors (film_fk, person_fk) VALUES (1, 1);
INSERT INTO directors (film_fk, person_fk) VALUES (2, 2);
INSERT INTO directors (film_fk, person_fk) VALUES (3, 3);
INSERT INTO directors (film_fk, person_fk) VALUES (4, 4);
INSERT INTO directors (film_fk, person_fk) VALUES (5, 5);

INSERT INTO directors (film_fk, person_fk) VALUES (6, 6);
INSERT INTO directors (film_fk, person_fk) VALUES (7, 7);
INSERT INTO directors (film_fk, person_fk) VALUES (8, 8);
INSERT INTO directors (film_fk, person_fk) VALUES (9, 9);
INSERT INTO directors (film_fk, person_fk) VALUES (10, 10);

-- writers table 
INSERT INTO writers (film_fk, person_fk) VALUES (1, 11);
INSERT INTO writers (film_fk, person_fk) VALUES (2, 2);
INSERT INTO writers (film_fk, person_fk) VALUES (3, 22);
INSERT INTO writers (film_fk, person_fk) VALUES (4, 4);
INSERT INTO writers (film_fk, person_fk) VALUES (5, 23);
INSERT INTO writers (film_fk, person_fk) VALUES (6, 24);
INSERT INTO writers (film_fk, person_fk) VALUES (7, 7);
INSERT INTO writers (film_fk, person_fk) VALUES (8, 25);
INSERT INTO writers (film_fk, person_fk) VALUES (9, 9);
INSERT INTO writers (film_fk, person_fk) VALUES (10, 26);

-- cast film
INSERT INTO filmcast (film_fk, person_fk) VALUES (1, 11);
INSERT INTO filmcast (film_fk, person_fk) VALUES (2, 12);
INSERT INTO filmcast (film_fk, person_fk) VALUES (3, 13);
INSERT INTO filmcast (film_fk, person_fk) VALUES (4, 14);
INSERT INTO filmcast (film_fk, person_fk) VALUES (5, 15);

INSERT INTO filmcast (film_fk, person_fk) VALUES (6, 16);
INSERT INTO filmcast (film_fk, person_fk) VALUES (7, 17);
INSERT INTO filmcast (film_fk, person_fk) VALUES (8, 18);
INSERT INTO filmcast (film_fk, person_fk) VALUES (9, 19);
INSERT INTO filmcast (film_fk, person_fk) VALUES (10, 20);































