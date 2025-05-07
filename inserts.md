INSERT INTO star (name, date_of_birth) VALUES 
('Keir Dullea', '1936-05-30'),
('Mark Hamill', '1951-09-25'),
('Gregory Peck', '1916-04-05'),
('Leonardo DiCaprio', '1974-11-11'),
('Charlton Heston', '1923-10-04'),
('Manos Katrakis', '1908-08-14'),
('Rutger Hauer', '1944-01-23'),
('Juliette Binoche', '1964-03-09'),
('Gerard Depardieu', '1948-12-27');

INSERT INTO director (name, country) VALUES 
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

INSERT INTO writer (name, email) VALUES 
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

INSERT INTO film (title, genre, director_id, star_id, writer_id, year, score) VALUES 
('2001: A Space Odyssey', 'Science Fiction', 1, 1, 1, 1968, 10),
('Star Wars: A New Hope', 'Science Fiction', 2, 2, 2, 1977, 7),
('To Kill A Mockingbird', 'Drama', 3, 3, 3, 1962, 10),
('Titanic', 'Romance', 4, 4, 4, 1997, 5),
('Dr Zhivago', 'Historical', 5, 5, 5, 1965, 8),
('El Cid', 'Historical', 6, 6, 6, 1961, 6),
('Voyage to Cythera', 'Drama', 7, 7, 7, 1984, 8),
('Soldier of Orange', 'Thriller', 8, 8, 8, 1977, 8),
('Three Colours: Blue', 'Drama', 9, 9, 9, 1993, 8),
('Cyrano de Bergerac', 'Historical', 10, 10, 10, 1990, 9);