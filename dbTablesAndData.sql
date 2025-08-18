CREATE TABLE Roles (
  id SERIAL primary key,
  name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE Genres (
  id SERIAL primary key,
  name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE Countries (
  id SERIAL primary key,
  name VARCHAR(100) UNIQUE NOT NULL
);

CREATE table People (
  id SERIAL primary key,
  name VARCHAR(100) UNIQUE NOT NULL,
  dob date NULL,
  email VARCHAR(100) NULL,
  country_fk INTEGER NULL,
  FOREIGN KEY (country_fk) REFERENCES Countries(id)
);

CREATE TABLE PeopleRole (
  people_fk INTEGER NOT NULL,
  role_fk INTEGER NOT NULL,
  FOREIGN KEY (people_fk) REFERENCES People(id),
  FOREIGN KEY (role_fk) REFERENCES Roles(id),
  PRIMARY KEY (people_fk, role_fk)
);

CREATE TABLE Movies (
  id SERIAL primary key,
  title VARCHAR(100) UNIQUE NOT NULL, 
  year INTEGER NOT NULL,
  rating INTEGER CONSTRAINT rating_range CHECK (rating BETWEEN 0 AND 10) NOT NULL,
  genre_fk INTEGER NOT NULL,
  director_fk INTEGER NOT NULL,
  star_fk INTEGER NOT NULL, 
  writer_fk INTEGER NOT NULL,
  FOREIGN KEY (genre_fk) references Genres(id),
  FOREIGN KEY (director_fk) REFERENCES People(id),
  FOREIGN KEY (star_fk) REFERENCES People(id),
  FOREIGN KEY (writer_fk) REFERENCES People(id)
);


INSERT INTO roles (name)
VALUES 
  ('director'),
  ('star'),
  ('writer');


INSERT INTO countries (name)
VALUES 
  ('USA'),
  ('CANADA'),
  ('UK'),
  ('Greece'),
  ('Netherlands'),
  ('Poland'),
  ('France');


INSERT INTO Genres (name)
VALUES 
  ('Science Fiction'),
  ('Drama'),
  ('Romance'),
  ('Historical'),
  ('Thriller');

INSERT INTO people (name, dob, email, country_fk)
VALUES 
  ('Stanley Kubrick',          NULL,       null, 1),
  ('George Lucas',             NULL,       'george@email.com', 1),
  ('Robert Mulligan',          NULL,       null, 1),
  ('James Cameron',            NULL,       'james@cameron.com', 2),
  ('David Lean',               null,       null, 3),
  ('Anthony Mann',             null,       null, 1),
  ('Theodoros Angelopoulos',   null,       'theo@angelopoulos.com', 4),
  ('Paul Verhoeven',           null,       null, 5),
  ('Krzysztof Kieslowski',     null,       'email@email.com', 6),
  ('Jean-Paul Rappeneau',      null,       null, 7),
  ('Keir Dullea',              '1936-05-30', NULL, NULL),
  ('Mark Hamill',              '1951-09-25', NULL, NULL),
  ('Gregory Peck',             '1916-04-05', NULL, NULL),
  ('Leonardo DiCaprio',        '1974-11-11', NULL, NULL),
  ('Julie Christie',           '1940-04-14', NULL, NULL),
  ('Charlton Heston',          '1923-10-04', NULL, NULL),
  ('Manos Katrakis',           '1908-08-14', NULL, NULL),
  ('Rutger Hauer',             '1944-01-23', NULL, NULL),
  ('Juliette Binoche',         '1964-03-09', NULL, NULL),
  ('Gerard Depardieu',         '1948-12-27', NULL, NULL),
  ('Arthur C Clarke',          NULL,	   'arthur@clarke.com',  null),
  ('Harper Lee',               NULL,	   'harper@lee.com',     null),
