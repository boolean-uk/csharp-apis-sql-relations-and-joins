INSERT INTO writers(name, email)
VALUES
('Arthur C Clarke', 'arthur@clarke.com'),
('George Lucas', 'george@email.com'),
('Harper Lee', 'harper@lee.com'),
('James Cameron', 'james@cameron.com'),
('Boris Pasternak', 'boris@boris.com'),
('Frederick Frank', 'fred@frank.com'),
('Theodoros Angelopoulos', 'theo@angelopoulos.com'),
('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com'),
('Krzysztof Kieslowsk', 'email@email.com'),
('Edmond Rostand', 'edmond@rostand.com');

INSERT INTO stars(name, birth)
VALUES
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

INSERT INTO directors (name, country) 
VALUES 
('Stanley Kubrick', 'USA'),
('George Lucas', 'USA'),
('Robert Mulligan', 'USA'),
('James Cameron', 'Canada'),
('David Lean', 'UK'),
('Anthony Mann', 'USA'),
('Theodoros Angelopoulos', 'Greece'),
('Paul Verhoeven', 'Netherlands'),
('Krzystof Kieslowski', 'Poland'),
('Jean-Paul Rappeneau', 'France');

INSERT INTO movies(writer_id, star_id, director_id, title, r_year, genre, score)
VALUES
(1, 1, 1, '2001: A Space Odyssey', 1968, 'Science Fiction', 10),
(2, 2, 2, 'Star Wars: A New Hope', 1977, 'Science Fiction', 7),
(3, 3, 3, 'To Kill A Mockingbird', 1962, 'Drama', 10),
(4, 4, 4, 'Titanic', 1997, 'Romance', 5),
(5, 5, 5, 'Dr Zhivago', 1965, 'Historical', 8),
(6, 6, 6, 'El Cid', 1961, 'Historical', 6),
(7, 7, 7, 'Voyage to Cythera', 1984, 'Drama', 8),
(8, 8, 8, 'Soldier of Orange', 1977, 'Thriller', 8),
(9, 9, 9, 'Three Colours: Blue', 1993, 'Drama', 8),
(10, 10, 10, 'Cyrano de Bergerac', 1990, 'Historical', 9);