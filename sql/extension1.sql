CREATE TABLE persons(
  id SERIAL NOT NULL PRIMARY KEY,
  name varchar(50) UNIQUE
);

CREATE TABLE writers(
  id serial NOT NULL PRIMARY KEY,
  person_id INTEGER,
  FOREIGN KEY (person_id) REFERENCES persons(id),
  email varchar(50)
);

CREATE TABLE stars(
  id serial NOT NULL PRIMARY KEY,
  person_id INTEGER,
  FOREIGN KEY (person_id) REFERENCES persons(id),
  date_of_birth date
);

CREATE TABLE directors(
  id serial NOT NULL PRIMARY KEY,
  person_id INTEGER,
  FOREIGN KEY (person_id) REFERENCES persons(id),
  country varchar(50)
);

INSERT INTO persons("name")
VALUES
('Arthur C Clarke'),
('Harper Lee'),
('James Cameron'),
('Boris Pasternak'),
('Frederick Frank'),
('Theodoros Angelopoulos'),
('Erik Hazelhoff Roelfzema'),
('Krzysztof Kieslowsk'),
('Edmond Rostand'),
('Keir Dullea'),
('Gregory Peck'),
('Mark Hamill'),
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
('David Lean'),
('Anthony Mann'),
('Paul Verhoeven'),
('Jean-Paul Rappeneau');

INSERT INTO writers(person_id, email)
VALUES
(1, 'arthur@clarke.com'),
(21, 'george@email.com'),
(2, 'harper@lee.com'),
(3, 'james@cameron.com'),
(4, 'boris@boris.com'),
(5, 'fred@frank.com'),
(6 'theo@angelopoulos.com'),
(7, 'erik@roelfzema.com'),
(8, 'email@email.com'),
(9, 'edmond@rostand.com');

INSERT INTO stars(person_id, birth)
VALUES
(10, '1936-05-30'),
(12, '1951-09-25'),
(11, '1916-04-05'),
(13, '1974-11-11'),
(14, '1940-04-14'),
(15, '1923-10-04'),
(16, '1908-08-14'),
(17, '1944-01-23'),
(18, '1964-03-09'),
(19, '1948-12-27');

INSERT INTO directors (person_id, country) 
VALUES 
(20, 'USA'),
(21, 'USA'),
(22, 'USA'),
(3, 'Canada'),
(23, 'UK'),
(24, 'USA'),
(6, 'Greece'),
(25, 'Netherlands'),
(8, 'Poland'),
(26, 'France');