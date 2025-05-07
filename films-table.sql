CREATE TABLE
    films (
        id SERIAL PRIMARY KEY,
        title VARCHAR(255),
        release_year INT,
        genre VARCHAR(50),
        score INT,
        director_id INT REFERENCES directors(id),
        star_id INT REFERENCES actors(id),
        writer_id INT REFERENCES writers(id)
    );