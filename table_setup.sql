-- Create tables 'people' and 'films'
CREATE TABLE people ( 
  person_id SERIAL PRIMARY KEY,
  full_name TEXT NOT NULL UNIQUE,
  country   TEXT,
  dob       DATE,
  email     TEXT
);

CREATE TABLE films (
  film_id SERIAL PRIMARY KEY,
  title   TEXT NOT NULL,
  year    INT,
  genre   TEXT,
  score   INT,
  director_id INT REFERENCES people(person_id),
  star_id     INT REFERENCES people(person_id),
  writer_id   INT REFERENCES people(person_id)
);

-- Insert data to tables
INSERT INTO people (full_name, country) VALUES
 ('Stanley Kubrick','USA'),
 ('George Lucas','USA'),
 ('Robert Mulligan','USA'),
 ('James Cameron','Canada'),
 ('David Lean','UK'),
 ('Anthony Mann','USA'),
 ('Theodoros Angelopoulos','Greece'),
 ('Paul Verhoeven','Netherlands'),
 ('Krzysztof Kieslowski','Poland'),
 ('Jean-Paul Rappeneau','France');

INSERT INTO people (full_name, dob) VALUES
 ('Keir Dullea','1936-05-30'),
 ('Mark Hamill','1951-09-25'),
 ('Gregory Peck','1916-04-05'),
 ('Leonardo DiCaprio','1974-11-11'),
 ('Julie Christie','1940-04-14'),
 ('Charlton Heston','1923-10-04'),
 ('Manos Katrakis','1908-08-14'),
 ('Rutger Hauer','1944-01-23'),
 ('Juliette Binoche','1964-03-09'),
 ('Gerard Depardieu','1948-12-27');

INSERT INTO people (full_name, email) VALUES
 ('Arthur C Clarke','arthur@clarke.com'),
 ('George Lucas','george@email.com'),
 ('Harper Lee','harper@lee.com'),
 ('James Cameron','james@cameron.com'),
 ('Boris Pasternak','boris@boris.com'),
 ('Frederick Frank','fred@frank.com'),
 ('Theodoros Angelopoulos','theo@angelopoulos.com'),
 ('Erik Hazelhoff Roelfzema','erik@roelfzema.com'),
 ('Krzysztof Kieslowski','email@email.com'),
 ('Edmond Rostand','edmond@rostand.com')
ON CONFLICT (full_name) DO UPDATE
SET email = EXCLUDED.email;


INSERT INTO films (title, year, genre, score, director_id, star_id, writer_id)
SELECT '2001: A Space Odyssey',1968,'Science Fiction',10,
       (SELECT person_id FROM people WHERE full_name='Stanley Kubrick'),
       (SELECT person_id FROM people WHERE full_name='Keir Dullea'),
       (SELECT person_id FROM people WHERE full_name='Arthur C Clarke');

INSERT INTO films (title, year, genre, score, director_id, star_id, writer_id)
SELECT 'Star Wars: A New Hope',1977,'Science Fiction',7,
       (SELECT person_id FROM people WHERE full_name='George Lucas'),
       (SELECT person_id FROM people WHERE full_name='Mark Hamill'),
       (SELECT person_id FROM people WHERE full_name='George Lucas');

INSERT INTO films (title, year, genre, score, director_id, star_id, writer_id)
SELECT 'To Kill A Mockingbird',1962,'Drama',10,
       (SELECT person_id FROM people WHERE full_name='Robert Mulligan'),
       (SELECT person_id FROM people WHERE full_name='Gregory Peck'),
       (SELECT person_id FROM people WHERE full_name='Harper Lee');

INSERT INTO films (title, year, genre, score, director_id, star_id, writer_id)
SELECT 'Titanic',1997,'Romance',5,
       (SELECT person_id FROM people WHERE full_name='James Cameron'),
       (SELECT person_id FROM people WHERE full_name='Leonardo DiCaprio'),
       (SELECT person_id FROM people WHERE full_name='James Cameron');

INSERT INTO films (title, year, genre, score, director_id, star_id, writer_id)
SELECT 'Dr Zhivago',1965,'Historical',8,
       (SELECT person_id FROM people WHERE full_name='David Lean'),
       (SELECT person_id FROM people WHERE full_name='Julie Christie'),
       (SELECT person_id FROM people WHERE full_name='Boris Pasternak');

INSERT INTO films (title, year, genre, score, director_id, star_id, writer_id)
SELECT 'El Cid',1961,'Historical',6,
       (SELECT person_id FROM people WHERE full_name='Anthony Mann'),
       (SELECT person_id FROM people WHERE full_name='Charlton Heston'),
       (SELECT person_id FROM people WHERE full_name='Frederick Frank');

INSERT INTO films (title, year, genre, score, director_id, star_id, writer_id)
SELECT 'Voyage to Cythera',1984,'Drama',8,
       (SELECT person_id FROM people WHERE full_name='Theodoros Angelopoulos'),
       (SELECT person_id FROM people WHERE full_name='Manos Katrakis'),
       (SELECT person_id FROM people WHERE full_name='Theodoros Angelopoulos');

INSERT INTO films (title, year, genre, score, director_id, star_id, writer_id)
SELECT 'Soldier of Orange',1977,'Thriller',8,
       (SELECT person_id FROM people WHERE full_name='Paul Verhoeven'),
       (SELECT person_id FROM people WHERE full_name='Rutger Hauer'),
       (SELECT person_id FROM people WHERE full_name='Erik Hazelhoff Roelfzema');

INSERT INTO films (title, year, genre, score, director_id, star_id, writer_id)
SELECT 'Three Colours: Blue',1993,'Drama',8,
       (SELECT person_id FROM people WHERE full_name='Krzysztof Kieslowski'),
       (SELECT person_id FROM people WHERE full_name='Juliette Binoche'),
       (SELECT person_id FROM people WHERE full_name='Krzysztof Kieslowski');

INSERT INTO films (title, year, genre, score, director_id, star_id, writer_id)
SELECT 'Cyrano de Bergerac',1990,'Historical',9,
       (SELECT person_id FROM people WHERE full_name='Jean-Paul Rappeneau'),
       (SELECT person_id FROM people WHERE full_name='Gerard Depardieu'),
       (SELECT person_id FROM people WHERE full_name='Edmond Rostand');