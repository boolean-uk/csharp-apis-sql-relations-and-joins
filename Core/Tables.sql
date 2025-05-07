DROP TABLE IF EXISTS writers;
DROP TABLE IF EXISTS stars;
DROP TABLE IF EXISTS directors;
DROP TABLE IF EXISTS films;

CREATE TABLE writers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE stars (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    dob DATE NOT NULL
);

CREATE TABLE directors (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL
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