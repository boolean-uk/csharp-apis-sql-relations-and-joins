-- Directors Table
CREATE TABLE Directors (
    DirectorID SERIAL PRIMARY KEY,
    Name VARCHAR(255),
    Country VARCHAR(255)
);

-- Stars Table
CREATE TABLE Stars (
    StarID SERIAL PRIMARY KEY,
    Name VARCHAR(255),
    DateOfBirth DATE
);

-- Writers Table
CREATE TABLE Writers (
    WriterID SERIAL PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255)
);

-- Films Table
CREATE TABLE Films (
    FilmID SERIAL PRIMARY KEY,
    Title VARCHAR(255),
    DirectorID INT,
    StarID INT,
    WriterID INT,
    Year INT,
    Genre VARCHAR(255),
    Score INT,
    FOREIGN KEY (DirectorID) REFERENCES Director(DirectorID),
    FOREIGN KEY (StarID) REFERENCES Star(StarID),
    FOREIGN KEY (WriterID) REFERENCES Writer(WriterID)
);










