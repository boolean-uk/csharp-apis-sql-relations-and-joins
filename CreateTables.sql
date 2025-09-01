CREATE TABLE Film (
    FilmID INT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Year INT,
    Genre VARCHAR(100),
    Score INT
);

CREATE TABLE People (
    PersonID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    DOB DATE,
    Country VARCHAR(100),   -- only filled when relevant (e.g., directors)
    Email VARCHAR(255)      -- only filled when relevant (e.g., writers)
);

CREATE TABLE Role (
    RoleID INT PRIMARY KEY,
    RoleName VARCHAR(50) NOT NULL
);
-- Example data:
-- (1, 'Director')
-- (2, 'Writer')
-- (3, 'Star')

CREATE TABLE PeopleRole (
    PeopleRoleID INT PRIMARY KEY,
    FilmID INT,
    PersonID INT,
    RoleID INT,
    FOREIGN KEY (FilmID) REFERENCES Film(FilmID),
    FOREIGN KEY (PersonID) REFERENCES People(PersonID),
    FOREIGN KEY (RoleID) REFERENCES Role(RoleID)
);















