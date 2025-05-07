INSERT INTO directors (director_name, country)
VALUES
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

INSERT INTO stars (star_name, date_of_birth)
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

INSERT INTO writers (writer_name, email)
VALUES
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

INSERT INTO films (director_id, star_id, writer_id, title, genre, release_year, score)
VALUES
  (1, 1, 1, '2001: A Space Odyssey', 'Science Fiction', 1968, 10),
  (2, 2, 2, 'Star Wars: A New Hope', 'Science Fiction', 1977, 7),
  (3, 3, 3, 'To Kill A Mockingbird', 'Drama', 1962, 10),
  (4, 4, 4, 'Titanic', 'Romance', 1997, 5),
  (5, 5, 5, 'Dr Zhivago', 'Historical', 1965, 8),
  (6, 6, 6, 'El Cid', 'Historical', 1961, 6),
  (7, 7, 7, 'Voyage to Cythera', 'Drama', 1984, 8),
  (8, 8, 8, 'Soldier of Orange', 'Thriller', 1977, 8),
  (9, 9, 9, 'Three Colours: Blue', 'Drama', 1993, 8),
  (10, 10, 10, 'Cyrano de Bergerac', 'Historical', 1990, 9);