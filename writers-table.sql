CREATE TABLE
    writers (
        id serial PRIMARY key,
        person_id INT REFERENCES people(id),
        mail VARCHAR(50)
    );