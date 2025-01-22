/*EXTENSION*/
CREATE TABLE people(
	id Serial PRIMARY KEY,
	name TEXT
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
	('Boris Pasternak'),
	('Frederick Frank'),
	('Edmond Rostand'),
	('Erik Hazelhoff Roelfzema');

CREATE TABLE writer(
	id SERIAL PRIMARY KEY,
	people_id int,
	email TEXT,
	CONSTRAINT fk_WriterPeople FOREIGN KEY (people_id) REFERENCES people(id)
);

INSERT INTO Writer(people_id,email)
VALUES
	(21, 'arthur@clarke.com'),
	(2, 'george@email.com'),
	(22, 'harper@lee.com'),
	(4, 'james@cameron.com'),
	(23, 'boris@boris.com'),
	(24, 'fred@frank.com'),
	(7, 'theo@angelopoulos.com'),
	(25, 'erik@roelfzema.com'),
	(9, 'email@email.com'),
	(26, 'edmond@rostand.com');

CREATE TABLE director(
	id SERIAL PRIMARY KEY,
	people_id int,
	country TEXT,
	CONSTRAINT fk_DirectorPeople FOREIGN KEY (people_id) REFERENCES people(id)
);

INSERT INTO Director (people_id,country)
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

CREATE TABLE star(
	id SERIAL PRIMARY KEY,
	people_id int,
	birth TEXT,
	CONSTRAINT fk_StarPeople FOREIGN KEY (people_id) REFERENCES people(id)
);

INSERT INTO star (people_id, birth)
VALUES
    (11, '1936-05-30'),
    (12, '1951-09-25'),
    (13, '1916-04-05'),
    (14, '1974-11-11'),
    (15, '1940-04-14'),
    (16, '1923-10-04'),
    (17, '1908-08-14'),
    (18, '1944-01-23'),
    (19, '1964-03-09'),
    (20, '1948-12-27');

