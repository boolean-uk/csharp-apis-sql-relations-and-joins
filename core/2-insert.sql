INSERT INTO director VALUES
(1, 'Stanley', 'Kubrick', 'USA'),
(2, 'George', 'Lucas', 'USA'),
(3, 'Robert', 'Mulligan', 'USA'),
(4, 'James', 'Cameron', 'Canada'),
(5, 'David', 'Lean', 'UK'),
(6, 'Anthony', 'Mann', 'USA'),
(7, 'Theodoros', 'Angelopoulos', 'Greece'),
(8, 'Paul', 'Verhoeven', 'Netherlands'),
(9, 'Krzysztof', 'Kieslowski', 'Poland'),
(10, 'Jean-Paul', 'Rappeneau', 'France');

--yyyy-mm-dd 
INSERT INTO star VALUES
(1, 'Keir', 'Dullea', '1936-05-30'),
(2, 'Mark', 'Hamill', '1952-09-25'),
(3, 'Gregory', 'Peck', '1916-04-05'),
(4, 'Leonardo', 'DiCaprio', '1974-11-11'),
(5, 'Julie', 'Christie', '1940-04-14'),
(6, 'Charlton', 'Heston', '1923-10-04'),
(7, 'Manos', 'Katrakis', '1908-08-14'),
(8, 'Rutger', 'Hauer', '1944-01-23'),
(9, 'Juliette', 'Binoche', '1964-03-09'),
(10, 'Gerard', 'Depardieu', '1948-12-27');

INSERT INTO writer VALUES
(1, 'Arthur C', 'Clarke', 'arthur@clarke.com'),
(2, 'George', 'Lucas', 'george@email.com'),
(3, 'Harper', 'Lee', 'harper@lee.com'),
(4, 'James', 'Cameron', 'james@cameron.com'),
(5, 'Boris', 'Pasternak', 'boris@boris.com'),
(6, 'Frederick', 'Franck', 'fred@frank.com'),
(7, 'Theodoros', 'Angelopoulos', 'theo@longname.com'),
(8, 'Erik Hazelhoff', 'Roelfzema', 'erik@rolf.com'),
(9, 'Krzysztof', 'Kieslowsk', 'krystof@poland.com'),
(10, 'Edmond', 'Rostand', 'edmond@rostand.com');


--id, title, release year, genre, score, director, star, writer
INSERT INTO film VALUES
(1, '2001: A Space Odyssey', 1968, 'Science Fiction', 10, 1, 1, 1),
(2, 'Star Wars: A New Hope', 1977, 'Science Fiction', 7, 2, 2, 2),
(3, 'To Kill A Mockingbird', 1962, 'Drama', 10, 3, 3, 3),
(4, 'Titanic', 1997, 'Romance', 5, 4, 4, 4),
(5, 'Dr Zhivago', 1965, 'Historical', 8, 5, 5, 5),
(6, 'El Cid', 1961, 'Historical', 6, 6, 6, 6),
(7, 'Voyage to Cythera', 1984, 'Drama', 8, 7, 7, 7),
(8, 'Soldier of Orange', 1977, 'Thriller', 8, 8, 8, 8),
(9, 'Three Colours: Blue', 1993, 'Drama', 8, 9, 9, 9),
(10, 'Cyrano de Bergerac', 1990, 'Historical', 9, 10, 10, 10);