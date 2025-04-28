CREATE TABLE Director (
  Director_ID SERIAL PRIMARY KEY, 
  Name VARCHAR(255),
  Country VARCHAR(100)
);

CREATE TABLE Writer (
	Writer_ID SERIAL PRIMARY KEY,
	Name VARCHAR(255), 
  Email VARCHAR(100)
);

CREATE TABLE Star (
	Star_ID SERIAL PRIMARY KEY,
  Name VARCHAR(255),
  DOB Date
);

CREATE TABLE Film (
	Film_ID SERIAL PRIMARY KEY,
  Title VARCHAR(255) UNIQUE,
  Year INT, 
  Genre VARCHAR(100),
  Score INT CHECK(Score BETWEEN 0 and 10), 
  Director_ID SERIAL,
  Star_ID SERIAL,
  Writer_ID SERIAL,
  FOREIGN KEY (Director_ID) REFERENCES Director(Director_ID),
  FOREIGN KEY (Star_ID) REFERENCES Star(Star_ID),
  FOREIGN KEY (Writer_ID) REFERENCES Writer(Writer_ID)
);


INSERT INTO Director (Name, Country) VALUES
('Stanley Kubrick', 'USA'), 
('George Lucas', 'USA'),
('Robert Mulligan', 'USA'),
('James Cameron', 'Canada'),
('David Lean', 'UK'),
('Anthony Mann', 'USA'),
('Theodoros Angelopoulos', 'Greece'),
('Paul Verhoeven', 'Netherlands'),
('Krzysztof Kieslowski', 'Poland'),
('Jean-Paul Rappeneau', 'France');

INSERT INTO Writer (Name, Email) VALUES 
('Arthur C Clarke' , 'arthur@clarke.com'),
('George Lucas' , 'george@email.com'),
('Harper Lee' , 'harper@lee.com'),
('James Cameron' , 'james@cameron.com'),
('Boris Pasternak' , 'boris@boris.com'),
('Frederick Frank' , 'fred@frank.com'),
('Theodoros Angelopoulos' , 'theo@angelopoulos.com'),
('Erik Hazelhoff Roelfzema' , 'erik@roelfzema.com'),
('Krzysztof Kieslowsk' , 'email@email,com'),
('Edmond Rostnad' , 'edmond@rostand.com');


INSERT INTO Star (Name, DOB) VALUES
('Keir Dullea', '1936-05-30'),
('Mark Hamil', '1951-09-25'),
('Gregory Peck', '1916-04-05' ),
('Leonardo DiCaprio', '1974-11-11'),
('Julie Christie', '1940-04-14'),
('Charlton Heston', '1923-10-04'),
('Manos Katrakis', '1908-08-14'),
('Rutger Hauer', '1944-01-23'),
('Juliette Binoche', '1964-03-09'),
('Gerard Depardieu','1948-12-27');


INSERT INTO Film (Title, Year, Genre, Score, Director_ID, Star_ID, Writer_ID) VALUES
('2001: A Space Odyssey', 1968 , 'Science Fiction', 10 ,1 ,1 ,1 ),
('Star Wars: A New Hope', 1977, 'Science Fiction', 7, 2, 2, 2 ),
('To Kill A Mockingbird', 1962, 'Drama', 10, 3, 3,3  ),
('Titanic', 1997, 'Romance', 5, 4, 4, 4),
('Dr Zhivago', 1965, 'Historical', 8, 5, 5, 5),
('El Cid', 1961 , 'Historical', 6, 6, 6,6),
('Voyage to Cythera', 1984 , 'Drama', 8 ,7 ,7 ,7 ),
('Soldier of Orange', 1977 , 'Thriller',8 , 8 ,8 ,8),
('Three Colours: Blue', 1993, 'Drama', 8, 9 , 9, 9),
('Cyrano de Bergerac', 1990 , 'Historical',9 , 10, 10, 10);