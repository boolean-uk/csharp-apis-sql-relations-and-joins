CREATE TABLE films (
    id SERIAL PRIMARY KEY,
    title VARCHAR(50),
    year INTEGER CHECK (year BETWEEN 1 AND 9999),
    genre VARCHAR(50),
    score INTEGER CHECK (score BETWEEN 0 AND 10),
    director_id INTEGER REFERENCES directors(director_id),
    star_id INTEGER REFERENCES stars(star_id),
    writer_id INTEGER REFERENCES writers(writer_id)
);

CREATE TABLE directors (
	director_id serial PRIMARY KEY,
	name VARCHAR(50),
	country VARCHAR(50)
);

CREATE TABLE stars (
	star_id serial PRIMARY KEY,
	name VARCHAR(50),
	born DATE
);

CREATE TABLE writers (
	writer_id serial PRIMARY KEY,
	name VARCHAR(50),
	email VARCHAR(50)
);


INSERT INTO directors (name, country) VALUES
('Stanley Kubrick', 'USA'),
('George Lucas', 'USA'),
('Robert Mulligan', 'USA'),
('James Cameron', 'Canada'),
('David Lean', 'UK'),
('Anthony Mann', 'USA'),
('Theodoros Angelopoulos', 'Greece'),
('Paul Verhoeven', 'Netherlands'),
('Krzysztof Kieslowski', 'Poland'),
('Jean-Paul Rappeneau', 'France');

INSERT INTO stars (name, born) VALUES
('Keir Dullea', '1936-05-30'),
('Mark Hamill', '1951-09-25'),
('Gregory Peck', '1916-04-05'),
('Leonardo DiCaprio', '1974-11-11'),
('Julie Christie', '1940-04-14'),
('Charlton Heston', '1923-10-04'),
('Manos Katrakis', '1908-08-14'),
('Rutger Hauer', '1944-01-23'),
('Juliette Binoche', '1964-03-09'),
('Gerard Depardieu', '1948-12-27');

INSERT INTO writers (name, email) VALUES
('Arthur C Clarke', 'arthur@clarke.com'),
('George Lucas', 'george@email.com'),
('Harper Lee', 'harper@lee.com'),
('James Cameron', 'james@cameron.com'),
('Boris Pasternak', 'boris@boris.com'),
('Frederick Frank', 'fred@frank.com'),
('Theodoros Angelopoulos', 'theo@angelopoulos.com'),
('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com'),
('Krzysztof Kieslowski', 'email@email.com'),
('Edmond Rostand', 'edmond@rostand.com');

INSERT INTO films (title, year, genre, score, director_id, star_id, writer_id) VALUES
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

SELECT films.title, directors.name FROM films JOIN directors ON films.director_id = directors.director_id;
SELECT films.title, directors.name, stars.name FROM films JOIN directors ON films.director_id = directors.director_id JOIN stars ON films.star_id = stars.star_id;
SELECT films.title FROM films JOIN directors ON films.director_id = directors.director_id WHERE directors.country = 'USA';
SELECT * FROM films JOIN directors ON films.director_id = directors.director_id JOIN writers ON films.writer_id = writers.writer_id WHERE directors.name = writers.name;
SELECT directors.name, films.title FROM films JOIN directors ON films.director_id = directors.director_id WHERE films.score >= 8;
SELECT directors.name AS director, stars.name AS star FROM directors JOIN films ON films.director_id = directors.director_id JOIN stars ON films.director_id = directors.director_id;
SELECT films.title, stars.name, directors.country AS director_country FROM films JOIN directors ON films.director_id = directors.director_id JOIN stars ON films.star_id = stars.star_id WHERE directors.country = 'USA' AND stars.name LIKE '%a%';
SELECT films.title, films.genre, directors.name FROM films JOIN directors ON films.director_id = directors.director_id;
SELECT films.title, writers.name, writers.email FROM films JOIN writers ON films.writer_id = writers.writer_id WHERE writers.email LIKE '%@email.com';
SELECT films.title, directors.name, films.score FROM films JOIN directors ON films.director_id = directors.director_id WHERE films.score > 7 AND directors.country = 'Poland';
