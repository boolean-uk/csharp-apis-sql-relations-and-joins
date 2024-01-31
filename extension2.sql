-- CastS Table
CREATE TABLE Casts (
    CastID SERIAL PRIMARY KEY,
    FilmID INT,
    ActorID INT,
    FOREIGN KEY (FilmID) REFERENCES Films(FilmID),
    FOREIGN KEY (ActorID) REFERENCES Persons(PersonID)
);

-- Populating Casts Table
INSERT INTO Casts (FilmID, ActorID)
SELECT f.FilmID, f.StarID
FROM Films_two f;