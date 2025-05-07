--creating tables

CREATE TABLE films (
  id SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  year INTEGER NOT NULL,
  genre VARCHAR(100) NOT NULL,
  rating INTEGER NOT NULL CHECK (rating BETWEEN 0 AND 10)
);

INSERT INTO films (title, year, genre, rating) VALUES
('2001: A Space Odyssey', 1968, 'Science Fiction', 10), --1 
('Star Wars: A New Hope', 1977, 'Science Fiction', 7), --2
('To Kill A Mockingbird', 1962, 'Drama', 10), --3
('Titanic', 1997, 'Romance', 5), --4
('Dr Zhivago', 1965, 'Historical', 8), --5
('El Cid', 1961, 'Historical', 6), --6
('Voyage to Cythera', 1984, 'Drama', 8), --7
('Soldier of Orange', 1977, 'Thriller', 8), --8
('Three Colours: Blue', 1993, 'Drama', 8), --9
('Cyrano de Bergerac', 1990, 'Historical', 9); --10


CREATE TABLE persons(
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL
 );
 
 INSERT INTO persons (name) VALUES
('Stanley Kubrick'), --1
('Keir Dullea'), --2
('Arthur C Clarke'), --3
('George Lucas'), --4
('Mark Hamill'), --5
('Harper Lee'), --6
('Robert Mulligan'), --7
('Gregory Peck'), --8
('James Cameron'), --9
('Leonardo DiCaprio'), --10
('David Lean'), --11
('Julie Christie'), --12
('Boris Pasternak'), --13
('Anthony Mann'), --14
('Charlton Heston'), --15
('Frederick Frank'), --16
('Theodoros Angelopoulos'), --17
('Manos Katrakis'), --18
('Paul Verhoeven'), --19
('Rutger Hauer'), --20
('Erik Hazelhoff Roelfzema'), --21
('Krzysztof Kieslowski'), --22
('Juliette Binoche'), --23
('Jean-Paul Rappeneau'), --24
('Gerard Depardieu'), --25
('Edmond Rostand'); --26
 
CREATE TABLE directors (
  person INTEGER PRIMARY KEY,
  country VARCHAR(100) NOT NULL,
  FOREIGN KEY(person) REFERENCES persons(id)
 );


INSERT INTO directors (person, country) VALUES
(1, 'USA'), -- Stanley Kubrick
(4, 'USA'), -- George Lucas
(7, 'USA'), -- Robert Mulligan
(9, 'Canada'), -- James Cameron
(11, 'UK'), -- David Lean
(14, 'USA'), -- Anthony Mann
(17, 'Greece'), -- Theodoros Angelopoulos
(19, 'Netherlands'), -- Paul Verhoeven
(22, 'Poland'), -- Krzysztof Kieslowski
(24, 'France'); -- Jean-Paul Rappeneau


CREATE TABLE stars (
  person INTEGER PRIMARY KEY,
  dob DATE NOT NULL,
  FOREIGN KEY(person) REFERENCES persons(id)
 );


INSERT INTO stars (person, dob) VALUES
(2, '1936-05-30'), -- Keir Dullea
(5, '1951-09-25'), -- Mark Hamill
(8, '1916-04-05'), -- Gregory Peck
(10, '1974-11-11'), -- Leonardo DiCaprio
(12, '1940-04-14'), -- Julie Christie
(15, '1923-10-04'), -- Charlton Heston
(18, '1908-08-14'), -- Manos Katrakis
(20, '1944-01-23'), -- Rutger Hauer
(23, '1964-03-09'), -- Juliette Binoche
(25, '1948-12-27'); -- Gerard Depardieu

CREATE TABLE writers (
  person INTEGER PRIMARY KEY,
  email VARCHAR(100) NOT NULL,
  FOREIGN KEY(person) REFERENCES persons(id)
 );
 
INSERT INTO writers (person, email) VALUES
(3, 'arthur@clarke.com'), -- Arthur C Clarke
(4, 'george@email.com'), -- George Lucas
(6, 'harper@lee.com'), -- Harper Lee
(9, 'james@cameron.com'), -- James Cameron
(13, 'boris@boris.com'), -- Boris Pasternak
(16, 'fred@frank.com'), -- Frederick Frank
(17, 'theo@angelopoulos.com'), -- Theodoros Angelopoulos
(21, 'erik@roelfzema.com'), -- Erik Hazelhoff Roelfzema
(22, 'email@email.com'), -- Krzysztof Kieslowski
(26, 'edmond@rostand.com'); -- Edmond Rostand

CREATE TABLE worked_on (
  film INTEGER NOT NULL,
  person INTEGER NOT NULL,
  role VARCHAR(100) NOT NULL,
  FOREIGN KEY(film) REFERENCES films(id),
  FOREIGN KEY(person) REFERENCES persons(id)
 );
  
  INSERT INTO worked_on (film, person, role) VALUES
(1, 1, 'Director'), -- 2001: A Space Odyssey
(1, 2, 'Star'),
(1, 3, 'Writer'),
(2, 4, 'Director'), -- Star Wars: A New Hope
(2, 5, 'Star'),
(2, 4, 'Writer'),
(3, 7, 'Director'), -- To Kill A Mockingbird
(3, 8, 'Star'),
(3, 6, 'Writer'),
(4, 9, 'Director'), -- Titanic
(4, 10, 'Star'),
(4, 9, 'Writer'),
(5, 11, 'Director'), -- Dr Zhivago
(5, 12, 'Star'),
(5, 13, 'Writer'),
(6, 14, 'Director'), -- El Cid
(6, 15, 'Star'),
(6, 16, 'Writer'),
(7, 17, 'Director'), -- Voyage to Cythera
(7, 18, 'Star'),
(7, 17, 'Writer'),
(8, 19, 'Director'), -- Soldier of Orange
(8, 20, 'Star'),
(8, 21, 'Writer'),
(9, 22, 'Director'), -- Three Colours: Blue
(9, 23, 'Star'),
(9, 22, 'Writer'),
(10, 24, 'Director'), -- Cyrano de Bergerac
(10, 25, 'Star'),
(10, 26, 'Writer');