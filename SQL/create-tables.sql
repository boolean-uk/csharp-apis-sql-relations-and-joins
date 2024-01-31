CREATE TABLE directors(
    director_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL
);

CREATE TABLE writers(
    writer_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

CREATE TABLE stars(
    star_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    dob VARCHAR(255)
);

CREATE TABLE films(
    film_id serial primary key,
    title varchar(255) not null,
    director_id INTEGER REFERENCES directors(director_id),
    writer_id INTEGER REFERENCES writers(writer_id),
    star_id INTEGER REFERENCES stars(star_id),
    release_year INTEGER,
    score INTEGER,
    genre VARCHAR(50)
);