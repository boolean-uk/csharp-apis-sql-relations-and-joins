CREATE TABLE People (
    personID SERIAL PRIMARY KEY,
    name VARCHAR (100) NOT NULL,
    country VARCHAR (100),
    dob Date,
    email VARCHAR (100)
);

CREATE TABLE Director(
    directorID SERIAL PRIMARY KEY, 
    personID INT REFERENCES People(personID)
);

CREATE TABLE Star(
    starID SERIAL PRIMARY KEY, 
    personID INT REFERENCES People(personID)
);

CREATE TABLE Writer(
    writerID SERIAL PRIMARY KEY, 
    personID INT REFERENCES People(personID)
);

CREATE TABLE Film(
    filmID SERIAL PRIMARY KEY, 
    title VARCHAR (100) NOT NULL,
    directorID INT REFERENCES Director(directorID),
    starID INT REFERENCES Star(starID), 
    writerID INT REFERENCES Writer(writerID),
    year INT NOT NULL,
    genre VARCHAR (100) NOT NULL, 
    score INT NOT NULL
);