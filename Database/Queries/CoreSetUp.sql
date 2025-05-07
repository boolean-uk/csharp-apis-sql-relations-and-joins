-- Setting up the database by creating the tables and inserting the data

CREATE TABLE writers(
    id SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    email VARCHAR(40) NOT NULL
);

CREATE TABLE stars(
    id SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    star_dob DATE NOT NULL
);

CREATE TABLE directors(
    id SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    country VARCHAR(15) NOT NULL
);

CREATE TABLE films(
    id SERIAL PRIMARY KEY,
    title VARCHAR(40) NOT NULL,
    year INT NOT NULL,
    genre VARCHAR(20) NOT NULL,
    score INT NOT NULL,
    director_id INT REFERENCES directors(id),
    star_id INT REFERENCES stars(id),
    writer_id INT REFERENCES writers(id)
);


-- Writers Data
INSERT INTO writers (name, email) VALUES ('Arthur C Clarke', 'arthur@clarke.com');
INSERT INTO writers (name, email) VALUES ('George Lucas', 'george@email.com');
INSERT INTO writers (name, email) VALUES ('Harper Lee', 'harper@lee.com');
INSERT INTO writers (name, email) VALUES ('James Cameron', 'james@cameron.com');
INSERT INTO writers (name, email) VALUES ('Boris Pasternak', 'boris@boris.com');
INSERT INTO writers (name, email) VALUES ('Frederick Frank', 'fred@frank.com');
INSERT INTO writers (name, email) VALUES ('Theodoros Angelopoulos', 'theo@angelopoulos.com');
INSERT INTO writers (name, email) VALUES ('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com');
INSERT INTO writers (name, email) VALUES ('Krzysztof Kieslowski', 'email@email.com');
INSERT INTO writers (name, email) VALUES ('Edmond Rostand', 'edmond@rostand.com');

-- Stars Data
INSERT INTO stars (name, star_dob) VALUES ('Keir Dullea', '1936-05-30');
INSERT INTO stars (name, star_dob) VALUES ('Mark Hamill', '1951-09-25');
INSERT INTO stars (name, star_dob) VALUES ('Gregory Peck', '1916-04-05');
INSERT INTO stars (name, star_dob) VALUES ('Leonardo DiCaprio', '1974-11-11');
INSERT INTO stars (name, star_dob) VALUES ('Julie Christie', '1940-04-14');
INSERT INTO stars (name, star_dob) VALUES ('Charlton Heston', '1923-10-04');
INSERT INTO stars (name, star_dob) VALUES ('Manos Katrakis', '1908-08-14');
INSERT INTO stars (name, star_dob) VALUES ('Rutger Hauer', '1944-01-23');
INSERT INTO stars (name, star_dob) VALUES ('Juliette Binoche', '1964-03-09');
INSERT INTO stars (name, star_dob) VALUES ('Gerard Depardieu', '1948-12-27');

-- Directors Data
INSERT INTO directors (name, country) VALUES ('Stanley Kubrick', 'USA');
INSERT INTO directors (name, country) VALUES ('George Lucas', 'USA');
INSERT INTO directors (name, country) VALUES ('Robert Mulligan', 'USA');
INSERT INTO directors (name, country) VALUES ('James Cameron', 'Canada');
INSERT INTO directors (name, country) VALUES ('David Lean', 'UK');
INSERT INTO directors (name, country) VALUES ('Anthony Mann', 'USA');
INSERT INTO directors (name, country) VALUES ('Theodoros Angelopoulos', 'Greece');
INSERT INTO directors (name, country) VALUES ('Paul Verhoeven', 'Netherlands');
INSERT INTO directors (name, country) VALUES ('Krzysztof Kieslowski', 'Poland');
INSERT INTO directors (name, country) VALUES ('Jean-Paul Rappeneau', 'France');

-- Films Data with Foreign Keys
INSERT INTO films (title, year, genre, score, director_id, star_id, writer_id) VALUES ('2001: A Space Odyssey', 1968, 'Science Fiction', 10, 1, 1, 1);
INSERT INTO films (title, year, genre, score, director_id, star_id, writer_id) VALUES ('Star Wars: A New Hope', 1977, 'Science Fiction', 7, 2, 2, 2);
INSERT INTO films (title, year, genre, score, director_id, star_id, writer_id) VALUES ('To Kill A Mockingbird', 1962, 'Drama', 10, 3, 3, 3);
INSERT INTO films (title, year, genre, score, director_id, star_id, writer_id) VALUES ('Titanic', 1997, 'Romance', 5, 4, 4, 4);
INSERT INTO films (title, year, genre, score, director_id, star_id, writer_id) VALUES ('Dr Zhivago', 1965, 'Historical', 8, 5, 5, 5);
INSERT INTO films (title, year, genre, score, director_id, star_id, writer_id) VALUES ('El Cid', 1961, 'Historical', 6, 6, 6, 6);
INSERT INTO films (title, year, genre, score, director_id, star_id, writer_id) VALUES ('Voyage to Cythera', 1984, 'Drama', 8, 7, 7, 7);
INSERT INTO films (title, year, genre, score, director_id, star_id, writer_id) VALUES ('Soldier of Orange', 1977, 'Thriller', 8, 8, 8, 8);
INSERT INTO films (title, year, genre, score, director_id, star_id, writer_id) VALUES ('Three Colours: Blue', 1993, 'Drama', 8, 9, 9, 9);
INSERT INTO films (title, year, genre, score, director_id, star_id, writer_id) VALUES ('Cyrano de Bergerac', 1990, 'Historical', 9, 10, 10, 10);
