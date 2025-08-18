CREATE TABLE People(
  id SERIAL PRIMARY KEY,
  name varchar(50),
  email varchar(100),
  birthdate date,
  country varchar(50)
);

  CREATE TABLE movie(
  id SERIAL PRIMARY KEY,
  title varchar(100),
  director int references people(id),
  writer int references people(id),
  star int references people(id),
  year int,
  genre varchar(50),
  score int
);

CREATE TABLE cast_members(
  actor int references people(id),
  movie int references movie(id),
  PRIMARY KEY(actor, movie),
  role varchar(50)
);


INSERT INTO People (id, name, email, birthdate, country) VALUES
(1, 'Keir Dullea', NULL, '1936-05-30', NULL),
(2, 'Mark Hamill', NULL, '1951-09-25', NULL),
(3, 'Gregory Peck', NULL, '1916-04-05', NULL),
(4, 'Leonardo DiCaprio', NULL, '1974-11-11', NULL),
(5, 'Julie Christie', NULL, '1940-04-14', NULL),
(6, 'Charlton Heston', NULL, '1923-10-04', NULL),
(7, 'Manos Katrakis', NULL, '1908-08-14', NULL),
(8, 'Rutger Hauer', NULL, '1944-01-23', NULL),
(9, 'Juliette Binoche', NULL, '1964-03-09', NULL),
(10, 'Stanley Kubrick', NULL, NULL, 'USA'),
(11, 'George Lucas', 'george@email.com', NULL, 'USA'),
(12, 'Robert Mulligan', NULL, NULL, 'USA'),
(13, 'James Cameron', 'james@cameron.com', NULL, 'Canada'),
(14, 'David Lean', NULL, NULL, 'UK'),
(15, 'Anthony Mann', NULL, NULL, 'USA'),
(16, 'Theodoros Angelopoulos', NULL, NULL, 'Greece'),
(17, 'Paul Verhoeven', NULL, NULL, 'Netherlands'),
(18, 'Krzysztof Kieslowski', NULL, NULL, 'Poland'),
(19, 'Jean-Paul Rappeneau', NULL, NULL, 'France'),
(20, 'Arthur C Clarke', 'arthur@clarke.com', NULL, NULL),
(21, 'Harper Lee', 'harper@lee.com', NULL, NULL),
(22, 'Boris Pasternak', 'boris@boris.com', NULL, NULL),
(23, 'Frederick Frank', 'fred@frank.com', NULL, NULL),
(24, 'Ava Kingsley', 'ava.kingsley@example.com', '1985-07-12', 'UK'),
(25, 'Liam Novak', 'liam.novak@example.com', '1990-03-22', 'Canada'),
(26, 'Sofia Moretti', 'sofia.moretti@example.com', '1978-11-05', 'Italy'),
(27, 'Noah Tanaka', 'noah.tanaka@example.com', '1982-06-18', 'Japan'),
(28, 'Isla Fernández', 'isla.fernandez@example.com', '1993-01-30', 'Spain'),
(29, 'Mason Dupont', 'mason.dupont@example.com', '1987-09-14', 'France'),
(30, 'Chloe Andersen', 'chloe.andersen@example.com', '1995-12-03', 'Norway'),
(31, 'Ethan Müller', 'ethan.mueller@example.com', '1980-04-27', 'Germany'),
(32, 'Zara Patel', 'zara.patel@example.com', '1988-08-09', 'India'),
(33, 'Leo Kim', 'leo.kim@example.com', '1992-05-16', 'South Korea');

INSERT INTO Movie (id, title, director, writer, star, year, genre, score) VALUES
(1, '2001: A Space Odyssey', 10, 20, 1, 1968, 'Science Fiction', 10),
(2, 'Star Wars: A New Hope', 11, 11, 2, 1977, 'Science Fiction', 7),
(3, 'To Kill A Mockingbird', 12, 21, 3, 1962, 'Drama', 10),
(4, 'Titanic', 13, 13, 4, 1997, 'Romance', 5),
(5, 'Dr Zhivago', 14, 22, 5, 1965, 'Historical', 8),
(6, 'El Cid', 15, 23, 6, 1961, 'Historical', 6),
(7, 'Voyage to Cythera', 16, NULL, 7, 1984, 'Drama', 8),
(8, 'Soldier of Orange', 17, NULL, 8, 1977, 'Thriller', 8),
(9, 'Three Colours Blue', 18, NULL, 9, 1993, 'Drama', 9),
(10, 'Cyrano de Bergerac', 19, NULL, NULL, 1990, 'Historical', 9);

INSERT INTO Cast_Members (actor, movie, role) VALUES
(1, 1, 'Star'),
(2, 2, 'Star'),
(3, 3, 'Star'),
(4, 4, 'Star'),
(5, 5, 'Star'),
(6, 6, 'Star'),
(7, 7, 'Star'),
(8, 8, 'Star'),
(9, 9, 'Star'),
(24, 10, 'Supporting Actor'),
(25, 9, 'Supporting Actor'),
(26, 8, 'Supporting Actor'),
(27, 7, 'Supporting Actor'),
(28, 6, 'Supporting Actor'),
(29, 5, 'Supporting Actor'),
(30, 4, 'Supporting Actor'),
(31, 3, 'Supporting Actor'),
(32, 2, 'Supporting Actor'),
(33, 1, 'Supporting Actor');

-----------------------------------------------------------------------------------------

