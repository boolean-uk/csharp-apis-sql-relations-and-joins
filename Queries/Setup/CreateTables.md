
CREATE TABLE Director(
    directorID SERIAL NOT NULL, 
    name VARCHAR PRIMARY KEY,
    country VARCHAR (100) NOT NULL
);

CREATE TABLE Star(
    starID SERIAL NOT NULL, 
    name VARCHAR PRIMARY KEY,
    dob DATE NOT NULL
);

CREATE TABLE Writer(
    writerID SERIAL NOT NULL, 
    name VARCHAR PRIMARY KEY,
    email VARCHAR (100) NOT NULL
);

CREATE TABLE Film(
    id SERIAL PRIMARY KEY, 
    title VARCHAR (100) NOT NULL,
    director VARCHAR (100) REFERENCES Director(name),
    star VARCHAR (100) REFERENCES Star(name), 
    Writer VARCHAR (100) REFERENCES Writer(name),
    year INT NOT NULL,
    genre VARCHAR (100) NOT NULL, 
    score INT NOT NULL
);