--Alec Guinness, Kate Winslet and Karl Foreman added

INSERT INTO person VALUES 
  (1, 'Stanley', 'Kubrick'),
  (2, 'George', 'Lucas'),
  (3, 'Robert', 'Mulligan'),
  (4, 'James', 'Cameron'),
  (5, 'David', 'Lean'),
  (6, 'Anthony', 'Mann'),
  (7, 'Theodoros', 'Angelopoulos'),
  (8, 'Paul', 'Verhoeven'),
  (9, 'Krzysztof', 'Kieslowski'),
  (10, 'Jean-Paul', 'Rappeneau'),
  (11, 'Keir', 'Dullea'),
  (12, 'Mark', 'Hamill'),
  (13, 'Gregory', 'Peck'),
  (14, 'Leonardo', 'DiCaprio'),
  (15, 'Julie', 'Christie'),
  (16, 'Charlton', 'Heston'),
  (17, 'Manos', 'Katrakis'),
  (18, 'Rutger', 'Hauer'),
  (19, 'Juliette', 'Binoche'),
  (20, 'Gerard', 'Depardieu'),
  (21, 'Arthur C', 'Clarke'),
  (22, 'Harper', 'Lee'),
  (23, 'James', 'Cameron'),
  (24, 'Boris', 'Pasternak'),
  (25, 'Frederick', 'Franck'),
  (26, 'Erik Hazelhoff', 'Roelfzema'),
  (27, 'Edmond', 'Rostand'),
  (28, 'Alec', 'Guinnes'),
  (29, 'Kate', 'Winslet'),
  (30, 'Karl', 'Foreman');


INSERT INTO director VALUES
  (1, 1, 'USA'),
  (2, 2, 'USA'),
  (3, 3, 'USA'),
  (4, 4, 'Canada'),
  (5, 5, 'UK'),
  (6, 6, 'USA'),
  (7, 7, 'Greece'),
  (8, 8, 'Netherlands'),
  (9, 9, 'Poland'),
  (10, 10, 'France');

--yyyy-mm-dd 
INSERT INTO actor VALUES
  (1, 11),
  (2, 12),
  (3, 13),
  (4, 14),
  (5, 15),
  (6, 16),
  (7, 17),
  (8, 18),
  (9, 19),
  (10, 20),
  (11, 28),
  (12, 29);

  INSERT INTO star VALUES
  (1, 1, '1936-05-30'),
  (2, 2, '1952-09-25'),
  (3, 3, '1916-04-05'),
  (4, 4, '1974-11-11'),
  (5, 5, '1940-04-14'),
  (6, 6, '1923-10-04'),
  (7, 7, '1908-08-14'),
  (8, 8, '1944-01-23'),
  (9, 9, '1964-03-09'),
  (10, 10, '1948-12-27'),
  (11, 11, '1914-04-02'),
    (12, 12, '1975-10-05');

INSERT INTO writer VALUES
  (1, 21, 'arthur@clarke.com'),
  (2, 2, 'george@email.com'),
  (3, 22, 'harper@lee.com'),
  (4, 23, 'james@cameron.com'),
  (5, 24, 'boris@boris.com'),
  (6, 25, 'fred@frank.com'),
  (7, 7, 'theo@longname.com'),
  (8, 26, 'erik@rolf.com'),
  (9, 9, 'krystof@poland.com'),
  (10, 27, 'edmond@rostand.com'),
  (11, 30, 'karl@foreman.com');


--id, title, release year, genre, score, director, star, writer
INSERT INTO film VALUES
(1, '2001: A Space Odyssey', 1968, 'Science Fiction', 10, 1, 1, 1),
(2, 'Star Wars: A New Hope', 1977, 'Science Fiction', 7, 2, 11, 2),
(3, 'To Kill A Mockingbird', 1962, 'Drama', 10, 3, 3, 3),
(4, 'Titanic', 1997, 'Romance', 5, 4, 12, 4),
(5, 'Dr Zhivago', 1965, 'Historical', 8, 5, 5, 5),
(6, 'El Cid', 1961, 'Historical', 6, 6, 6, 6),
(7, 'Voyage to Cythera', 1984, 'Drama', 8, 7, 7, 7),
(8, 'Soldier of Orange', 1977, 'Thriller', 8, 8, 8, 8),
(9, 'Three Colours: Blue', 1993, 'Drama', 8, 9, 9, 9),
(10, 'Cyrano de Bergerac', 1990, 'Historical', 9, 10, 10, 10),
(11, 'Bridge over River Kwai', 1957, 'Historical', 8, 5, 11, 11);