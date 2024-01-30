CREATE TABLE
    actors (
        id serial PRIMARY key,
        person_id INT REFERENCES people(id),
        dob DATE
    );