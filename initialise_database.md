CREATE TABLE movies (
    id SERIAL PRIMARY KEY,
    title VARCHAR(40) NOT NULL,
    year VARCHAR(50) NOT NULL,
    genre VARCHAR(40) NOT NULL,
    score INT
);

CREATE TABLE people (
    id SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    country VARCHAR(50),
    email VARCHAR(40),
    dob VARCHAR(15)
);

CREATE TABLE directors (
    id SERIAL PRIMARY KEY,
    people_id INT,
    FOREIGN KEY (people_id) REFERENCES people(id)
);

CREATE TABLE writers (
    id SERIAL PRIMARY KEY,
    people_id INT,
    FOREIGN KEY (people_id) REFERENCES people(id)
);

CREATE TABLE actors (
    id SERIAL PRIMARY KEY,
    people_id INT,
    FOREIGN KEY (people_id) REFERENCES people(id)
);

CREATE TABLE movies_stars (
    movie_id INT,
    actors_id INT,
    PRIMARY KEY (movie_id, actors_id),
    FOREIGN KEY (movie_id) REFERENCES movies(id),
    FOREIGN KEY (actors_id) REFERENCES actors(id)
);

CREATE TABLE movies_writers (
    movie_id INT,
    writers_id INT,
    PRIMARY KEY (movie_id, writers_id),
    FOREIGN KEY (movie_id) REFERENCES movies(id),
    FOREIGN KEY (writers_id) REFERENCES writers(id)
);

CREATE TABLE movies_directors (
    movie_id INT,
    directors_id INT,
    PRIMARY KEY (movie_id, directors_id),
    FOREIGN KEY (movie_id) REFERENCES movies(id),
    FOREIGN KEY (directors_id) REFERENCES directors(id)
);

CREATE TABLE casts (
    movie_id INT,
    actors_id INT,
    PRIMARY KEY (movie_id, actors_id),
    FOREIGN KEY (movie_id) REFERENCES movies(id),
    FOREIGN KEY (actors_id) REFERENCES actors(id)
);

INSERT INTO movies (title, year, genre, score)
VALUES ('2001: A Space Odyssey', 1968, 'Science Fiction', 10)

INSERT INTO movies (title, year, genre, score)
VALUES ('Star Wars: A New Hope', 1977, 'Science Fiction', 7);

-- Query for inserting 'To Kill A Mockingbird'
INSERT INTO movies (title, year, genre, score)
VALUES ('To Kill A Mockingbird', 1962, 'Drama', 10);

-- Query for inserting 'Titanic'
INSERT INTO movies (title, year, genre, score)
VALUES ('Titanic', 1997, 'Romance', 5);

-- Query for inserting 'Dr Zhivago'
INSERT INTO movies (title, year, genre, score)
VALUES ('Dr Zhivago', 1965, 'Historical', 8);

-- Query for inserting 'El Cid'
INSERT INTO movies (title, year, genre, score)
VALUES ('El Cid', 1961, 'Historical', 6);

-- Query for inserting 'Voyage to Cythera'
INSERT INTO movies (title, year, genre, score)
VALUES ('Voyage to Cythera', 1984, 'Drama', 8);

-- Query for inserting 'Soldier of Orange'
INSERT INTO movies (title, year, genre, score)
VALUES ('Soldier of Orange', 1977, 'Thriller', 8);

-- Query for inserting 'Three Colours: Blue'
INSERT INTO movies (title, year, genre, score)
VALUES ('Three Colours: Blue', 1993, 'Drama', 8);

-- Query for inserting 'Cyrano de Bergerac'
INSERT INTO movies (title, year, genre, score)
VALUES ('Cyrano de Bergerac', 1990, 'Historical', 9);

INSERT INTO people (name, country, email, dob) VALUES ('Stanley Kubrick', 'USA', null, null);

INSERT INTO people (name, country, email, dob) VALUES ('Keir Dullea', null, null, 1936-05-30);

INSERT INTO people (name, country, email, dob) VALUES ('Arthur C Clarke', null, 'arthur@clarke.com', null);

-- Director: George Lucas
INSERT INTO people (name, country, email, dob)
VALUES ('George Lucas', 'USA', null, null);

-- Star: Mark Hamill
INSERT INTO people (name, country, email, dob)
VALUES ('Mark Hamill', null, null, '1951-09-25');

-- Writer: George Lucas
INSERT INTO people (name, country, email, dob)
VALUES ('George Lucas', null, 'george@email.com', null);

-- Director: Robert Mulligan
INSERT INTO people (name, country, email, dob)
VALUES ('Robert Mulligan', 'USA', null, null);

-- Star: Gregory Peck
INSERT INTO people (name, country, email, dob)
VALUES ('Gregory Peck', null, null, '1916-04-05');

-- Writer: Harper Lee
INSERT INTO people (name, country, email, dob)
VALUES ('Harper Lee', null, 'harper@lee.com', null);

-- Director: James Cameron
INSERT INTO people (name, country, email, dob)
VALUES ('James Cameron', 'Canada', null, null);

-- Star: Leonardo DiCaprio
INSERT INTO people (name, country, email, dob)
VALUES ('Leonardo DiCaprio', null, null, '1974-11-11');

-- Writer: James Cameron
INSERT INTO people (name, country, email, dob)
VALUES ('James Cameron', null, 'james@cameron.com', null);

-- Director: David Lean
INSERT INTO people (name, country, email, dob)
VALUES ('David Lean', 'UK', null, null);

-- Star: Julie Christie
INSERT INTO people (name, country, email, dob)
VALUES ('Julie Christie', null, null, '1940-04-14');

-- Writer: Boris Pasternak
INSERT INTO people (name, country, email, dob)
VALUES ('Boris Pasternak', null, 'boris@boris.com', null);

-- Director: Anthony Mann
INSERT INTO people (name, country, email, dob)
VALUES ('Anthony Mann', 'USA', null, null);

-- Star: Charlton Heston
INSERT INTO people (name, country, email, dob)
VALUES ('Charlton Heston', null, null, '1923-10-04');

-- Writer: Frederick Frank
INSERT INTO people (name, country, email, dob)
VALUES ('Frederick Frank', null, 'fred@frank.com', null);

-- Director: Theodoros Angelopoulos
INSERT INTO people (name, country, email, dob)
VALUES ('Theodoros Angelopoulos', 'Greece', null, null);

-- Star: Manos Katrakis
INSERT INTO people (name, country, email, dob)
VALUES ('Manos Katrakis', null, null, '1908-08-14');

-- Writer: Theodoros Angelopoulos
INSERT INTO people (name, country, email, dob)
VALUES ('Theodoros Angelopoulos', null, 'theo@angelopoulos.com', null);

-- Director: Paul Verhoeven
INSERT INTO people (name, country, email, dob)
VALUES ('Paul Verhoeven', 'Netherlands', null, null);

-- Star: Rutger Hauer
INSERT INTO people (name, country, email, dob)
VALUES ('Rutger Hauer', null, null, '1944-01-23');

-- Writer: Erik Hazelhoff Roelfzema
INSERT INTO people (name, country, email, dob)
VALUES ('Erik Hazelhoff Roelfzema', null, 'erik@roelfzema.com', null);

-- Director: Krzysztof Kieslowski
INSERT INTO people (name, country, email, dob)
VALUES ('Krzysztof Kieslowski', 'Poland', null, null);

-- Star: Juliette Binoche
INSERT INTO people (name, country, email, dob)
VALUES ('Juliette Binoche', null, null, '1964-03-09');

-- Writer: Krzysztof Kieslowsk
INSERT INTO people (name, country, email, dob)
VALUES ('Krzysztof Kieslowsk', null, 'email@email.com', null);

-- Director: Jean-Paul Rappeneau
INSERT INTO people (name, country, email, dob)
VALUES ('Jean-Paul Rappeneau', 'France', null, null);

-- Star: Gerard Depardieu
INSERT INTO people (name, country, email, dob)
VALUES ('Gerard Depardieu', null, null, '1948-12-27');

-- Writer: Edmond Rostand
INSERT INTO people (name, country, email, dob)
VALUES ('Edmond Rostand', null, 'edmond@rostand.com', null);

