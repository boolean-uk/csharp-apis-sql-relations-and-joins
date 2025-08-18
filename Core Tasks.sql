CREATE TABLE director (
    id SERIAL PRIMARY KEY,
    name VARCHAR(128) NOT NULL,
    country VARCHAR(128) NOT NULL
);

CREATE TABLE writer (
    id SERIAL PRIMARY KEY,
    name VARCHAR(128) NOT NULL,
    email VARCHAR(128) UNIQUE NOT NULL
);

CREATE TABLE actor (
    id SERIAL PRIMARY KEY,
    name VARCHAR(128) NOT NULL,
    dob DATE NOT NULL
);

CREATE TABLE movie (
    id SERIAL PRIMARY KEY,
    release_title VARCHAR(128) NOT NULL,
    release_year INT NOT NULL,
    genre VARCHAR(128) NOT NULL,
    score SMALLINT NOT NULL CHECK (score BETWEEN 0 AND 100),
    director_id INT NOT NULL REFERENCES director(id),
    actor_id INT NOT NULL REFERENCES actor(id),
    writer_id INT NOT NULL REFERENCES writer(id)
);

INSERT INTO director (id, name, country) VALUES
(1, 'Stanley Kubrick', 'USA'),
(2, 'George Lucas', 'USA'),
(3, 'Robert Mulligan', 'USA'),
(4, 'James Cameron', 'Canada'),
(5, 'David Lean', 'UK'),
(6, 'Anthony Mann', 'USA'),
(7, 'Theodoros Angelopoulos', 'Greece'),
(8, 'Paul Verhoeven', 'Netherlands'),
(9, 'Krzysztof Kieslowski', 'Poland'),
(10, 'Jean-Paul Rappeneau', 'France');

INSERT INTO writer (id, name, email) VALUES
(1, 'Arthur C Clarke', 'arthur@clarke.com'),
(2, 'George Lucas', 'george@email.com'),
(3, 'Harper Lee', 'harper@lee.com'),
(4, 'James Cameron', 'james@cameron.com'),
(5, 'Boris Pasternak', 'boris@boris.com'),
(6, 'Frederick Frank', 'fred@frank.com'),
(7, 'Theodoros Angelopoulos', 'theo@angelopoulos.com'),
(8, 'Erik Hazelhoff Roelfzema', 'erik@roelfzema.com'),
(9, 'Krzysztof Kieslowski', 'email@email.com'),
(10, 'Edmond Rostand', 'edmond@rostand.com');

INSERT INTO actor (id, name, dob) VALUES
(1, 'Keir Dullea', '1936-05-30'),
(2, 'Mark Hamill', '1951-09-25'),
(3, 'Gregory Peck', '1916-04-05'),
(4, 'Leonardo DiCaprio', '1974-11-11'),
(5, 'Julie Christie', '1940-04-14'),
(6, 'Charlton Heston', '1923-10-04'),
(7, 'Manos Katrakis', '1908-08-14'),
(8, 'Rutger Hauer', '1944-01-23'),
(9, 'Juliette Binoche', '1964-03-09'),
(10, 'Gerard Depardieu', '1948-12-27');

INSERT INTO movie (id, release_title, release_year, genre, score, director_id, actor_id, writer_id) VALUES
(1, '2001: A Space Odyssey', 1968, 'Science Fiction', 10, 1, 1, 1),
(2, 'Star Wars: A New Hope', 1977, 'Science Fiction', 7, 2, 2, 2),
(3, 'To Kill A Mockingbird', 1962, 'Drama', 10, 3, 3, 3),
(4, 'Titanic', 1997, 'Romance', 5, 4, 4, 4),
(5, 'Dr Zhivago', 1965, 'Historical', 8, 5, 5, 5),
(6, 'El Cid', 1961, 'Historical', 6, 6, 6, 6),
(7, 'Voyage to Cythera', 1984, 'Drama', 8, 7, 7, 7),
(8, 'Soldier of Orange', 1977, 'Thriller', 8, 8, 8, 8),
(9, 'Three Colours: Blue', 1993, 'Drama', 8, 9, 9, 9),
(10, 'Cyrano de Bergerac', 1990, 'Historical', 9, 10, 10, 10);

SELECT
  m.release_title,
  d.name
FROM
  movie m
  LEFT JOIN director d ON m.director_id = d.id;

SELECT
  m.release_title,
  d.name,
  a.name
FROM
  movie m
  LEFT JOIN director d ON m.director_id = d.id
  LEFT JOIN actor a ON m.actor_id = a.id;

SELECT
  m.release_title
FROM
  movie m
  LEFT JOIN director d ON m.director_id = d.id
WHERE
  d.country = 'USA';

SELECT
  m.release_title
FROM
  movie m
  LEFT JOIN director d ON m.director_id = d.id
  LEFT JOIN writer w ON m.writer_id = w.id
WHERE
  d.name = w.name;

SELECT
  m.release_title,
  d.name
FROM
  movie m
  LEFT JOIN director d ON m.director_id = d.id
WHERE
  m.score >= 8;






