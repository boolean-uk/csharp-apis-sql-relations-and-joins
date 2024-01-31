-- Persons table
CREATE TABLE Persons (
    PersonID SERIAL PRIMARY KEY,
    Name VARCHAR(255),
    DateOfBirth DATE,
    Email VARCHAR(255),
    Country VARCHAR(255)
);

-- Populating Persons table
INSERT INTO Persons (Name, DateOfBirth, Email, Country)
SELECT COALESCE(d.Name, s.Name, w.Name) AS Name, s.DateOfBirth, w.Email, d.Country
FROM Directors d
FULL OUTER JOIN Stars s ON d.Name = s.Name
FULL OUTER JOIN Writers w ON d.Name = w.Name;

-- Films table
CREATE TABLE Films_two (
    FilmID SERIAL PRIMARY KEY,
    Title VARCHAR(255),
    DirectorID INT,
    StarID INT,
    WriterID INT,
    Year INT,
    Genre VARCHAR(255),
    Score INT,
    FOREIGN KEY (DirectorID) REFERENCES Persons(PersonID),
    FOREIGN KEY (StarID) REFERENCES Persons(PersonID),
    FOREIGN KEY (WriterID) REFERENCES Persons(PersonID)
);

-- Populating films_two
INSERT INTO Films_two (Title, DirectorID, StarID, WriterID, Year, Genre, Score)
SELECT f.Title, d.PersonID, s.PersonID, w.PersonID, f.Year, f.Genre, f.Score
FROM Films f
JOIN Directors ds ON f.DirectorID = ds.DirectorID
JOIN Stars ss ON f.StarID = ss.StarID
JOIN Writers ws ON f.WriterID = ws.WriterID
JOIN Persons d ON ds.Name = d.Name
JOIN Persons s ON ss.Name = s.Name
JOIN Persons w ON ws.Name = w.Name;





