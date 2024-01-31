CREATE TABLE people(
	id serial primary key,
	name varchar(255)
);

INSERT INTO people (name)
VALUES
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
	('Arthur C Clarke'),
	('Harper Lee'),
	('Boris Pasternak'),
	('Frederick Frank'),
	('Erik Hazelhoff Roelfzema'),
	('Edmond Rostand');
	
CREATE TABLE actors(
	id serial primary key,
	film_fk_id integer,
	CONSTRAINT film_id FOREIGN KEY (film_fk_id) REFERENCES films(id),
	people_fk_id integer,
	CONSTRAINT people_id FOREIGN KEY (people_fk_id) REFERENCES people(id)
);

INSERT INTO actors (film_fk_id, people_fk_id)
VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(1, 4),
	(2, 5),
	(2, 6),
	(2, 7),
	(3, 8),
	(3, 9),
	(3, 10),
	(4, 11),
	(4, 12),
	(5, 13),
	(5, 14),
	(5, 15),
	(6, 16),
	(6, 17),
	(7, 18),
	(7, 19),
	(7, 20),
	(8, 21),
	(8, 22),
	(9, 23),
	(9, 24),
	(10, 25),
	(10, 26);
	
CREATE TABLE directors(
	id serial primary key,
	people_fk_id integer,
	CONSTRAINT people_id FOREIGN KEY (people_fk_id) REFERENCES people(id),
	country varchar(255)
);

INSERT INTO directors (people_fk_id, country)
VALUES
	(1, 'USA'),
	(2, 'USA'),
	(3, 'USA'),
	(4, 'Canada'),
	(5, 'UK'),
	(6, 'USA'),
	(7, 'Greece'),
	(8, 'Netherlands'),
	(9, 'Poland'),
	(10, 'France');

CREATE TABLE stars(
	id serial primary key,
	people_fk_id integer,
	CONSTRAINT people_id FOREIGN KEY (people_fk_id) REFERENCES people(id),
	dob date
);

SET datestyle = 'DMY';
INSERT INTO stars (people_fk_id, dob)
VALUES
	(11, '30/05/1936'),
	(12, '25/09/1951'),
	(13, '05/04/1916'),
	(14, '11/11/1974'),
	(15, '14/04/1940'),
	(16, '04/10/1923'),
	(17, '14/08/1908'),
	(18, '23/01/1944'),
	(19, '09/03/1964'),
	(20, '27/12/1948');

CREATE TABLE writers(
	id serial primary key,
	people_fk_id integer,
	CONSTRAINT people_id FOREIGN KEY (people_fk_id) REFERENCES people(id),
	email varchar(255)
);

INSERT INTO writers (people_fk_id, email)
VALUES
	(21, 'arthur@clarke.com'),
	(2, 'george@lucas.com'),
	(22, 'harper@lee.com'),
	(4, 'james@cameron.com'),
	(23, 'boris@boris.com'),
	(24, 'fred@frank.com'),
	(7, 'theo@angelopoulos.com'),
	(25, 'erik@roelfzema.com'),
	(9, 'email@email.com'),
	(26, 'edmond@rostand.com');


CREATE TABLE films(
	id serial primary key,
	title varchar(255),
	released_year integer,
	genre varchar(50),
	score integer,
	director_fk_id integer,
	star_fk_id integer,
	writer_fk_id integer,
	CONSTRAINT director_id FOREIGN KEY (director_fk_id) REFERENCES directors(id),
	CONSTRAINT star_id FOREIGN KEY (star_fk_id) REFERENCES stars(id),
	CONSTRAINT writer_id FOREIGN KEY (writer_fk_id) REFERENCES writers(id)
);

INSERT INTO films(title, released_year, genre, score, director_fk_id, star_fk_id, writer_fk_id)
VALUES
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

SELECT title, name FROM actors
JOIN films ON actors.film_fk_id = films.id
JOIN people ON actors.people_fk_id = people.id;