CREATE TABLE Director(
DirectorId INT PRIMARY KEY,
FOREIGN KEY (Person_ID) REFERENCES people(PersonId),
DirectorName VARCHAR(255),
DirectorCountry VARCHAR(50)
);

CREATE TABLE Star(
StarId INT PRIMARY KEY,
FOREIGN KEY (Person_ID) REFERENCES people(PersonId),
StarName VARCHAR(255),
StarDOB DATE NOT NULL);

CREATE TABLE Writer(
WriterId INT PRIMARY KEY,
FOREIGN KEY (WriterId) REFERENCES people(PersonId),
WriterName VARCHAR(255),
WriterEmail VARCHAR(50));

CREATE TABLE People(
  PersonId SERIAL PRIMARY key,
  PeopleName VARCHAR(255));

INSERT INTO people (PersonId, peopleName) VALUES
(1,'Stanley Kubrick'), 
(2,'George Lucas'), 
(3,'Robert Mulligan'), 
(4,'James Cameron'), 
(5,'David Lean'), 
(6,'Anthony Mann'),
(7, 'Theodoros Angelopoulos'),
(8, 'Paul Verhoeven'),
(9, 'Krzysztof Kieslowski'),
(10,'Jean-Paul Rappeneau'),
(11, 'Keir Dullea'),
(12, 'Mark Hamill'),
(13, 'Gregory Peck'),
(14, 'Leonardo DiCaprio'),
(15, 'Julie Christie'),
(16, 'Charlton Heston'),
(17, 'Manos Katrakis'),
(18, 'Rutger Hauer'),
(19, 'Juliette Binoche'),
(20, 'Gerard Depardieu'),
(21, 'Arthur C Clarke'),
(22, 'Harper Lee'),
(23, 'Boris Pasternak'),
(24, 'Frederick Frank'),
(25, 'Erik Hazelhoff Roelfzema'),
(26, 'Edmond Rostand');


INSERT INTO Director (DirectorId,DirectorName, DirectorCountry) VALUES
(1,'Stanley Kubrick', 'USA'),
(2,'George Lucas', 'USA'),
(3, 'Robert Mulligan', 'USA'),
(4, 'James Cameron', 'Canada'),
(5, 'David Lean', 'UK'),
(6, 'Anthony Mann', 'USA'),
(7, 'Theodoros Angelopoulos', 'Greece'),
(8, 'Paul Verhoeven', 'Netherlands'),
(9, 'Krzysztof Kieslowski', 'Poland'),
(10, 'Jean-Paul Rappeneau', 'France');

INSERT INTO Star (StarId, StarName, StarDOB) VALUES
(11,'Keir Dullea', '1936-05-30'),
(12,'Mark Hamill', '1951-09-25'),
(13,'Gregory Peck', '1916-04-05'),
(14,'Leonardo DiCaprio', '1974-11-11'),
(15,'Julie Christie', '1940-04-14'),
(16,'Charlton Heston', '1923-10-04'),
(17,'Manos Katrakis', '1908-08-14'),
(18,'Rutger Hauer', '1944-01-23'),
(19,'Juliette Binoche', '1964-03-09'),
(20, 'Gerard Depardieu', '1948-12-27');

INSERT INTO Writer (WriterId,WriterName, WriterEmail) VALUES
(21,'Arthur C Clarke', 'arthur@clarke.com'),
(2,'George Lucas', 'george@email.com'),
(22,'Harper Lee', 'harper@lee.com'),
(4, 'James Cameron', 'james@cameron.com'),
(23,'Boris Pasternak', 'boris@boris.com'),
(24,'Frederick Frank', 'fred@frank.com'),
(7,'Theodoros Angelopoulos', 'theo@angelopoulos.com'),
(25,'Erik Hazelhoff Roelfzema', 'erik@roelfzema.com'),
(9,'Krzysztof Kieslowski', 'email@email.com'),
(26,'Edmond Rostand', 'edmond@rostand.com');

CREATE TABLE Film (
    FilmId SERIAL PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    DirectorId INT REFERENCES People(PersonId),
    StarId INT REFERENCES People(PersonId),
    WriterId INT REFERENCES People(PersonId),
    Year INT NOT NULL,
    Genre VARCHAR(50) NOT NULL,
    Score INT CHECK (Score BETWEEN 1 AND 10)
);

INSERT INTO Film (Title, DirectorId, StarId, WriterId, Year, Genre, Score) VALUES
('2001: A Space Odyssey', 1, 11, 21, 1968, 'Science Fiction', 10),  
('Star Wars: A New Hope', 2, 12, 2, 1977, 'Science Fiction', 7),  
('To Kill A Mockingbird', 3, 13, 22, 1962, 'Drama', 10),         
('Titanic', 4, 14, 4, 1997, 'Romance', 5),                        
('Dr Zhivago', 5, 15, 23, 1965, 'Historical', 8),                 
('El Cid', 6, 16, 24, 1961, 'Historical', 6),                      
('Voyage to Cythera', 7, 17, 7, 1984, 'Drama', 8),                
('Soldier of Orange', 8, 18, 25, 1977, 'Thriller', 8),
('Three Colours: Blue',9, 19, 9, 1993, 'Drama', 8),
('Cyrano de Bergerac', 10, 20, 26, 1990, 'Historical', 9);     


