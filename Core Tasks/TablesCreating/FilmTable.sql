CREATE TABLE Film (
    film_id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    director_id INTEGER REFERENCES Director(director_id),
    star_id INTEGER REFERENCES Star(star_id),
    writer_id INTEGER REFERENCES Writer(writer_id),
    year INTEGER,
    genre VARCHAR(255),
    score INTEGER
);
