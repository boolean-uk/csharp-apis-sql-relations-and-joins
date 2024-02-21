INSERT INTO films
(title, director_id, star_id, writer_id, year, genre, score)
VALUES
    ('2001: A Space Odyssey', 1, 1, 1, 1968, 'Science Fiction', 10),
    ('Star Wars: A New Hope', 2, 2, 2, 1977, 'Science Fiction', 7),
    ('To Kill A Mockingbird', 3, 3, 3, 1962, 'Drama', 10),
    ('Titanic', 4, 4, 4, 1997, 'Romance', 5),
    ('Dr Zhivago', 5, 5, 5, 1965, 'Historical', 8),
    ('El Cid', 6, 6, 6, 1961, 'Historical', 6),
    ('Voyage to Cythera', 7, 7, 7, 1984, 'Drama', 8),
    ('Soldier of Orange', 8, 8, 8, 1977, 'Thriller', 8),
    ('Three Colours: Blue', 9, 9, 9, 1993, 'Drama', 8),
    ('Cyrano de Bergerac', 10, 10, 10, 1990, 'Historical', 9);

INSERT INTO people
(name)
VALUES
    ('Anthony Mann'),
    ('Arthur C Clarke'),
    ('Boris Pasternak'),
    ('Charlton Heston'),
    ('David Lean'),
    ('Edmond Rostand'),
    ('Erik Hazelhoff Roelfzema'),
    ('Frederick Frank'),
    ('George Lucas'),
    ('Gerard Depardieu'),
    ('Gregory Peck'),
    ('Harper Lee'),
    ('James Cameron'),
    ('Jean-Paul Rappeneau'),
    ('Julie Christie'),
    ('Juliette Binoche'),
    ('Keir Dullea'),
    ('Krzysztof Kieslowski'),
    ('Leonardo DiCaprio'),
    ('Manos Katrakis'),
    ('Mark Hamill'),
    ('Paul Verhoeven'),
    ('Robert Mulligan'),
    ('Rutger Hauer'),
    ('Stanley Kubrick'),
    ('Theodoros Angelopoulos');


INSERT INTO director
(people_id, director_country)
VALUES
    (25, 'USA'),
    (9, 'USA'),
    (23, 'USA'),
    (13, 'Canada'),
    (5, 'UK'),
    (1, 'USA'),
    (26, 'Greece'),
    (22, 'Netherlands'),
    (18, 'Poland'),
    (14, 'France');

INSERT INTO star
(people_id, star_date_of_birth)
VALUES
    (17, '1936-05-30'),
    (21, '1951-09-25'),
    (11, '1916-04-05'),
    (19, '1974-11-11'),
    (15, '1940-04-14'),
    (4, '1923-10-04'),
    (20, '1908-08-14'),
    (24, '1944-01-23'),
    (16, '1964-03-09'),
    (10, '1948-12-27');

INSERT INTO writer
(people_id, writer_email)
VALUES
    (2, 'arthur@clarke.com'),
    (9, 'george@email.com'),
    (12, 'harper@lee.com'),
    (13, 'james@cameron.com'),
    (3, 'boris@boris.com'),
    (8, 'fred@frank.com'),
    (26, 'theo@angelopoulos.com'),
    (7, 'erik@roelfzema.com'),
    (18, 'email@email.com'),
    (6, 'edmond@rostand.com');