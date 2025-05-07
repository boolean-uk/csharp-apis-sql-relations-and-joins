INSERT INTO Film
(createdAt, updatedAt, title, genre, releaseYear, score)
VALUES 
(NOW(), NOW(), '2001: A Space Odyssey', 'Science Fiction', 1968, 10),
(NOW(), NOW(), 'Star Wars: A New Hope', 'Science Fiction', 1977, 7),
(NOW(), NOW(), 'To Kill A Mockingbird', 'Drama', 1962, 10),
(NOW(), NOW(), 'Titanic', 'Romance', 1997, 5),
(NOW(), NOW(), 'Dr. Zhivago', 'Historical', 1965, 8),
(NOW(), NOW(), 'El Cid', 'Historical', 1961, 6),
(NOW(), NOW(), 'Voyage to Cythera', 'Drama', 1984, 8),
(NOW(), NOW(), 'Soldier of Orange', 'Thriller', 1977, 8),
(NOW(), NOW(), 'Three Colours: Blue', 'Drama', 1993, 8),
(NOW(), NOW(), 'Cyrano de Bergerac', 'Historical', 1990, 9);

INSERT INTO Director
(createdAt, updatedAt, name, directorCountry)
VALUES
(NOW(), NOW(), 'Stanley Kubrick', 'USA'),
(NOW(), NOW(), 'George Lucas', 'USA'),
(NOW(), NOW(), 'Robert Mulligan', 'USA'),
(NOW(), NOW(), 'James Cameron', 'Canada'),
(NOW(), NOW(), 'David Lean', 'UK'),
(NOW(), NOW(), 'Anthony Mann', 'USA'),
(NOW(), NOW(), 'Theodoros Angelopoulos', 'Greece'),
(NOW(), NOW(), 'Paul Verhoeven', 'Netherlands'),
(NOW(), NOW(), 'Krzysztof Kieslowski', 'Poland'),
(NOW(), NOW(), 'Jean-Paul Rappeneau', 'France');

INSERT INTO Star
(createdAt, updatedAt, name, dob)
VALUES
(NOW(), NOW(), 'Keir Dullea', '30/05/1936'),
(NOW(), NOW(), 'Mark Hamill', '25/09/1951'),
(NOW(), NOW(), 'Gregory Peck', '05/04/1916'),
(NOW(), NOW(), 'Leonardo DiCaprio', '11/11/1974'),
(NOW(), NOW(), 'Julie Christie', '14/04/1940'),
(NOW(), NOW(), 'Charlton Heston', '04/10/1923'),
(NOW(), NOW(), 'Manos Katrakis', '14/08/1908'),
(NOW(), NOW(), 'Rutger Hauer', '23/01/1944'),
(NOW(), NOW(), 'Juliette Binoche', '09/03/1964'),
(NOW(), NOW(), 'Gerard Depardieu', '27/12/1948');

INSERT INTO Writer
(createdAt, updatedAt, name, email)
VALUES
(NOW(), NOW(), 'Arthur C Clarke', 'arthur@clarke.com'),
(NOW(), NOW(), 'George Lucas', 'george@email.com'),
(NOW(), NOW(), 'Harper Lee', 'harper@lee.com'),
(NOW(), NOW(), 'James Cameron', 'james@cameron.com'),
(NOW(), NOW(), 'Boris Pasternak', 'boris@boris.com'),
(NOW(), NOW(), 'Frederick Frank', 'fred@frank.com'),
(NOW(), NOW(), 'Theodoros Angelopoulos', 'theo@angelopoulos.com'),
(NOW(), NOW(), 'Erik Hazelhoff Roelfzema', 'erik@roelfzema.com'),
(NOW(), NOW(), 'Krzysztof Kieslowski', 'email@email.com'),
(NOW(), NOW(), 'Edmond Rostand', 'edmond@rostand.com');

INSERT INTO FilmDirector
(createdAt, updatedAt, directorFk, filmFk)
VALUES
(NOW (), NOW (), 1, 1),
(NOW (), NOW (), 2, 2),
(NOW (), NOW (), 3, 3),
(NOW (), NOW (), 4, 4),
(NOW (), NOW (), 5, 5),
(NOW (), NOW (), 6, 6),
(NOW (), NOW (), 7, 7),
(NOW (), NOW (), 8, 8),
(NOW (), NOW (), 9, 9),
(NOW (), NOW (), 10, 10);

INSERT INTO FilmStar
(createdAt, updatedAt, starFk, filmFk)
VALUES
(NOW (), NOW (), 1, 1),
(NOW (), NOW (), 2, 2),
(NOW (), NOW (), 3, 3),
(NOW (), NOW (), 4, 4),
(NOW (), NOW (), 5, 5),
(NOW (), NOW (), 6, 6),
(NOW (), NOW (), 7, 7),
(NOW (), NOW (), 8, 8),
(NOW (), NOW (), 9, 9),
(NOW (), NOW (), 10, 10);

INSERT INTO FilmWriter
(createdAt, updatedAt, writerFk, filmFk)
VALUES
(NOW (), NOW (), 1, 1),
(NOW (), NOW (), 2, 2),
(NOW (), NOW (), 3, 3),
(NOW (), NOW (), 4, 4),
(NOW (), NOW (), 5, 5),
(NOW (), NOW (), 6, 6),
(NOW (), NOW (), 7, 7),
(NOW (), NOW (), 8, 8),
(NOW (), NOW (), 9, 9),
(NOW (), NOW (), 10, 10);

