DROP TABLE IF EXISTS film_actor;
DROP TABLE IF EXISTS actor;
DROP TABLE IF EXISTS film;
DROP TABLE IF EXISTS director;
DROP TABLE IF EXISTS writer;
DROP TABLE IF EXISTS person;

CREATE TABLE person (
    person_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    dob DATE,
    email TEXT,
    co TEXT
);
CREATE TABLE director (
    director_id SERIAL PRIMARY KEY,
    person_id SERIAL NOT NULL,
    FOREIGN KEY (person_id) REFERENCES person (person_id) ON DELETE CASCADE
);

CREATE TABLE writer (
    writer_id SERIAL PRIMARY KEY,
    person_id SERIAL NOT NULL,
    FOREIGN KEY (person_id) REFERENCES person (person_id) ON DELETE CASCADE
);

CREATE TABLE film (
    film_id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    release_year INT,
    genre TEXT,
    score INT,
    director_id SERIAL NOT NULL,
    writer_id SERIAL NOT NULL,
    FOREIGN KEY (director_id) REFERENCES director (director_id) ON DELETE CASCADE,
    FOREIGN KEY (writer_id) REFERENCES writer (writer_id) ON DELETE CASCADE
);

CREATE TABLE actor (
    actor_id SERIAL PRIMARY KEY,
    person_id SERIAL NOT NULL,
    FOREIGN KEY (person_id) REFERENCES person (person_id) ON DELETE CASCADE
);

CREATE TABLE film_actor (
    film_id SERIAL,
    actor_id SERIAL,
    is_star BOOLEAN,
    PRIMARY KEY (film_id, actor_id),
    FOREIGN KEY (film_id) REFERENCES film (film_id) ON DELETE CASCADE,
    FOREIGN KEY (actor_id) REFERENCES actor (actor_id) ON DELETE CASCADE
);