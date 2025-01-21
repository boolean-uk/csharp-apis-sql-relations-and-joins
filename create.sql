CREATE TABLE countries
(
    id   SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE genre
(
    id   SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE director
(
    id         SERIAL PRIMARY KEY,
    name       VARCHAR(255) NOT NULL,
    country_id INTEGER REFERENCES countries (id)
);

CREATE TABLE star
(
    id   SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    dob  DATE
);

CREATE TABLE writer
(
    id    SERIAL PRIMARY KEY,
    name  VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL
);

CREATE TABLE film
(
    id          SERIAL PRIMARY KEY,
    title       VARCHAR(255) NOT NULL,
    genre_id    INTEGER REFERENCES genre (id),
    year        INTEGER,
    score       INTEGER,
    director_id INTEGER REFERENCES director (id),
    star_id     INTEGER REFERENCES star (id),
    writer_id   INTEGER REFERENCES writer (id)
);


-- Some standard data
INSERT INTO countries (id, name) VALUES (1, 'USA');
INSERT INTO countries (id, name) VALUES (2, 'Canada');
INSERT INTO countries (id, name) VALUES (3, 'UK');
INSERT INTO countries (id, name) VALUES (4, 'Greece');
INSERT INTO countries (id, name) VALUES (5, 'Netherlands');
INSERT INTO countries (id, name) VALUES (6, 'Poland');
INSERT INTO countries (id, name) VALUES (7, 'France');

INSERT INTO genre (id, name) VALUES (1, 'Science Fiction');
INSERT INTO genre (id, name) VALUES (2, 'Drama');
INSERT INTO genre (id, name) VALUES (3, 'Romance');
INSERT INTO genre (id, name) VALUES (4, 'Historical');
INSERT INTO genre (id, name) VALUES (5, 'Thriller');

INSERT INTO director (id, name, country_id) VALUES (1, 'Stanley Kubrick', 1);
INSERT INTO director (id, name, country_id) VALUES (2, 'George Lucas', 1);
INSERT INTO director (id, name, country_id) VALUES (3, 'Robert Mulligan', 1);
INSERT INTO director (id, name, country_id) VALUES (4, 'James Cameron', 2);
INSERT INTO director (id, name, country_id) VALUES (5, 'David Lean', 3);
INSERT INTO director (id, name, country_id) VALUES (6, 'Anthony Mann', 1);
INSERT INTO director (id, name, country_id) VALUES (7, 'Theodoros Angelopoulos', 4);
INSERT INTO director (id, name, country_id) VALUES (8, 'Paul Verhoeven', 5);
INSERT INTO director (id, name, country_id) VALUES (9, 'Krzysztof Kieslowski', 6);
INSERT INTO director (id, name, country_id) VALUES (10, 'Jean-Paul Rappeneau', 7);

INSERT INTO star (id, name, dob) VALUES (1, 'Keir Dullea', '1936-05-30');
INSERT INTO star (id, name, dob) VALUES (2, 'Mark Hamill', '1951-09-25');
INSERT INTO star (id, name, dob) VALUES (3, 'Gregory Peck', '1916-09-25');
INSERT INTO star (id, name, dob) VALUES (4, 'Leonardo DiCaprio', '1974-11-11');
INSERT INTO star (id, name, dob) VALUES (5, 'Julie Christie', '1940-04-14');
INSERT INTO star (id, name, dob) VALUES (6, 'Charlton Heston', '1923-10-04');
INSERT INTO star (id, name, dob) VALUES (7, 'Manos Katrakis', '1908-08-14');
INSERT INTO star (id, name, dob) VALUES (8, 'Rutger Hauer', '1944-01-23');
INSERT INTO star (id, name, dob) VALUES (9, 'Juliette Binoche', '1964-03-09');
INSERT INTO star (id, name, dob) VALUES (10, 'Gerard Depardieu', '1948-12-27');


INSERT INTO writer (id, name, email) VALUES (1, 'Arthur C Clarke', 'arthur@clarke.com');
INSERT INTO writer (id, name, email) VALUES (2, 'George Lucas', 'george@email.com');
INSERT INTO writer (id, name, email) VALUES (3, 'Harper Lee', 'harper@lee.com');
INSERT INTO writer (id, name, email) VALUES (4, 'James Cameron', 'james@cameron.com');
INSERT INTO writer (id, name, email) VALUES (5, 'Boris Pasternak', 'boris@boris.com');
INSERT INTO writer (id, name, email) VALUES (6, 'Frederick Frank', 'fred@frank.com');
INSERT INTO writer (id, name, email) VALUES (7, 'Theodoros Angelopoulos', 'theo@angelopoulos.com');
INSERT INTO writer (id, name, email) VALUES (8, 'Erik Hazelhoff Roelfzema', 'erik@roelfzema.com');
INSERT INTO writer (id, name, email) VALUES (9, 'Krzysztof Kieslowski', 'email@email.com');
INSERT INTO writer (id, name, email) VALUES (10, 'Edmond Rostand', 'edmond@rostand.com');


INSERT INTO film (title, genre_id, year, score, director_id, star_id, writer_id) VALUES ('2001: A Space Odyssey', 1, 1968, 10, 1, 1, 1);
INSERT INTO film (title, genre_id, year, score, director_id, star_id, writer_id) VALUES ('Star Wars: A New Hope', 1, 1977, 7, 2, 2, 2);
INSERT INTO film (title, genre_id, year, score, director_id, star_id, writer_id) VALUES ('To Kill A Mockingbird', 2, 1962, 10, 3, 3, 3);
INSERT INTO film (title, genre_id, year, score, director_id, star_id, writer_id) VALUES ('Titanic', 3, 1997, 5, 4, 4, 4);
INSERT INTO film (title, genre_id, year, score, director_id, star_id, writer_id) VALUES ('Dr Zhivago', 4, 1965, 8, 5, 5, 5);
INSERT INTO film (title, genre_id, year, score, director_id, star_id, writer_id) VALUES ('El Cid', 4, 1961, 6, 6, 6, 6);
INSERT INTO film (title, genre_id, year, score, director_id, star_id, writer_id) VALUES ('Voyage to Cythera', 2, 1984, 8, 7, 7, 7);
INSERT INTO film (title, genre_id, year, score, director_id, star_id, writer_id) VALUES ('Soldier of Orange', 5, 1977, 8, 8, 8, 8);
INSERT INTO film (title, genre_id, year, score, director_id, star_id, writer_id) VALUES ('Three Colours: Blue', 2, 1993, 8, 9, 9, 9);
INSERT INTO film (title, genre_id, year, score, director_id, star_id, writer_id) VALUES ('Cyrano de Bergerac', 4, 1990, 9, 10, 10, 10);
