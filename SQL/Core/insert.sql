INSERT INTO Directors (name, country) VALUES
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

INSERT INTO Stars(name, DOB) VALUES
('Keir Dullea', '30/05/1936'),
('Mark Hamill', '25/09/1951'),
('Gregory Peck', '05/04/1916'),
('Leonardo DiCaprio', '11/11/1974'),
('Julie Christie', '14/04/1940'),
('Charlton Heston', '04/10/1923'),
('Manos Katrakis', '14/08/1908'),
('Rutger Hauer', '23/01/1944'),
('Juliette Binoche', '09/03/1964'),
('Gerard Depardieu', '27/12/1948');

INSERT INTO Writers(name, email) VALUES
('Arthur C Clarke', 'arthur@clarke.com'),
('George Lucas', 'george@email.com'),
('Harper Lee', 'harper@lee.com'),
('James Cameron', 'james@cameron.com'),
('Boris Pasternak', 'boris@pasternak.com'),
('Frederick Frank', 'fred@frank.com'),
('Theodoros Angelopoulos', 'theo@angelopoulos.com'),
('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com'),
('Krzysztof Kieslowski', 'Krzysztof@Kieslowski.com'),
('Edmond Rostand', 'edmond@rostand.com');

INSERT INTO films (title, genre, year, score, director_id, star_id, writer_id) VALUES
('2001: A Space Odyssey', 'Science Fiction', 1968, 10, 1, 1, 1),
('Star Wars: A New Hope', 'Science Fiction', 1977, 7, 2, 2, 2),
('To Kill A Mockingbird', 'Drama', 1962, 10, 3, 3, 3),
('Titanic', 'Romance', 1997, 5, 4, 4, 4),
('Dr Zhivago', 'Historical', 1965, 8, 5, 5, 5),
('El Cid', 'Historical', 1961, 6, 6, 6, 6),
('Voyage to Cythera', 'Drama', 1984, 8, 7, 7, 7),
('Soldier of Orange', 'Thriller', 1977, 8, 8, 8, 8),
('Three Colours: Blue', 'Drama', 1993, 8, 9, 9, 9),
('Cyrano de Bergerac', 'Historical', 1990, 9, 10, 10, 10);