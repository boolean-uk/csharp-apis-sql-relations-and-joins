CREATE TABLE directors(
    id serial primary key, 
    name varchar(50), 
    country varchar(50)
);

CREATE TABLE stars(
    id serial primary key, 
    name varchar(50),
    date_of_birth timestamp
);

CREATE TABLE writers(
    id serial primary key, 
    name varchar(50), 
    email varchar(50)
);

CREATE TABLE films(
    id serial primary key, 
    title varchar(50), 
    director_id int, 
    star_id int, 
    writer_id int, 
    year int, 
    genre varchar(50), 
    score int, 
    foreign key(director_id) REFERENCES directors(id), 
    foreign key(star_id) REFERENCES starts(id), 
    foreign key(writer_id) REFERENCES writer(id)
);

    -- Insert directors
    INSERT INTO directors (name, country) VALUES
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

    -- Insert stars
    INSERT INTO stars (name, date_of_birth) VALUES
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

    -- Insert writers
    INSERT INTO writers (name, email) VALUES
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

    -- Insert films
    INSERT INTO films (title, director_id, writer_id, star_id, year, score, genre) VALUES
    ('2001: A Space Odyssey', 1, 1, 1, 1968, 10, 'Science Fiction'),
    ('Star Wars: A New Hope', 2, 2, 2, 1977, 7, 'Science Fiction'),
    ('To Kill A Mockingbird', 3, 3, 3, 1962, 10, 'Drama'),
    ('Titanic', 4, 4, 4, 1997, 5, 'Romance'),
    ('Dr Zhivago', 5, 5, 5, 1965, 8, 'Historical'),
    ('El Cid', 6, 6, 6, 1961, 6, 'Historical'),
    ('Voyage to Cythera', 7, 7, 7, 1984, 8, 'Drama'),
    ('Soldier of Orange', 8, 8, 8, 1977, 8, 'Thriller'),
    ('Three Colours: Blue', 9, 9, 9, 1993, 8, 'Drama'),
    ('Cyrano de Bergerac', 10, 10, 10, 1990, 9, 'Historical');

--Once you have the tables and data set up then you need to create queries to return the data needed as shown below:

-- Show the title and director name for all films
SELECT title, directors.name as director_name 
    FROM films 
    JOIN directors ON films.director_id = directors.id

-- Show the title, director and star name for all films

SELECT title, directors.name as director_name, 
    stars.name as star_name FROM films 
    JOIN directors ON films.director_id = directors.id
    JOIN stars ON films.star_id = stars.id

-- Show the title of films where the director is from the USA

SELECT title, directors.name FROM films
    JOIN directors ON films.director_id = directors.id
    WHERE directors.country LIKE 'USA'

-- Show only those films where the writer and the director are the same person

SELECT title, directors.name as directors_name, writers.name as writers_name FROM films
    JOIN writers ON films.writer_id = writers.id
    JOIN directors ON films.director_id = directors.id
    WHERE writers.name = directors.name

-- Show directors and film titles for films with a score of 8 or higher

SELECT title, directors.name, score FROM films
    JOIN directors ON films.director_id = directors.id
    WHERE films.score >= 8

-- Make at least 5 more queries to demonstrate your understanding of joins, 
-- and other relationships between tables.

-- I feel the problem is that any type of join will produce the same result, 
-- so instead I focused on the joins for the following excercises



-- Refactor the database tables so that the Actors, Directors and Writers all 
-- identify people (using a Foreign Key) that are present in a single People table
-- Where necessary refactor the queries to take advantage of this new structure

CREATE TABLE people(
    id serial primary key, 
    name varchar(50), 
    email varchar(50), 
    date_of_birth timestamp,
    country varchar(50)
);

CREATE TABLE cast(
    id serial primary key, 
    people_id int, 
    films_id int, 
    foreign key(people_id) REFERENCES peoples(id), 
    foreign key(films_id) REFERENCES films(id)
);

-- Merge all people into the people class
INSERT INTO people (name, email, date_of_birth, country)
	SELECT COALESCE(writers."name", stars."name", directors."name") as "name", 
		writers.email, stars.date_of_birth, directors.country FROM writers
		FULL OUTER JOIN stars ON writers."name" = stars."name"
		FULL OUTER JOIN directors ON writers."name" = directors."name"
		ORDER BY (name);


-- create a new TABLE that uses the person object instead
CREATE TABLE films_person(
    id serial primary key, 
    title varchar(50), 
    director_id int, 
    star_id int, 
    writer_id int, 
    year int, 
    genre varchar(50), 
    score int, 
    foreign key(director_id) REFERENCES people(id), 
    foreign key(star_id) REFERENCES people(id), 
    foreign key(writer_id) REFERENCES people(id)
);


-- Insert people into new films_person, is it usable or spagetti?
INSERT INTO films_person (title, director_id, writer_id, star_id, year, score, genre)
    SELECT title, director.id as director_id, writer.id as writer_id, 
    star.id as star_id, year, score, genre FROM films
        JOIN writers ON films.writer_id = writers.id
        JOIN directors ON films.director_id = directors.id 
        JOIN stars ON films.star_id = stars.id
        JOIN people writer on writers.name = writer.name
        JOIN people star on stars.name = star.name
        JOIN people director on directors.name = director.name

-- As it follows the same structure as previous, the previous code should run

CREATE TABLE cast(
    id serial primary key, 
    film_id int, 
    person_id int, 
    foreign key(film_id) REFERENCES films_person(id), 
    foreign key(person_id) REFERENCES people(id)
);

-- insert some arbitrary values

INSERT INTO film_cast (film_id, person_id) VALUES
    (1, 1), 
    (1, 2), 
    (1, 3);

-- show cast
SELECT * FROM films_person film
    JOIN film_cast ON film.id = film_cast.film_id
    JOIN people ON film_cast.person_id = people.id
    WHERE film.id = 1