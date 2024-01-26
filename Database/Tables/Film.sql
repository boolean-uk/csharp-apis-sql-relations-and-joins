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