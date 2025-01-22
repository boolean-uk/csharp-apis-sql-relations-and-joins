-- EXTENSION TASK 2 --
-- 1. Add a `Cast` table that links Films to Actors (ie the Cast table contains details of
--    all of the Actors in addition to the Star who appear in the Film).

CREATE TABLE Stars (
    id SERIAL PRIMARY KEY,
    name TEXT,
    birthday TEXT
);

CREATE TABLE Films (
    id SERIAL PRIMARY KEY,
    title TEXT,
    director TEXT,
    writer TEXT,
    year INT,
    genre TEXT,
    score INT,
    UNIQUE(title),
);

CREATE TABLE Cast (
    id SERIAL PRIMARY KEY,
    film_id INT,
    actor_id INT,
        CONSTRAINT fk_film 
            FOREIGN KEY (film_id) 
                REFERENCES Films(id),
        CONSTRAINT fk_actor 
            FOREIGN KEY (actor_id) 
                REFERENCES Stars(id)
);

-- 2. You can either add some more people as actors (these can be real actors or just made
--    up names) or just reuse all of the existing people.

INSERT INTO Stars
(name, birthday)
VALUES
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

INSERT INTO Films (title, director, writer, year, genre, score) VALUES
('2001: A Space Odyssey', 'Stanley Kubrick', 'Arthur C. Clarke', 1968, 'Science Fiction', 10),
('Star Wars: A New Hope', 'George Lucas', 'George Lucas', 1977, 'Science Fiction', 7),
('To Kill A Mockingbird', 'Robert Mulligan', 'Harper Lee', 1962, 'Drama', 10),
('Titanic', 'James Cameron', 'James Cameron', 1997, 'Romance', 5),
('Dr Zhivago', 'David Lean', 'Boris Pasternak', 1965, 'Historical', 8),
('El Cid', 'Anthony Mann', 'Frederic M. Frank', 1961, 'Historical', 6),
('Voyage to Cythera', 'Theo Angelopoulos', 'Theo Angelopoulos', 1984, 'Drama', 8),
('Soldier of Orange', 'Paul Verhoeven', 'Erik Hazelhoff Roelfzema', 1977, 'Thriller', 8),
('Three Colours: Blue', 'Krzysztof Kieslowski', 'Krzysztof Kieslowski', 1993, 'Drama', 8),
('Cyrano de Bergerac', 'Jean-Paul Rappeneau', 'Jean-Claude Carrière', 1990, 'Historical', 9);


INSERT INTO Cast (film_id, actor_id) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 10);

