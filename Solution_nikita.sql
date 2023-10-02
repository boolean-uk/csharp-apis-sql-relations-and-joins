-- CREATE TABLE movies (
--     id serial PRIMARY KEY,
--     title VARCHAR(150),
--     release_year INTEGER,
--     genre VARCHAR (150),
--     score INTEGER,
--     directorFK INTEGER,
--     starFK INTEGER,
--     writerFK INTEGER
-- );

-- CREATE TABLE directors (
--     id serial PRIMARY key,
--     name VARCHAR(150),
--     country VARCHAR(150)
-- );

-- CREATE TABLE stars (
--     id serial PRIMARY key,
--     name VARCHAR(150),
--     dob DATE
-- );

-- CREATE TABLE writers (
--     id serial PRIMARY key,
--     name VARCHAR(150),
--     email VARCHAR(150)
-- );
 
-- INSERT into
--     writers (name, email)
-- VALUES
--     ('Arthur C Clarke', 'arthur@clarke.com'),
--     ('George Lucas', 'george@email.com'),
--     ('Harper Lee', 'harper@lee.com'),
--     ('James Cameron', 'james@cameron.com'),
--     ('Boris Pasternak', 'boris@boris.com'),
--     ('Frederick Frank', 'fred@frank.com'),
--     (
--         'Theodoros Angelopoulos',
--         'theo@angelopoulos.com'
--     ),
--     ('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com'),
--     ('Krzysztof Kieślowski', 'email@email.com'),
--     ('Edmond Rostand', 'edmond@rostand.com');

-- INSERT INTO
--     stars (name, dob)
-- VALUES
--     ('Keir Dullea', '1936-05-30'),
--     ('Mark Hamill', '1951-09-25'),
--     ('Gregory Peck', '1916-04-05'),
--     ('Leonardo DiCaprio', '1974-11-11'),
--     ('Julie Christie', '1940-04-14'),
--     ('Charlton Heston', '1923-10-01'),
--     ('Manos Katrakis', '1908-08-14'),
--     ('Rutger Hauer', '1944-01-23'),
--     ('Juliette Binoche', '1964-03-09'),
--     ('Gerard Depardieu', '1948-12-27');

-- SELECT name, TO_CHAR(dob, 'DD-MM-YYYY') AS formatted_dob
-- FROM stars;

-- INSERT into
--     directors (name, country)
-- VALUES
--     ('Stanley Kubrick', 'USA'),
--     ('George Lucas', 'USA'),
--     ('Robert Mulligan', 'USA'),
--     ('James Cameron', 'Canada'),
--     ('David Lean', 'UK'),
--     ('Anthony Mann', 'USA'),
--     ('Theodoros Angelopoulos', 'Greece'),
--     ('Paul Verhoeven', 'Netherlands'),
--     ('Krzysztof Kieślowski', ' Poland'),
--     ('Jean-Paul Rappeneau', 'France');

-- INSERT INTO
--     movies (
--         title,
--         release_year,
--         genre,
--         score,
--         directorfk,
--         starfk,
--         writerfk
--     )
-- VALUES
--     (
--         '2001: A Space Odyssey',
--         1968,
--         'Science Fiction',
--         10,
--         1,
--         1,
--         1
--     ),
--     (
--         'Star Wars: A New Hope',
--         1977,
--         'Science Fiction',
--         7,
--         2,
--         2,
--         2
--     ),
--     (
--         'To Kill A Mockingbird',
--         1962,
--         'Drama',
--         10,
--         3,
--         3,
--         3
--     ),
--     ('Titanic', 1997, 'Romance', 5, 4, 4, 4),
--     ('Dr Zhivago', 1965, 'Historical', 8, 5, 5, 5),
--     ('El Cid', 1961, 'Historical', 6, 6, 6, 6),
--     ('Voyage to Cythera', 1684, 'Drama', 8, 7, 7, 7),
--     ('Soldier of Orange', 1977, 'Thriller', 8, 8, 8, 8),
--     ('Three Colours: Blue', 1993, 'Drama', 8, 9, 9, 9),
--     (
--         'Cyrano de Bergerac',
--         1990,
--         'Historical',
--         9,
--         10,
--         10,
--         10
--     );

-- Show the title and director name for all films
-- SELECT
--     movies.title,
--     directors.name
-- FROM
--     movies
--     JOIN directors ON movies.directorfk = directors.id

--Show the title, director and star name for all films
-- SELECT
--     m.title,
--     d.name,
--     s.name
-- FROM
--     movies m
--     LEFT JOIN directors d ON m.directorfk = d.id
--     LEFT JOIN stars s ON m.starfk = s.id

--Show the title of films where the director is from the USA
-- SELECT
--     m.title
-- FROM
--     movies m
--     LEFT JOIN directors d ON m.directorfk = d.id
-- WHERE
--     d.country = 'USA'

-- Show only those films where the writer and the director are the same person
-- SELECT
--     m.title,
--     d.name
-- from
--     movies m
--     left join directors d on m.directorfk = d.id
--     left join writers w on m.writerfk = w.id
-- WHERE
--     w.name = d.name

--Show directors and film titles for films with a score of 8 or higher
-- SELECT
--     d.name,
--     m.title
-- from
--     movies m
--     left join directors d on m.directorfk = d.id
-- where
--     m.score >= 8

-- extra query 1, show directors name and movie title for movies with score above 8
-- SELECT
--     d.name,
--     m.title
-- from
--     directors d
--     left join movies m on m.directorfk = d.id
-- where
--     m.score >= 8

-- extra query 2, display movie title, star name and directors name
-- SELECT
--     movies.title,
--     stars.name as star_name,
--     writers.name as director_name
-- FROM
--     movies
--     JOIN stars on movies.starfk = stars.id
--     JOIN writers on movies.writerfk = writers.id

-- extra query 3, moviestitle starname orderby dob 
-- SELECT
--     movies.title as movie_title,
--     stars.name as star_name,
--     stars.dob as date_of_birth
-- FROM
--     movies
--     JOIN stars on movies.starfk = stars.id order by stars.dob ASC

-- extra query 4, show writers name and email and star name
-- SELECT
--     w.name as writer_name,
--     w.email,
--     s.name as star_name
-- FROM
--     movies m
--     JOIN writers w on m.writerfk = w.id
--     join stars s on m.starfk = s.id

-- extra query 5, show movie name, writer name, director name and star name
-- SELECT
--     m.title as movie_name,
--     w.name as writer_name,
--     d.name as director_name,
--     s.name as star_name
-- from
--     movies m
--     JOIN writers w on m.writerfk = w.id
--     JOIN directors d on m.directorfk = d.id
--     JOIN stars s on m.starfk = s.id
