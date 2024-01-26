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
    dob INT
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
