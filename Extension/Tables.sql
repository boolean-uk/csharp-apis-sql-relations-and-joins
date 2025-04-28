

CREATE TABLE People (
  Person_ID SERIAL PRIMARY KEY,
  Name VARCHAR(255) NOT NULL,
  DOB DATE,
  Email VARCHAR(100),
  Country VARCHAR(100)
);

CREATE TABLE Film (
  Film_ID SERIAL PRIMARY KEY,
  Title VARCHAR(255) UNIQUE,
  Year INT,
  Genre VARCHAR(100),
  Score INT CHECK (Score BETWEEN 0 AND 10),
  Director_ID INT,
  Star_ID INT,
  Writer_ID INT,
  FOREIGN KEY (Director_ID) REFERENCES People(Person_ID),
  FOREIGN KEY (Star_ID) REFERENCES People(Person_ID),
  FOREIGN KEY (Writer_ID) REFERENCES People(Person_ID)
);


INSERT INTO People (Name, DOB, Email, Country) VALUES
('Stanley Kubrick', NULL, NULL, 'USA'),
('George Lucas', NULL, 'george@email.com', 'USA'),
('Robert Mulligan', NULL, NULL, 'USA'),
('James Cameron', NULL, 'james@cameron.com', 'Canada'),
('David Lean', NULL, NULL, 'UK'),
('Anthony Mann', NULL, NULL, 'USA'),
('Theodoros Angelopoulos', NULL, 'theo@angelopoulos.com', 'Greece'),
('Paul Verhoeven', NULL, NULL, 'Netherlands'),
('Krzysztof Kieslowski', NULL, 'email@email.com', 'Poland'),
('Jean-Paul Rappeneau', NULL, NULL, 'France'),
('Arthur C Clarke', NULL, 'arthur@clarke.com', NULL),
('Harper Lee', NULL, 'harper@lee.com', NULL),
('Boris Pasternak', NULL, 'boris@boris.com', NULL),
('Frederick Frank', NULL,'fred@frank.com', NULL),
('Erik Hazelhoff Roelfzema', NULL, 'erik@roelfzema.com', NULL),
('Edmond Rostand', NULL, 'edmond@rostand.com', NULL ),
('Keir Dullea', '1936-05-30', NULL, NULL),
('Mark Hamill', '1951-09-25', NULL, NULL),
('Gregory Peck', '1916-04-05', NULL, NULL),
('Leonardo DiCaprio', '1974-11-11', NULL, NULL),
('Julie Christie', '1940-04-14', NULL, NULL),
('Charlton Heston', '1923-10-04', NULL, NULL),
('Manos Katrakis', '1908-08-14', NULL, NULL),
('Rutger Hauer', '1944-01-23', NULL, NULL),
('Juliette Binoche', '1964-03-09', NULL, NULL),
('Gerard Depardieu', '1948-12-27', NULL, NULl);



INSERT INTO Film (Title, Year, Genre, Score, Director_ID, Star_ID, Writer_ID) VALUES
('2001: A Space Odyssey', 1968, 'Science Fiction', 10, 1, 17, 11),
('Star Wars: A New Hope', 1977, 'Science Fiction', 7, 2, 18, 2),
('To Kill A Mockingbird', 1962, 'Drama', 10, 3, 19, 12),
('Titanic', 1997, 'Romance', 5, 4, 20, 4),
('Dr Zhivago', 1965, 'Historical', 8, 5, 21, 13),
('El Cid', 1961, 'Historical', 6, 6, 22, 14),
('Voyage to Cythera', 1984, 'Drama', 8, 7, 23, 7),
('Soldier of Orange', 1977, 'Thriller', 8, 8, 24, 15),
('Three Colours: Blue', 1993, 'Drama', 8, 9, 25, 9),
('Cyrano de Bergerac', 1990, 'Historical', 9, 10, 26, 16);


DROP TABLE IF EXISTS Writer;
DROP TABLE IF EXISTS Star;
DROP TABLE IF EXISTS Director;