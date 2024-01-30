CREATE TABLE
    directors (
        id serial PRIMARY key,
        person_id INT REFERENCES people(id),
        country VARCHAR(50)
    );