DROP TABLE IF EXISTS writers;
DROP TABLE IF EXISTS stars;
DROP TABLE IF EXISTS directors;
DROP TABLE IF EXISTS films;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS casts;

CREATE TABLE people (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255)
);

CREATE TABLE writers (
    id SERIAL PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    person_id INT NOT NULL,
    FOREIGN KEY (person_id) REFERENCES people(id)
);

CREATE TABLE stars (
    id SERIAL PRIMARY KEY,
    dob DATE NOT NULL,
    person_id INT NOT NULL,
    FOREIGN KEY (person_id) REFERENCES people(id)
);

CREATE TABLE directors (
    id SERIAL PRIMARY KEY,
    country VARCHAR(255) NOT NULL,
    person_id INT NOT NULL,
    FOREIGN KEY (person_id) REFERENCES people(id)
);

CREATE TABLE films (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    year INT NOT NULL,
    genre VARCHAR(255) NOT NULL,
    score INT NOT NULL,
    writer_id INT NOT NULL,
    star_id INT NOT NULL,
    director_id INT NOT NULL,
    FOREIGN KEY (writer_id) REFERENCES writers(id),
    FOREIGN KEY (star_id) REFERENCES stars(id),
    FOREIGN KEY (director_id) REFERENCES directors(id)
);

CREATE TABLE casts (
    id SERIAL PRIMARY KEY,
    film_id INT NOT NULL,
    person_id INT NOT NULL,
    FOREIGN KEY (film_id) REFERENCES films(id),
    FOREIGN KEY (person_id) REFERENCES people(id)
);