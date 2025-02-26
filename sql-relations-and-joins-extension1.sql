--DROP TABLE Film

CREATE TABLE Film (
id serial PRIMARY KEY,
Title VARCHAR (255) NOT NULL,
Year INT NOT NULL,
Genre VARCHAR (50) NOT NULL,
Score INT NOT NULL,
DirectorFK INT NOT NULL,
StarFK INT NOT NULL,
WriterFK INT NOT NULL,
FOREIGN KEY (DirectorFK) REFERENCES Director(id),
FOREIGN KEY (StarFK) REFERENCES Star(id),
FOREIGN KEY (WriterFK) REFERENCES Writer(id)
);

CREATE TABLE Director (
id serial PRIMARY KEY,
Director VARCHAR (255) NOT NULL,
Director_Country VARCHAR (255) NOT NULL
);

CREATE TABLE Star (
id serial PRIMARY KEY,
Star VARCHAR (255) NOT NULL,
Star_DOB DATE  NOT NULL
);

CREATE TABLE Writer (
id serial PRIMARY KEY,
Writer VARCHAR (255) NOT NULL,
Writer_Email VARCHAR (255) NOT NULL
);

INSERT INTO Director (Director, Director_Country)
VALUES
('Stanley Kubrick', 'USA '),
('George Lucas', 'USA '),
('Robert Mulligan', 'USA '),
('James Cameron', 'Canada'),
('David Lean', 'UK'),
('Anthony Mann', 'USA '),
('Theodoros Angelopoulos', 'Greece'),
('Paul Verhoeven', 'Netherlands'),
('Krzysztof Kieślowski', 'Poland'),
('Jean-Paul Rappeneau', 'France');

INSERT INTO Star (Star, Star_DOB)
VALUES
('Keir Dullea ', '1936-05-30'),
('Mark Hamill', '1951-09-25'),
('Gregory Peck', '1916-04-05'),
('Leonardo DiCaprio', '1974-11-11'),
('Julie Christie', '1940-04-14'),
('Charlton Heston', '1923-10-04'),
('Manos Katrakis', '1908-08-14'),
('Rutger Hauer', '1944-01-23'),
('Juliette Binoche', '1964-03-09'),
('Gerard Depardieu', '1948-12-27');


INSERT INTO Writer (Writer, Writer_Email)
VALUES
('Arthur C Clarke ', 'arthur@clarke.com'),
('George Lucas', 'george@email.com'),
('Harper Lee', 'harper@lee.com'),
('James Cameron', 'james@cameron.com'),
('Boris Pasternak', 'boris@boris.com'),
('Frederick Frank', 'fred@frank.com'),
('Theodoros Angelopoulos', 'theo@angelopoulos.com'),
('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com'),
('Krzysztof Kieślowski', 'email@email.com'),
('Edmond Rostand', 'edmond@rostand.com');

INSERT INTO Film (Title, Year, Genre, Score, DirectorFK, StarFK, WriterFK)
VALUES
('2001: A Space Odyssey', 1968, 'Science Fiction', 10, 1, 1, 1),
('Star Wars: A New Hope', 1977, 'Science Fiction', 7, 2, 2, 2),
('To Kill A Mockingbird', 1962, 'Drama', 10, 3, 3, 3),
('Titanic ', 1997, 'Romance', 5, 4, 4, 4),
('Dr Zhivago', 1965, 'Historical', 8, 5, 5, 5),
('El Cid', 1961, 'Historical', 6, 6, 6, 6),
('Voyage to Cythera', 1984, 'Drama', 8, 7, 7, 7),
('Soldier of Orange', 1977, 'Thriller', 8, 8, 8, 8),
('Three Colours: Blue', 1993, 'Drama', 8, 9, 9, 9),
('Cyrano de Bergerac', 1990, 'Historical', 9, 10, 10, 10);


CREATE TABLE People (
id serial PRIMARY KEY,
RoleFK INT NOT NULL,
Name VARCHAR (255) NOT NULL,
DOB DATE,
Country VARCHAR (255),
Email VARCHAR (255),
FOREIGN KEY (RoleFK) REFERENCES Roles(id)
);

CREATE TABLE Roles (
id serial PRIMARY KEY,
Role VARCHAR (255) NOT NULL
);

INSERT INTO Roles (Role)
VALUES
('Director'),
('Star'),
('Writer');

INSERT INTO People (RoleFK, Name, DOB, Country, Email)
SELECT 1, Director, NULL, Director_Country, NULL  FROM director
UNION SELECT 2, Star, Star_DOB, NULL, NULL FROM star
UNION SELECT 3, Writer, NULL, NULL, Writer_Email FROM writer


