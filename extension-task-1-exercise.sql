-- EXTENSION EXERCISE TASK 1 --
-- 1. Refactor the database tables so that the Actors, Directors and Writers
-- all identify people (using a Foreign Key) that are present in a single People table
CREATE TABLE People (
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE Directors (
    id SERIAL PRIMARY KEY,
    person_id INT,
    country TEXT,
    CONSTRAINT fk_people
        FOREIGN KEY (person_id)
            REFERENCES People(id)
);

CREATE TABLE Stars (
    id SERIAL PRIMARY KEY,
    person_id INT,
    name TEXT,
    birthday TEXT,
        CONSTRAINT fk_people
            FOREIGN KEY (person_id)
                REFERENCES People(id)
);

CREATE TABLE Writers (
    id SERIAL PRIMARY KEY,
    person_id INT,
    email TEXT,
        CONSTRAINT fk_people
            FOREIGN KEY (person_id)
                REFERENCES People(id)
);

CREATE TABLE Films (
    id SERIAL PRIMARY KEY,
    title TEXT,
    director_id INT,
    star_id INT,
    writer_id INT,
    year INT,
    genre TEXT,
    score INT,
    UNIQUE(title),
    CONSTRAINT fk_director
        FOREIGN KEY (director_id)
            REFERENCES People(id),
    CONSTRAINT fk_star
        FOREIGN KEY (star_id)
            REFERENCES People(id),
    CONSTRAINT fk_writer
        FOREIGN KEY (writer_id)
            REFERENCES People(id)
);

INSERT INTO People
(name)
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


INSERT INTO Directors
(person_id, country)
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


INSERT INTO Stars
(person_id, birthday)
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


INSERT INTO Writers
(person_id, email)
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


INSERT INTO Films
(title, director_id, star_id, writer_id, year, genre, score)
VALUES
('2001: A Space Odyssey', 1, 11, 21, 1968, 'Science Fiction', 10),
('Star Wars: A New Hope', 2, 12, 2, 1977, 'Science Fiction', 7),
('To Kill A Mockingbird', 3, 13, 22, 1962, 'Drama', 10),
('Titanic', 4, 14, 4, 1997, 'Romance', 5),
('Dr Zhivago', 5, 15, 23, 1965, 'Historical', 8),
('El Cid', 6, 16, 24, 1961, 'Historical', 6),
('Voyage to Cythera', 7, 17, 7, 1984, 'Drama', 8),
('Soldier of Orange', 8, 18, 25, 1977, 'Thriller', 8),
('Three Colours: Blue', 9, 19, 9, 1993, 'Drama', 8),
('Cyrano de Bergerac', 10, 20, 26, 1990, 'Historical', 9);


-- 2. Where necessary refactor the queries to take advantage of this new structure
-- 1. Show the title and director name for all films
SELECT films.title, people.name AS Directors
FROM Films
INNER JOIN Directors
ON films.director_id = directors.id
INNER JOIN People
ON directors.person_id = people.id;

-- 2. Show the title, director and star name for all films
SELECT films.title, pd.name AS Directors, ps.name AS Stars
FROM Films
INNER JOIN Directors
ON films.director_id = directors.person_id
INNER JOIN People pd
ON directors.person_id = pd.id
INNER JOIN Stars
ON films.star_id = stars.person_id
INNER JOIN People ps
ON stars.person_id = ps.id;

-- 3. Show the title of films where the director is from the USA
SELECT films.title, people.name AS Director
FROM Films
INNER JOIN Directors
ON films.director_id = directors.id
INNER JOIN People
ON films.director_id = people.id
WHERE directors.country = 'USA';

-- 4. Show only those films where the writer and the director are the same person
SELECT films.title, people.name AS WriterDirector
FROM Films
INNER JOIN Directors
ON films.director_id = directors.id
INNER JOIN Writers
ON films.writer_id = writers.id
INNER JOIN People
ON films.director_id = people.id
WHERE directors.person_id = writers.person_id;

-- 5. Show directors and film titles for films with a score of 8 or higher
SELECT films.title, people.name AS Directors
FROM Films
INNER JOIN Directors
ON films.director_id = directors.id
INNER JOIN People
ON directors.person_id = people.id
WHERE films.score >= 8;

-- Additional queries

-- 1. Showing writers of films with a score of 8
SELECT films.title, pw.name AS Writer, films.score
FROM Films
iNNER JOIN Writers
ON films.writer_id = writers.id
INNER JOIN People pw
ON writers.person_id = pw.id
WHERE films.score = 8;

-- 2. Showing the directors movies made before 1990 (not including 1990)
SELECT people.name AS Directors, films.year
FROM Films
INNER JOIN Directors
ON films.director_id = directors.id
INNER JOIN People
ON directors.person_id = people.id
WHERE films.year < 1990;

-- 3. Showing films in the "Historial" genre with their directors
SELECT films.title, people.name AS Directors, films.genre
FROM Films
INNER JOIN Directors
ON films.director_id = directors.id
INNER JOIN People
ON directors.person_id = people.id
WHERE films.genre = 'Historical';

-- 4. Showing films and their writers with a score of 10
SELECT films.title, people.name AS Writer, films.score
FROM Films
INNER JOIN Writers
ON films.writer_id = writers.person_id
INNER JOIN People
ON writers.person_id = people.id
WHERE films.score = 10;

-- 5. Showing films, their stars, their score made in the 1960s
SELECT films.title, people.name AS Stars, films.score
FROM Films
INNER JOIN Stars
ON films.star_id = stars.person_id
INNER JOIN People
ON stars.person_id = people.id
WHERE films.year BETWEEN 1960 AND 1969;