-- Extension Task 2

CREATE TABLE
people (
id SERIAL PRIMARY KEY, 
name varchar(128) NOT NULL
);

CREATE TABLE
director (
id SERIAL PRIMARY KEY,
people_id INT NOT NULL REFERENCES people (id),
country VARCHAR(128) NOT NULL
);

CREATE TABLE
writer (
id SERIAL PRIMARY KEY,
people_id INT NOT NULL REFERENCES people (id),
email VARCHAR(128) UNIQUE NOT NULL
);

CREATE TABLE
actor (
id SERIAL PRIMARY KEY,
people_id INT NOT NULL REFERENCES people (id),
dob DATE NOT NULL
);

CREATE TABLE
movie (
id SERIAL PRIMARY KEY,
release_title VARCHAR(128) NOT NULL,
release_year INT NOT NULL,
genre VARCHAR(128) NOT NULL,
score SMALLINT NOT NULL CHECK (score BETWEEN 0 AND 100),
director_id INT NOT NULL REFERENCES director (id),
writer_id INT NOT NULL REFERENCES writer (id)
);


CREATE TABLE 
movie_cast (
  id SERIAL PRIMARY KEY,
  people_id INT NOT NULL REFERENCES people(id),
  movie_id INT NOT NULL REFERENCES movie(id),
  movie_role varchar(128) NOT NULL
);



INSERT INTO people (name) VALUES
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
('Harper Lee'),
('Boris Pasternak'),
('Frederick Frank'),
('Erik Hazelhoff Roelfzema'),
('Edmond Rostand'),
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
('Reduan Azouaghe');

INSERT INTO director (people_id, country) VALUES
((SELECT id FROM people WHERE name='Stanley Kubrick'), 'USA'),
((SELECT id FROM people WHERE name='George Lucas'), 'USA'),
((SELECT id FROM people WHERE name='Robert Mulligan'), 'USA'),
((SELECT id FROM people WHERE name='James Cameron'), 'Canada'),
((SELECT id FROM people WHERE name='David Lean'), 'UK'),
((SELECT id FROM people WHERE name='Anthony Mann'), 'USA'),
((SELECT id FROM people WHERE name='Theodoros Angelopoulos'), 'Greece'),
((SELECT id FROM people WHERE name='Paul Verhoeven'), 'Netherlands'),
((SELECT id FROM people WHERE name='Krzysztof Kieslowski'), 'Poland'),
((SELECT id FROM people WHERE name='Jean-Paul Rappeneau'), 'France');

INSERT INTO writer (people_id, email) VALUES
((SELECT id FROM people WHERE name='Arthur C Clarke'), 'arthur@clarke.com'),
((SELECT id FROM people WHERE name='George Lucas'), 'george@email.com'),
((SELECT id FROM people WHERE name='Harper Lee'), 'harper@lee.com'),
((SELECT id FROM people WHERE name='James Cameron'), 'james@cameron.com'),
((SELECT id FROM people WHERE name='Boris Pasternak'), 'boris@boris.com'),
((SELECT id FROM people WHERE name='Frederick Frank'), 'fred@frank.com'),
((SELECT id FROM people WHERE name='Theodoros Angelopoulos'), 'theo@angelopoulos.com'),
((SELECT id FROM people WHERE name='Erik Hazelhoff Roelfzema'), 'erik@roelfzema.com'),
((SELECT id FROM people WHERE name='Krzysztof Kieslowski'), 'email@email.com'),
((SELECT id FROM people WHERE name='Edmond Rostand'), 'edmond@rostand.com');

INSERT INTO actor (people_id, dob) VALUES
((SELECT id FROM people WHERE name='Keir Dullea'), '1936-05-30'),
((SELECT id FROM people WHERE name='Mark Hamill'), '1951-09-25'),
((SELECT id FROM people WHERE name='Gregory Peck'), '1916-04-05'),
((SELECT id FROM people WHERE name='Leonardo DiCaprio'), '1974-11-11'),
((SELECT id FROM people WHERE name='Julie Christie'), '1940-04-14'),
((SELECT id FROM people WHERE name='Charlton Heston'), '1923-10-04'),
((SELECT id FROM people WHERE name='Manos Katrakis'), '1908-08-14'),
((SELECT id FROM people WHERE name='Rutger Hauer'), '1944-01-23'),
((SELECT id FROM people WHERE name='Juliette Binoche'), '1964-03-09'),
((SELECT id FROM people WHERE name='Gerard Depardieu'), '1948-12-27'),
((SELECT id FROM people WHERE name='Reduan Azouaghe'), '2000-01-01');

INSERT INTO movie (release_title, release_year, genre, score, director_id, writer_id) VALUES
('2001: A Space Odyssey', 1968, 'Science Fiction', 10,
(SELECT d.id FROM director d JOIN people p ON p.id=d.people_id WHERE p.name='Stanley Kubrick'),
(SELECT w.id FROM writer w JOIN people p ON p.id=w.people_id WHERE p.name='Arthur C Clarke')),
('Star Wars: A New Hope', 1977, 'Science Fiction', 7,
(SELECT d.id FROM director d JOIN people p ON p.id=d.people_id WHERE p.name='George Lucas'),
(SELECT w.id FROM writer w JOIN people p ON p.id=w.people_id WHERE p.name='George Lucas')),
('To Kill A Mockingbird', 1962, 'Drama', 10,
(SELECT d.id FROM director d JOIN people p ON p.id=d.people_id WHERE p.name='Robert Mulligan'),
(SELECT w.id FROM writer w JOIN people p ON p.id=w.people_id WHERE p.name='Harper Lee')),
('Titanic', 1997, 'Romance', 5,
(SELECT d.id FROM director d JOIN people p ON p.id=d.people_id WHERE p.name='James Cameron'),
(SELECT w.id FROM writer w JOIN people p ON p.id=w.people_id WHERE p.name='James Cameron')),
('Dr Zhivago', 1965, 'Historical', 8,
(SELECT d.id FROM director d JOIN people p ON p.id=d.people_id WHERE p.name='David Lean'),
(SELECT w.id FROM writer w JOIN people p ON p.id=w.people_id WHERE p.name='Boris Pasternak')),
('El Cid', 1961, 'Historical', 6,
(SELECT d.id FROM director d JOIN people p ON p.id=d.people_id WHERE p.name='Anthony Mann'),
(SELECT w.id FROM writer w JOIN people p ON p.id=w.people_id WHERE p.name='Frederick Frank')),
('Voyage to Cythera', 1984, 'Drama', 8,
(SELECT d.id FROM director d JOIN people p ON p.id=d.people_id WHERE p.name='Theodoros Angelopoulos'),
(SELECT w.id FROM writer w JOIN people p ON p.id=w.people_id WHERE p.name='Theodoros Angelopoulos')),
('Soldier of Orange', 1977, 'Thriller', 8,
(SELECT d.id FROM director d JOIN people p ON p.id=d.people_id WHERE p.name='Paul Verhoeven'),
(SELECT w.id FROM writer w JOIN people p ON p.id=w.people_id WHERE p.name='Erik Hazelhoff Roelfzema')),
('Three Colours: Blue', 1993, 'Drama', 8,
(SELECT d.id FROM director d JOIN people p ON p.id=d.people_id WHERE p.name='Krzysztof Kieslowski'),
(SELECT w.id FROM writer w JOIN people p ON p.id=w.people_id WHERE p.name='Krzysztof Kieslowski')),
('Cyrano de Bergerac', 1990, 'Historical', 9,
(SELECT d.id FROM director d JOIN people p ON p.id=d.people_id WHERE p.name='Jean-Paul Rappeneau'),
(SELECT w.id FROM writer w JOIN people p ON p.id=w.people_id WHERE p.name='Edmond Rostand'));

INSERT INTO movie_cast (people_id, movie_id, movie_role) VALUES 
  (11, 1, 'Not star'),
  (1, 1, 'Star');






