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

INSERT INTO Star (Name, DOB) VALUES
('Keir Dullea', '1936-05-30'),
('Mark Hamill', '1951-09-25'),
('Gregory Peck', '1916-04-05'),
('Leonardo DiCaprio', '1974-11-11'),
('Julie Christie', '1940-04-14'),
('Charlton Heston', '1923-10-04'),
('Manos Katrakis', '1908-08-14'),
('Rutger Hauer', '1944-01-23'),
('Juliette Binoche', '1964-03-09'),
('Gerard Depardieu', '1948-12-27');

INSERT INTO Writer (Name, Email) VALUES
('Arthur C Clarke', 'arthur@clarke.com'),
('George Lucas', 'george@email.com'),
('Harper Lee', 'harper@lee.com'),
('James Cameron', 'james@cameron.com'),
('Boris Pasternak', 'boris@boris.com'),
('Frederick Frank', 'fred@frank.com'),
('Theodoros Angelopoulos', 'theo@angelopoulos.com'),
('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com'),
('Krzysztof Kieslowski', 'email@email.com'),
('Edmond Rostand', 'edmond@rostand.com');

INSERT INTO Film (Title, Director, Star, Writer, Year, Genre, Score) VALUES
('2001: A Space Odyssey', 'Stanley Kubrick', 'Keir Dullea', 'Arthur C Clarke', 1968, 'Science Fiction', 10),
('Star Wars: A New Hope', 'George Lucas', 'Mark Hamill', 'George Lucas', 1977, 'Science Fiction', 7),
('To Kill A Mockingbird', 'Robert Mulligan', 'Gregory Peck', 'Harper Lee', 1962, 'Drama', 10),
('Titanic', 'James Cameron', 'Leonardo DiCaprio', 'James Cameron', 1997, 'Romance', 5),
('Dr Zhivago', 'David Lean', 'Julie Christie', 'Boris Pasternak', 1965, 'Historical', 8),
('El Cid', 'Anthony Mann', 'Charlton Heston', 'Frederick Frank', 1961, 'Historical', 6),
('Voyage to Cythera', 'Theodoros Angelopoulos', 'Manos Katrakis', 'Theodoros Angelopoulos', 1984, 'Drama', 8),
('Soldier of Orange', 'Paul Verhoeven', 'Rutger Hauer', 'Erik Hazelhoff Roelfzema', 1977, 'Thriller', 8),
('Three Colours: Blue', 'Krzysztof Kieslowski', 'Juliette Binoche', 'Krzysztof Kieslowski', 1993, 'Drama', 8),
('Cyrano de Bergerac', 'Jean-Paul Rappeneau', 'Gerard Depardieu', 'Edmond Rostand', 1990, 'Historical', 9);
