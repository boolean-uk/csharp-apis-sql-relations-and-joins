-- Extension 2

DROP TABLE IF EXISTS director CASCADE;
DROP TABLE IF EXISTS writer CASCADE;
DROP TABLE IF EXISTS film CASCADE;
DROP TABLE IF EXISTS star CASCADE;
DROP TABLE IF EXISTS people CASCADE;
DROP TABLE IF EXISTS cast_people CASCADE;

--Extension Task 1
CREATE TABLE people (
    person_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    dob VARCHAR(50),
    country VARCHAR(50),
    email VARCHAR(50)
);

INSERT INTO people (name, dob, country, email)
VALUES
    ('Stanley Kubrick', NULL, 'USA', NULL),
    ('George Lucas', NULL, 'USA', NULL),
    ('Robert Mulligan', NULL, 'USA', NULL),
    ('James Cameron', NULL, 'Canada', NULL),
    ('David Lean', NULL, 'UK', NULL),
    ('Anthony Mann', NULL, 'USA', NULL),
    ('Theodoros Angelopoulos', NULL, 'Greece', NULL),
    ('Paul Verhoeven', NULL, 'Netherlands', NULL),
    ('Krzysztof Kieslowski', NULL, 'Poland', NULL),
    ('Jean-Paul Rappeneau', NULL, 'France', NULL),
    ('Keir Dullea', '1936-05-30', NULL, NULL),
    ('Mark Hamill', '1951-09-25', NULL, NULL),
    ('Gregory Peck', '1916-04-05', NULL, NULL),
    ('Leonardo DiCaprio', '1974-11-11', NULL, NULL),
    ('Julie Christie', '1940-04-14', NULL, NULL),
    ('Charlton Heston', '1923-10-04', NULL, NULL),
    ('Manos Katrakis', '1908-08-14', NULL, NULL),
    ('Rutger Hauer', '1944-01-23', NULL, NULL),
    ('Juliette Binoche', '1964-03-09', NULL, NULL),
    ('Gerard Depardieu', '1948-12-27', NULL, NULL),
    ('Arthur C Clarke', NULL, NULL, 'arthur@clarke.com'),
    ('George Lucas', NULL, NULL, 'george@email.com'),
    ('Harper Lee', NULL, NULL, 'harper@lee.com'),
    ('James Cameron', NULL, NULL, 'james@cameron.com'),
    ('Boris Pasternak', NULL, NULL, 'boris@boris.com'),
    ('Frederick Frank', NULL, NULL, 'fred@frank.com'),
    ('Theodoros Angelopoulos', NULL, NULL, 'theo@angelopoulos.com'),
    ('Erik Hazelhoff Roelfzema', NULL, NULL, 'erik@roelfzema.com'),
    ('Krzysztof Kieslowski', NULL, NULL, 'email@email.com'),
    ('Edmond Rostand', NULL, NULL, 'edmond@rostand.com');

--Create Table director
CREATE TABLE director(
	director_id serial PRIMARY KEY, 
  person_id INT,
  FOREIGN KEY (person_id) REFERENCES people(person_id)
	);

--Populate Table with directors
INSERT INTO director (person_id)
VALUES
	(1),
	(2),
	(3),
	(4),
	(5),
	(6),
	(7),
	(8),
	(9),
	(10);

--Create Table star
CREATE TABLE star (
	star_id serial PRIMARY KEY,
  person_id INT,
  FOREIGN KEY (person_id) REFERENCES people(person_id)
	);

--Populate Table with stars
INSERT INTO star (person_id)
VALUES
	(11),
	(12),
	(13),
	(14),
	(15),
	(16),
	(17),
	(18),
	(19),
	(20);

--Create Table writer
CREATE TABLE writer (
	writer_id serial PRIMARY KEY,
  person_id INT,
  FOREIGN KEY (person_id) REFERENCES people(person_id)
	);

--Populate Table with writers
INSERT INTO writer (person_id)
VALUES
	(21),
	(22),
	(23),
	(24),
	(25),
	(26),
	(27),
	(28),
	(29),
	(30);

  
-- Create Table film
CREATE TABLE film (
    film_id SERIAL PRIMARY KEY,
    title VARCHAR(50),
    genre VARCHAR(50),
    year_released INTEGER,
    score INTEGER,
    film_director_id INT, 
    film_star_id INT,
    film_writer_id INT,
    CONSTRAINT FK_Directors FOREIGN KEY (film_director_id) 
        REFERENCES director(director_id),
    CONSTRAINT FK_Stars FOREIGN KEY (film_star_id) 
        REFERENCES star(star_id),
    CONSTRAINT FK_Writer FOREIGN KEY (film_writer_id) 
        REFERENCES writer(writer_id)
);

-- Populate Table with films
INSERT INTO film (title, year_released, genre, score, film_director_id, film_star_id, film_writer_id)
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
    
    
    -- Create Table cast
CREATE TABLE cast_people (
    cast_id SERIAL PRIMARY KEY,
    film_id INT,
    person_id INT,
    FOREIGN KEY (film_id) REFERENCES film(film_id),
    FOREIGN KEY (person_id) REFERENCES people(person_id)
);

-- Populate Table with cast members
INSERT INTO cast_people (film_id, person_id)
VALUES
    (1, 11),
    (1, 12),
    (2, 12),
    (2, 13),
    (3, 13),
    (3, 14),
    (4, 14),
    (4, 15),
    (5, 15),
    (5, 16),
    (6, 16),
    (6, 17),
    (7, 17),
    (7, 18),
    (8, 18),
    (8, 19),
    (9, 19),
    (9, 20),
    (10, 20);