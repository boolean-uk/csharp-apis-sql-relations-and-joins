CREATE SCHEMA exercise_sql; 



CREATE TABLE exercise_sql.Films
(
id serial PRIMARY KEY,
  title VARCHAR (100) NOT NULL,
  year INTEGER NOT NULL,
  genre VARCHAR (100) NOT NULL,
  score INTEGER CHECK(score >= 0 AND score <= 10) NOT NULL,
  director_fk INTEGER NOT NULL,
  star_fk INTEGER NOT NULL,
  writer_fk INTEGER NOT NULL 
);

CREATE TABLE exercise_sql.Director
(
id serial PRIMARY KEY,
  name VARCHAR (100) NOT NULL,
  country VARCHAR (100) NOT NULL
);


CREATE TABLE exercise_sql.Star
(
id serial PRIMARY KEY,
  name VARCHAR (100) NOT NULL,
  born DATE NOT NULL 
);

CREATE TABLE exercise_sql.Writer
(
  id serial PRIMARY KEY,
  name VARCHAR (100) NOT NULL,
  email VARCHAR (100) NOT NULL
);

INSERT INTO exercise_sql.films (title, releaseyear, genre, score, director_fk, star_fk, writer_fk) VALUES 
('2001: A Space Odyssey', 1968, 'Science Fiction', 10, 1, 1, 1),
('Star Wars: A New Hope', 1977, 'Science Fiction', 7, 2, 2, 2),
('To Kill A Mockingbird', 1962, 'Drama', 10, 3, 3, 3),
('Titanic', 1997, 'Romance', 5, 4, 4, 4),
('Dr Zhivago', 1965, 'Historical', 8, 5, 5, 5),
('El Cid', 1961, 'Historical', 6, 6, 6, 6),
('Voyage to Cythera', 1984, 'Drama', 8, 7, 7, 7),
('Soldier of Orange', 1977, 'Thriller', 8, 8, 8, 8),
('Three Colours: Blue', 1993, 'Drama', 8, 9, 9, 9),
('Cyrano de Bergerac', 1990, 'Historical', 9, 10, 10, 10);


INSERT INTO exercise_sql.director (name, country) VALUES
('Stanley Kubrick', 'USA'),
('George Lucas', 'USA'),
('Robert Mulligan', 'USA'),
('James Cameronk', 'Canada'),
('David Lean', 'UK'),
('Anthony Mann', 'USA'),
('Theodoros Angelopoulos', 'Greece'),
('Paul Verhoeven', 'Netherlands'),
('Krzysztof Kieslowski', 'Poland'),
('Jean-Paul Rappeneau', 'France');


INSERT INTO exercise_sql.star (name, dob) VALUES
('Keir Dullea', '1936/05/30'),
('Mark Hamill', '1951/09/25'),
('Gregory Peck', '1916/04/05'),
('Leonardo DiCaprio', '1974/11/11'),
('Julie Christie', '1940/04/14'),
('Charlton Heston', '1923/10/04'),
('Manos Katrakis', '1908/08/14'),
('Rutger Hauer', '1944/01/23'),
('Juliette Binoche', '1964/03/09'),
('Gerard Depardieu', '1948/12/27');

INSERT INTO exercise_sql.writer (name, email) VALUES
('Arthur C Clarke', 'Arthur C Clarke'),
('George Lucas', 'george@email.com'),
('Harper Lee', 'harper@lee.com'),
('James Cameron', 'james@cameron.com'),
('Boris Pasternak', 'boris@boris.com'),
('Frederick Frank', 'fred@frank.com'),
('Theodoros Angelopoulos', 'theo@angelopoulos.com'),
('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com'),
('Krzysztof Kieslowsk', 'email@email.com'),
('Edmond Rostand', 'edmond@rostand.com');

