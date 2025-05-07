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

INSERT INTO Person (createdAt, updatedAt, name)
VALUES
(NOW(), NOW(), 'Stanley Kubrick'),
(NOW(), NOW(), 'George Lucas'),
(NOW(), NOW(), 'Robert Mulligan'),
(NOW(), NOW(), 'James Cameron'),
(NOW(), NOW(), 'David Lean'),
(NOW(), NOW(), 'Anthony Mann'),
(NOW(), NOW(), 'Theodoros Angelopoulos'),
(NOW(), NOW(), 'Paul Verhoeven'),
(NOW(), NOW(), 'Krzysztof Kieslowski'),
(NOW(), NOW(), 'Jean-Paul Rappeneau'),
(NOW(), NOW(), 'Keir Dullea'),
(NOW(), NOW(), 'Mark Hamill'),
(NOW(), NOW(), 'Gregory Peck'),
(NOW(), NOW(), 'Leonardo DiCaprio'),
(NOW(), NOW(), 'Julie Christie'),
(NOW(), NOW(), 'Charlton Heston'),
(NOW(), NOW(), 'Manos Katrakis'),
(NOW(), NOW(), 'Rutger Hauer'),
(NOW(), NOW(), 'Juliette Binoche'),
(NOW(), NOW(), 'Gerard Depardieu'),
(NOW(), NOW(), 'Arthur C Clarke'),
(NOW(), NOW(), 'Harper Lee'),
(NOW(), NOW(), 'Boris Pasternak'),
(NOW(), NOW(), 'Frederick Frank'),
(NOW(), NOW(), 'Erik Hazelhoff Roelfzema'),
(NOW(), NOW(), 'Edmond Rostand');


INSERT INTO Director
(createdAt, updatedAt, personFk, directorCountry)
VALUES
(NOW(), NOW(), 1, 'USA'),
(NOW(), NOW(), 2, 'USA'),
(NOW(), NOW(), 3, 'USA'),
(NOW(), NOW(), 4, 'Canada'),
(NOW(), NOW(), 5, 'UK'),
(NOW(), NOW(), 6, 'USA'),
(NOW(), NOW(), 7, 'Greece'),
(NOW(), NOW(), 8, 'Netherlands'),
(NOW(), NOW(), 9, 'Poland'),
(NOW(), NOW(), 10, 'France');

INSERT INTO Actor
(createdAt, updatedAt, personFk, dob)
VALUES
(NOW(), NOW(), 11, '30/05/1936'),
(NOW(), NOW(), 12, '25/09/1951'),
(NOW(), NOW(), 13, '05/04/1916'),
(NOW(), NOW(), 14, '11/11/1974'),
(NOW(), NOW(), 15, '14/04/1940'),
(NOW(), NOW(), 16, '04/10/1923'),
(NOW(), NOW(), 17, '14/08/1908'),
(NOW(), NOW(), 18, '23/01/1944'),
(NOW(), NOW(), 19, '09/03/1964'),
(NOW(), NOW(), 20, '27/12/1948');

INSERT INTO Writer
(createdAt, updatedAt, personFk, email)
VALUES
(NOW(), NOW(), 21, 'arthur@clarke.com'),
(NOW(), NOW(), 2, 'george@email.com'),
(NOW(), NOW(), 22, 'harper@lee.com'),
(NOW(), NOW(), 3, 'james@cameron.com'),
(NOW(), NOW(), 23, 'boris@boris.com'),
(NOW(), NOW(), 24, 'fred@frank.com'),
(NOW(), NOW(), 7, 'theo@angelopoulos.com'),
(NOW(), NOW(), 25, 'erik@roelfzema.com'),
(NOW(), NOW(), 9, 'email@email.com'),
(NOW(), NOW(), 26, 'edmond@rostand.com');


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

INSERT INTO FilmCast
(createdAt, updatedAt, actorFk, filmFk, isStar)
VALUES
(NOW (), NOW (), 1, 1, TRUE),
(NOW (), NOW (), 2, 2, FALSE),
(NOW (), NOW (), 3, 3, TRUE),
(NOW (), NOW (), 4, 4, TRUE),
(NOW (), NOW (), 5, 5, FALSE),
(NOW (), NOW (), 6, 6, TRUE),
(NOW (), NOW (), 7, 7, FALSE),
(NOW (), NOW (), 8, 8, FALSE),
(NOW (), NOW (), 9, 9, TRUE),
(NOW (), NOW (), 10, 10, FALSE);

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

