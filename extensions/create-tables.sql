CREATE TABLE IF NOT EXISTS films (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    director_id INTEGER NOT NULL,
    star_id INTEGER NOT NULL,
    writer_id INTEGER NOT NULL,
    year INTEGER,
    genre TEXT,
    score INTEGER,
    FOREIGN KEY (director_id) REFERENCES director (id),
    FOREIGN KEY (star_id) REFERENCES star (id),
    FOREIGN KEY (writer_id) REFERENCES writer (id)
);

CREATE TABLE IF NOT EXISTS director (
    id SERIAL PRIMARY KEY,
    people_id INTEGER,
    director_country TEXT,
    FOREIGN KEY (people_id) REFERENCES people (id)
);

CREATE TABLE IF NOT EXISTS star (
    id SERIAL PRIMARY KEY,
    people_id INTEGER,
    star_date_of_birth DATE,
    FOREIGN KEY (people_id) REFERENCES people (id)
);

CREATE TABLE IF NOT EXISTS writer (
    id SERIAL PRIMARY KEY,
    people_id INTEGER,
    writer_email TEXT,
    FOREIGN KEY (people_id) REFERENCES people (id)
);

CREATE TABLE IF NOT EXISTS people (
    id SERIAL PRIMARY KEY,
    name TEXT
);