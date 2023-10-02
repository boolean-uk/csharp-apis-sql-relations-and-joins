CREATE TABLE Director (
    DirectorID INT PRIMARY KEY,
    Name VARCHAR(255),
    Country VARCHAR(255)
);


CREATE TABLE Star (
    StarID INT PRIMARY KEY,
    Name VARCHAR(255),
    DOB DATE
);


CREATE TABLE Writer (
    WriterID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255)
);


CREATE TABLE Film (
    FilmID INT PRIMARY KEY,
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


INSERT INTO Director (DirectorID, Name, Country)
VALUES
    (1, 'Stanley Kubrick', 'USA'),
    (2, 'George Lucas', 'USA'),
    (3, 'Robert Mulligan', 'USA'),
    (4, 'James Cameron', 'Canada'),
    (5, 'David Lean', 'UK'),
    (6, 'Anthony Mann', 'USA'),
    (7, 'Theodoros Angelopoulos', 'Greece'),
    (8, 'Paul Verhoeven', 'Netherlands'),
    (9, 'Krzysztof Kieslowski', 'Poland'),
    (10, 'Jean-Paul Rappeneau', 'France');


INSERT INTO Star (StarID, Name, DOB)
VALUES
    (1, 'Keir Dullea', '1936-05-30'),
    (2, 'Mark Hamill', '1951-09-25'),
    (3, 'Gregory Peck', '1916-04-05'),
    (4, 'Leonardo DiCaprio', '1974-11-11'),
    (5, 'Julie Christie', '1940-04-14'),
    (6, 'Charlton Heston', '1923-10-04'),
    (7, 'Manos Katrakis', '1908-08-14'),
    (8, 'Rutger Hauer', '1944-01-23'),
    (9, 'Juliette Binoche', '1964-03-09'),
    (10, 'Gerard Depardieu', '1948-12-27');


INSERT INTO Writer (WriterID, Name, Email)
VALUES
    (1, 'Arthur C Clarke', 'arthur@clarke.com'),
    (2, 'George Lucas', 'george@email.com'),
    (3, 'Harper Lee', 'harper@lee.com'),
    (4, 'James Cameron', 'james@cameron.com'),
    (5, 'Boris Pasternak', 'boris@boris.com'),
    (6, 'Frederick Frank', 'fred@frank.com'),
    (7, 'Theodoros Angelopoulos', 'theo@angelopoulos.com'),
    (8, 'Erik Hazelhoff Roelfzema', 'erik@roelfzema.com'),
    (9, 'Krzysztof Kieslowski', 'email@email.com'),
    (10, 'Edmond Rostand', 'edmond@rostand.com');


INSERT INTO Film (FilmID, Title, DirectorID, StarID, WriterID, Year, Genre, Score)
VALUES
    (1, '2001: A Space Odyssey', 1, 1, 1, 1968, 'Science Fiction', 10),
    (2, 'Star Wars: A New Hope', 2, 2, 2, 1977, 'Science Fiction', 7),
    (3, 'To Kill A Mockingbird', 3, 3, 3, 1962, 'Drama', 10),
    (4, 'Titanic', 4, 4, 4, 1997, 'Romance', 5),
    (5, 'Dr Zhivago', 5, 5, 5, 1965, 'Historical', 8),
    (6, 'El Cid', 6, 6, 6, 1961, 'Historical', 6),
    (7, 'Voyage to Cythera', 7, 7, 7, 1984, 'Drama', 8),
    (8, 'Soldier of Orange', 8, 8, 8, 1977, 'Thriller', 8),
    (9, 'Three Colours: Blue', 9, 9, 9, 1993, 'Drama', 8),
    (10, 'Cyrano de Bergerac', 10, 10, 10, 1990, 'Historical', 9);   
    
    
-- show the title and director name for all films
SELECT Film.Title, Director.Name FROM Film
JOIN Director ON Film.DirectorID = Director.DirectorID;

-- show the title, director, and star name for all films
SELECT Film.Title, Director.Name AS DirectorName, Star.Name AS StarName FROM Film
JOIN Director ON Film.DirectorID = Director.DirectorID
JOIN Star ON Film.StarID = Star.StarID;

-- show the title of films where the director is from the USA
SELECT Film.Title FROM Film
JOIN Director ON Film.DirectorID = Director.DirectorID
WHERE Director.Country = 'USA';

-- show only those films where the writer and the director are the same person
SELECT Film.Title FROM Film
JOIN Director ON Film.DirectorID = Director.DirectorID
JOIN Writer ON Film.WriterID = Writer.WriterID
WHERE Director.Name = Writer.Name;

-- show directors and film titles for films with a score of 8 or higher
SELECT Director.Name, Film.Title FROM Film
JOIN Director ON Film.DirectorID = Director.DirectorID
WHERE Film.Score >= 8;

-- show films with their directors and stars for films with a score of 7 or higher
SELECT Film.Title, Director.Name AS DirectorName, Star.Name AS StarName FROM Film
JOIN Director ON Film.DirectorID = Director.DirectorID
JOIN Star ON Film.StarID = Star.StarID
WHERE Film.Score >= 7;

-- show films with their writers for films released after 1990
SELECT Film.Title, Writer.Name AS WriterName FROM Film
JOIN Writer ON Film.WriterID = Writer.WriterID
WHERE Film.Year > 1990;

-- show the total number of films directed by each director
SELECT Director.Name AS DirectorName, COUNT(Film.FilmID) AS FilmCount FROM Director
LEFT JOIN Film ON Director.DirectorID = Film.DirectorID
GROUP BY DirectorName;

-- show the average score for each genre of films
SELECT Genre, AVG(Score) AS AvgScore FROM Film
GROUP BY Genre;

-- show the top 5 directors with the highest average film scores:
SELECT Director.Name AS DirectorName, AVG(Film.Score) AS AvgScore FROM Director
LEFT JOIN Film ON Director.DirectorID = Film.DirectorID
GROUP BY DirectorName
ORDER BY AvgScore DESC
LIMIT 5;



-- Extension #1

CREATE TABLE People (
    PeopleID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255),
    DOB DATE,
    Country VARCHAR(255),
    Profession VARCHAR(50)
);


ALTER TABLE People
ADD COLUMN Profession VARCHAR(50);


CREATE TABLE Film (
    FilmID INT PRIMARY KEY,
    Title VARCHAR(255),
    DirectorID INT,
    StarID INT,
    WriterID INT,
    Year INT,
    Genre VARCHAR(255),
    Score INT,
    FOREIGN KEY (DirectorID) REFERENCES People(PeopleID),
    FOREIGN KEY (StarID) REFERENCES People(PeopleID),
    FOREIGN KEY (WriterID) REFERENCES People(PeopleID)
);


ALTER TABLE Film
ADD COLUMN DirectorID INT,
ADD COLUMN StarID INT,
ADD COLUMN WriterID INT;


INSERT INTO People (PeopleID, Name, Email, DOB, Country, Profession)
VALUES    
    (1, 'Stanley Kubrick', NULL, NULL, 'USA', 'Director'),
    (2, 'George Lucas', NULL, NULL, 'USA', 'Director'),
    (3, 'Robert Mulligan', NULL, NULL, 'USA', 'Director'),
    (4, 'James Cameron', NULL, NULL, 'Canada', 'Director'),
    (5, 'David Lean', NULL, NULL, 'UK', 'Director'),
    (6, 'Anthony Mann', NULL, NULL, 'USA', 'Director'),
    (7, 'Theodoros Angelopoulos', NULL, NULL, 'Greece', 'Director'),
    (8, 'Paul Verhoeven', NULL, NULL, 'Netherlands', 'Director'),
    (9, 'Krzysztof Kieslowski', NULL, NULL, 'Poland', 'Director'),
    (10, 'Jean-Paul Rappeneau', NULL, NULL, 'France', 'Director'),
    (11, 'Keir Dullea', NULL, '1936-05-30', NULL, 'Actor'),
    (12, 'Mark Hamill', NULL, '1951-09-25', NULL, 'Actor'),
    (13, 'Gregory Peck', NULL, '1916-04-05', NULL, 'Actor'),
    (14, 'Leonardo DiCaprio', NULL, '1974-11-11', NULL, 'Actor'),
    (15, 'Julie Christie', NULL, '1940-04-14', NULL, 'Actor'),
    (16, 'Charlton Heston', NULL, '1923-10-04', NULL, 'Actor'),
    (17, 'Manos Katrakis', NULL, '1908-08-14', NULL, 'Actor'),
    (18, 'Rutger Hauer', NULL, '1944-01-23', NULL, 'Actor'),
    (19, 'Juliette Binoche', NULL, '1964-03-09', NULL, 'Actor'),
    (20, 'Gerard Depardieu', NULL, '1948-12-27', NULL, 'Actor'),
    (21, 'Arthur C Clarke', 'arthur@clarke.com', NULL, NULL, 'Writer'),
    (22, 'George Lucas', 'george@email.com', NULL, NULL, 'Writer'),
    (23, 'Harper Lee', 'harper@lee.com', NULL, NULL, 'Writer'),
    (24, 'James Cameron', 'james@cameron.com', NULL, NULL, 'Writer'),
    (25, 'Boris Pasternak', 'boris@boris.com', NULL, NULL, 'Writer'),
    (26, 'Frederick Frank', 'fred@frank.com', NULL, NULL, 'Writer'),
    (27, 'Theodoros Angelopoulos', 'theo@angelopoulos.com', NULL, NULL, 'Writer'),
    (28, 'Erik Hazelhoff Roelfzema', 'erik@roelfzema.com', NULL, NULL, 'Writer'),
    (29, 'Krzysztof Kieslowski', 'email@email.com', NULL, NULL, 'Writer'),
    (30, 'Edmond Rostand', 'edmond@rostand.com', NULL, NULL, 'Writer');
    

INSERT INTO People (PeopleID, Name, Email, DOB, Country, Profession)
VALUES    
    (31, 'James Cameron', 'james@cameron.com', NULL, 'Canada', 'Both'),
    (32, 'George Lucas', 'george@emall.com', NULL, 'USA', 'Both'),
    (33, 'Krzysztof Kieslowski', 'email@email.com', NULL, 'Poland', 'Both'),
    (34, 'Theodoros Angelopoulos', 'theo@angelopoulos.com', NULL, 'Greece', 'Both');


UPDATE People
SET ActorID = PeopleID
WHERE Profession = 'Actor';

UPDATE People
SET DirectorID = PeopleID
WHERE Profession = 'Director';

UPDATE People
SET WriterID = PeopleID
WHERE Profession = 'Writer';


INSERT INTO Film (FilmID, Title, DirectorID, StarID, WriterID, Year, Genre, Score)
VALUES
    (1, '2001: A Space Odyssey', 1, 11, 21, 1968, 'Science Fiction', 10),
    (2, 'Star Wars: A New Hope', 32, 12, 32, 1977, 'Science Fiction', 7),
    (3, 'To Kill A Mockingbird', 3, 13, 23, 1962, 'Drama', 10),
    (4, 'Titanic', 31, 14, 31, 1997, 'Romance', 5),
    (5, 'Dr Zhivago', 5, 15, 25, 1965, 'Historical', 8),
    (6, 'El Cid', 6, 16, 26, 1961, 'Historical', 6),
    (7, 'Voyage to Cythera', 34, 17, 34, 1984, 'Drama', 8),
    (8, 'Soldier of Orange', 8, 18, 28, 1977, 'Thriller', 8),
    (9, 'Three Colours: Blue', 33, 19, 33, 1993, 'Drama', 8),
    (10, 'Cyrano de Bergerac', 10, 20, 30, 1990, 'Historical', 9);
    

-- show the title and director name for all films
SELECT Film.Title, DirectorName.Name AS DirectorName FROM Film
JOIN People AS DirectorName ON Film.DirectorID = DirectorName.PeopleID
WHERE DirectorName.Profession = 'Director';

-- show the title, director, and star name for all films
SELECT Film.Title, DirectorName.Name AS DirectorName, StarName.Name AS StarName FROM Film
JOIN People AS DirectorName ON Film.DirectorID = DirectorName.PeopleID
JOIN People AS StarName ON Film.StarID = StarName.PeopleID
WHERE DirectorName.Profession = 'Director' AND StarName.Profession = 'Actor';

-- show the title of films where the director is from the USA
SELECT Film.Title FROM Film
JOIN People AS DirectorName ON Film.DirectorID = DirectorName.PeopleID
WHERE DirectorName.Profession = 'Director' AND DirectorName.Country = 'USA';

-- show only those films where the writer and the director are the same person
SELECT Film.Title FROM Film
JOIN People AS DirectorName ON Film.DirectorID = DirectorName.PeopleID
JOIN People AS WriterName ON Film.WriterID = WriterName.PeopleID
WHERE DirectorName.Profession = 'Both';

-- show directors and film titles for films with a score of 8 or higher
SELECT DirectorName.Name AS DirectorName, Film.Title FROM Film
JOIN People AS DirectorName ON Film.DirectorID = DirectorName.PeopleID
WHERE Film.Score >= 8;

-- show films with their directors and stars for films with a score of 7 or higher
SELECT Film.Title, DirectorName.Name AS DirectorName, StarName.Name AS StarName FROM Film
JOIN People AS DirectorName ON Film.DirectorID = DirectorName.PeopleID
JOIN People AS StarName ON Film.StarID = StarName.PeopleID
WHERE Film.Score >= 7;

-- show films with their writers for films released after 1990
SELECT Film.Title, WriterName.Name AS WriterName FROM Film
JOIN People AS WriterName ON Film.WriterID = WriterName.PeopleID
WHERE Film.Year > 1990;

-- show the total number of films directed by each director
SELECT DirectorName.Name AS DirectorName, COUNT(Film.FilmID) AS FilmCount FROM People AS DirectorName
LEFT JOIN Film ON DirectorName.PeopleID = Film.DirectorID
WHERE DirectorName.Profession = 'Director' OR DirectorName.Profession = 'Both'
GROUP BY DirectorName.Name;

-- show the average score for each genre of films
SELECT Genre, AVG(Score) AS AvgScore FROM Film
GROUP BY Genre;

-- show the top 5 directors with the highest average film scores:
SELECT DirectorName.Name AS DirectorName, AVG(Film.Score) AS AvgScore FROM People AS DirectorName
LEFT JOIN Film ON DirectorName.PeopleID = Film.DirectorID
WHERE DirectorName.Profession = 'Director' OR DirectorName.Profession = 'Both'
GROUP BY DirectorName.Name
ORDER BY AvgScore DESC
LIMIT 5;



-- Extension #2

CREATE TABLE FilmCast (
    CastID INT PRIMARY KEY,
    FilmID INT,
    ActorID INT
);


INSERT INTO FilmCast (CastID, FilmID, ActorID)
VALUES
    (1, 1, 11), 
    (2, 2, 12), 
    (3, 3, 13); 


-- show the cast for a specific film
SELECT Film.Title, People.Name AS ActorName FROM Film
JOIN FilmCast ON Film.FilmID = FilmCast.FilmID
JOIN People ON FilmCast.ActorID = People.PeopleID
WHERE Film.Title = 'To Kill A Mockingbird';