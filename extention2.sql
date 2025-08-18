CREATE TABLE People (
    id SERIAL PRIMARY KEY,
    name VARCHAR (100) NOT NULL,
    birthdate DATE,
    country VARCHAR (100),
    email VARCHAR (100) UNIQUE
);

CREATE TABLE Film_Cast (
    film_id INTEGER NOT NULL REFERENCES Film(id),
    actor_id INTEGER NOT NULL REFERENCES People(id),
    film_role VARCHAR NOT NULL,
    PRIMARY KEY (film_id, actor_id)
);

CREATE TABLE Film (
    id SERIAL PRIMARY KEY,
    title VARCHAR (100) NOT NULL, 
    year_made INTEGER NOT NULL,
    genre VARCHAR (100) NOT NULL,
    score INTEGER NOT NULL,
    -- Foreign keys
    director_id INTEGER REFERENCES People(id),
    star_id INTEGER REFERENCES People(id),
    writer_id INTEGER REFERENCES People(id)
);

-- Inserting a few more actors to the people table
INSERT INTO People (id, name, birthdate, country, email) VALUES (27, 'Harrison Ford', NULL, NULL, NULL);
INSERT INTO People (id, name, birthdate, country, email) VALUES (28, 'Carrie Fisher', NULL, NULL, NULL);
INSERT INTO People (id, name, birthdate, country, email) VALUES (29, 'Peter Mayhew', NULL, NULL, NULL);

-- Inserting the actors into the film cast of star wars a new hope
INSERT INTO Film_Cast (film_id, actor_id, film_role) VALUES (2, 5, 'Luke Skywalker'); -- add the star of the movie Mark Hamill the legend
-- add the other actors to the film cast of star wars a new hope
INSERT INTO Film_Cast (film_id, actor_id, film_role) VALUES (2, 27, 'Han Solo');
INSERT INTO Film_Cast (film_id, actor_id, film_role) VALUES (2, 28, 'Princess Leia Organa');
INSERT INTO Film_Cast (film_id, actor_id, film_role) VALUES (2, 29, 'Chewbacca');

-- Simple query to show the film cast of star wars a new hope
SELECT f.title as film_title, a.name AS actor, fc.film_role
FROM Film_Cast fc
JOIN Film f ON f.id = fc.film_id
JOIN People a ON a.id = fc.actor_id
WHERE film_id = 2