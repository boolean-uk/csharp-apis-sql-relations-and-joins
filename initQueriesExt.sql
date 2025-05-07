CREATE TABLE people(
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL
);

CREATE TABLE directors(
	id SERIAL PRIMARY KEY,
	personId INT REFERENCES people(id),
	country TEXT NOT NULL
);

CREATE TABLE stars(
	id SERIAL PRIMARY KEY,
	personId INT REFERENCES people(id),
  birthdate DATE NOT NULL
);

CREATE TABLE writers(
	id SERIAL PRIMARY KEY,
  personId INT REFERENCES people(id),
	email TEXT NOT NULL
);

CREATE TABLE films(
	id SERIAL PRIMARY KEY,
	title TEXT NOT NULL,
	year INT NOT NULL,
	genre TEXT NOT NULL,
	score INT NOT NULL,
	directorId INT REFERENCES directors(id),
	starId INT REFERENCES stars(id),
	writerId INT REFERENCES writers(id)
);

INSERT INTO people(name)
VALUES
	('Keir Dullea'),
	('Mark Hamill'),
	('Gregory Peck'),
	('Leonardo DiCaprio'),
	('Julie Christie'),
	('Charlton Heston'),
	('Manos Katrakis'),
	('Rutger Hauer'),
	('Juliette Binoche'),
	('Gerard Depardieu'),
	('Stanley Kubrick'),
	('George Lucas'),
	('Robert Mulligan'),
	('James Cameron'),
	('David Lean'),
	('Anthony Mann'),
	('Theodoros Angelopoulos'),
	('Paul Verhoeven'),
	('Krzysztof Kieslowski'),
	('Jean-Paul Rappeneau'),
	('Arthur C Clarke'),
	('George Lucas'),
	('Harper Lee'),
	('James Cameron'),
	('Boris Pasternak'),
	('Frederick Frank'),
	('Theodoros Angelopoulos'),
	('Erik Hazelhoff Roelfzema'),
	('Krzysztof Kieslowski'),
	('Edmond Rostand');

INSERT INTO stars (personId, birthdate)
VALUES
	(1, '1936/05/30'),
	(2, '1951/09/25'),
	(3, '1916/04/05'),
	(4, '1974/11/11'),
	(5, '1940/04/14'),
	(6, '1923/10/04'),
	(7, '1908/08/14'),
	(8, '1944/01/23'),
	(9, '1964/03/09'),
	(10, '1948/12/27');

INSERT INTO directors (personId, country)
VALUES
	(11, 'USA'),
	(12, 'USA'),
	(13, 'USA'),
	(14, 'Canada'),
	(15, 'UK'),
	(16, 'USA'),
	(17, 'Greece'),
	(18, 'Netherlands'),
	(19, 'Poland'),
	(20, 'France');

INSERT INTO writers (personId, email)
VALUES
	(21, 'arthur@clarke.com'),
	(22, 'george@email.com'),
	(23, 'harper@lee.com'),
	(24, 'james@cameron.com'),
	(25, 'boris@boris.com'),
	(26, 'fred@frank.com'),
	(27, 'theo@angelopoulos.com'),
	(28, 'erik@roelfzema.com'),
	(29, 'email@email.com'),
	(30, 'edmond@rostand.com');
	
INSERT INTO films (title, year, genre, score, directorId, starId, writerId)
VALUES
	('2001: A Space Odyssey', 1968, 'Science Fiction', 10, 1, 1, 1),
	('Star Wars: A New Hope', 1977, 'Science Fiction', 7, 2, 2, 2),
	('To Kill A Mockingbird', 1962, 'Drama', 10, 3, 3, 3),
	('Titanic', 1962, 'Romance', 5, 4, 4, 4),
	('Dr Zhivago', 1965, 'Historical', 8, 5, 5, 5),
	('El Cid', 1961, 'Historical', 6, 6, 6, 6),
	('Voyage to Cythera', 1984, 'Drama', 8, 7, 7, 7),
	('Soldier of Orange', 1977, 'Thriller', 8, 8, 8, 8),
	('Three Colours: Blue', 1993, 'Drama', 8, 9, 9, 9),
	('Cyrano de Bergerac', 1990, 'Historical', 9, 10, 10, 10)
