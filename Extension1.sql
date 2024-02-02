/*
Extension Task 1
Refactor the database tables so that the Actors, Directors and Writers all identify people (using a Foreign Key) that are present in a single People table
Where necessary refactor the queries to take advantage of this new structure*/

--Creating a new table called People to store info about actors,
--directors, and writers. The People table will have a primary key (PeopleID) and common attributes such as Name, Country, and Email.

CREATE TABLE people (
    person_id SERIAL PRIMARY KEY,
    person_name VARCHAR(255)
);

-- Inserting data into People table
INSERT INTO people (person_name) VALUES
('Stanley Kubrick'),
('George Lucas'),
('Robert Mulligan'),
('James Cameron'),
('David Lean'),
('Anthony Mann'),
('Theodoros Angelopoulos'),
('Paul Verhoeven'),
('Krzysztof Kieslowski'),
('Jean-Paul Rappeneau'),
('Keir Dullea'),
('Mark Hamill'),
('Gregory Peck'),
('Leonardo DiCaprio'),
('Julie Christie'),
('Charlton Heston'),
('Manos Katrakis'),
('Rutger Hauer'),
('Juliette Binoche'),
('Gerard Depardieu'),
('Arthur C Clarke'),
('Harper Lee'),
('Boris Pasternak'),
('Frederick Frank'),
('Erik Hazelhoff Roelfzema'),
('Edmond Rostand');


CREATE TABLE directors (
    director_id SERIAL PRIMARY KEY,
    person_id INTEGER REFERENCES people(person_id),
    director_country VARCHAR(100),
    CONSTRAINT fk_director FOREIGN KEY(person_id) REFERENCES people(person_id)
);


-- Inserting data into Directors table
INSERT INTO directors (person_id, director_country) VALUES
((SELECT person_id FROM people WHERE people.person_name = 'Stanley Kubrick'), 'USA'),
((SELECT person_id FROM people WHERE people.person_name = 'George Lucas'), 'USA'),
((SELECT person_id FROM people WHERE people.person_name = 'Robert Mulligan'), 'USA'),
((SELECT person_id FROM people WHERE people.person_name = 'James Cameron'), 'Canada'),
((SELECT person_id FROM people WHERE people.person_name = 'David Lean'), 'UK'),
((SELECT person_id FROM people WHERE people.person_name = 'Anthony Mann'), 'USA'),
((SELECT person_id FROM people WHERE people.person_name = 'Theodoros Angelopoulos'), 'Greece'),
((SELECT person_id FROM people WHERE people.person_name = 'Paul Verhoeven'), 'Netherlands'),
((SELECT person_id FROM people WHERE people.person_name = 'Krzysztof Kieslowski'), 'Poland'),
((SELECT person_id FROM people WHERE people.person_name = 'Jean-Paul Rappeneau'), 'France');

CREATE TABLE stars (
    star_id SERIAL PRIMARY KEY,
    person_id INTEGER REFERENCES people(person_id),
    star_dob DATE,
    CONSTRAINT fk_star FOREIGN KEY(person_id) REFERENCES people(person_id)
);


-- Inserting data into Star table
INSERT INTO stars (person_id, star_dob) VALUES
((SELECT person_id FROM people WHERE person_name = 'Keir Dullea'), '1936-05-30'), -- Keir Dullea
((SELECT person_id FROM people WHERE person_name = 'Mark Hamill'), '1951-09-25'), -- Mark Hamill
((SELECT person_id FROM people WHERE person_name = 'Gregory Peck'), '1916-04-05'), -- Gregory Peck
((SELECT person_id FROM people WHERE person_name = 'Leonardo DiCaprio'), '1974-11-11'), -- Leonardo DiCaprio
((SELECT person_id FROM people WHERE person_name = 'Julie Christie'), '1940-04-14'), -- Julie Christie
((SELECT person_id FROM people WHERE person_name = 'Charlton Heston'), '1923-10-04'), -- Charlton Heston
((SELECT person_id FROM people WHERE person_name = 'Manos Katrakis'), '1908-08-14'), -- Manos Katrakis
((SELECT person_id FROM people WHERE person_name = 'Rutger Hauer'), '1944-01-23'), -- Rutger Hauer
((SELECT person_id FROM people WHERE person_name = 'Juliette Binoche'), '1964-03-09'), -- Juliette Binoche
((SELECT person_id FROM people WHERE person_name = 'Gerard Depardieu'), '1948-12-27'); -- Gerard Depardieu

CREATE TABLE writers (
    writer_id SERIAL PRIMARY KEY,
    person_id INTEGER REFERENCES people(person_id),
    writer_email VARCHAR(255),
    CONSTRAINT fk_writer FOREIGN KEY(person_id) REFERENCES people(person_id)
);


-- Inserting data into Writer table
INSERT INTO writers (person_id, writer_email) VALUES
((SELECT person_id FROM people WHERE people.person_name = 'Arthur C Clarke'), 'arthur@clarke.com'),   
((SELECT person_id FROM people WHERE people.person_name = 'George Lucas'), 'george@email.com'),    
((SELECT person_id FROM people WHERE people.person_name = 'Harper Lee'), 'harper@lee.com'),       
((SELECT person_id FROM people WHERE people.person_name = 'James Cameron'), 'james@cameron.com'),     
((SELECT person_id FROM people WHERE people.person_name = 'Boris Pasternak'), 'boris@boris.com'),      
((SELECT person_id FROM people WHERE people.person_name = 'Frederick Frank'), 'fred@frank.com'),       
((SELECT person_id FROM people WHERE people.person_name = 'Theodoros Angelopoulos'), 'theo@angelopoulos.com'),  
((SELECT person_id FROM people WHERE people.person_name = 'Erik Hazelhoff Roelfzema'), 'erik@roelfzema.com'),    
((SELECT person_id FROM people WHERE people.person_name = 'Krzysztof Kieslowski'), 'email@email.com'),      
((SELECT person_id FROM people WHERE people.person_name = 'Edmond Rostand'), 'edmond@rostand.com');    


CREATE TABLE films (
    film_id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    year INTEGER,
    genre VARCHAR(255),
    score INTEGER,
    director_id INTEGER REFERENCES directors(director_id),
    star_id INTEGER REFERENCES stars(star_id),
    writer_id INTEGER REFERENCES writers(writer_id)
);


-- Inserting data into Film table
INSERT INTO films (title, year, genre, score, director_id, star_id, writer_id) VALUES
('2001: A Space Odyssey', 1968, 'Science Fiction', 10, 1, 1, 1),
('Star Wars: A New Hope', 1977, 'Science Fiction', 7, 2, 2, 2),
('To Kill A Mockingbird', 1962, 'Drama', 10, 3, 3, 3),
('Titanic', 1997, 'Romance', 5, 4, 4, 4),
('Dr Zhivago', 1965, 'Historical', 8, 5, 5, 5),
('El Cid', 1961, 'Historical', 6, 6, 6, 6),
('Voyage to Cythera', 1984, 'Drama', 7, 7, 7, 7),
('Soldier of Orange', 1977, 'Thriller', 8, 8, 8, 8),
('Three Colours: Blue', 1993, 'Drama', 8, 9, 9, 9),
('Cyrano de Bergerac', 1990, 'Historical', 9, 10, 10, 10);

--


--i) Show the title and director name for all films
SELECT films.title, people.person_name AS director
FROM films
JOIN directors ON films.director_id = directors.director_id JOIN people ON directors.person_id=people.person_id


--ii) Show the title, director and star name for all filmsp
SELECT films.title, director.person_name as director_people , star.person_name as star_people
FROM films
JOIN directors ON films.director_id = directors.director_id
JOIN stars ON films.star_id = stars.star_id
JOIN people AS director ON directors.person_id=director.person_id 
Join people AS star On stars.person_id=star.person_id 


--iii) Show the title of films where the director is from the USA
SELECT films.title, director_country
FROM films
JOIN directors ON films.director_id = directors.director_id
WHERE directors.director_country = 'USA';


--iv) Show only those films where the writer and the director are the same person
SELECT title, writers.writer_id, directors.director_id
FROM films
JOIN writers ON films.writer_id = writers.writer_id
JOIN directors ON directors.person_id = writers.person_id
WHERE writers.person_id = directors.person_id;


--v) Show directors and film titles for films with a score of 8 or higher
SELECT directors.person_id AS director, films.title, films.score
FROM films
JOIN directors ON films.director_id = directors.director_id
WHERE films.score >= 8;


--vi) Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.
--Extra Tasks)

-- List all movies with their directors, stars, and writers:
SELECT films.title, director.person_name AS director, star.person_name AS star, writer.person_name AS writer
FROM films
JOIN directors ON films.director_id = directors.director_id
JOIN stars ON films.star_id = stars.star_id
JOIN writers ON films.writer_id = writers.writer_id
JOIN people AS director ON directors.person_id = director.person_id
JOIN people AS star ON stars.person_id = star.person_id
JOIN people AS writer ON writers.person_id = writer.person_id;

-- List all movies and their genres:
SELECT films.title, films.genre
FROM films;

-- List all people (actors, directors, and writers):
SELECT person_name AS fullname
FROM people;

-- Find movies directed by a specific director:
SELECT films.title, films.year, person_name
FROM films
JOIN directors ON films.director_id = directors.director_id
JOIN people ON directors.person_id = people.person_id
WHERE people.person_name = 'Stanley Kubrick';

-- Find movies where a specific person starred:
SELECT films.title, films.year, person_name
FROM films
JOIN stars ON films.star_id = stars.star_id
JOIN people ON stars.person_id = people.person_id
WHERE people.person_name = 'Keir Dullea';

-- Find movies written by a specific writer:
SELECT films.title, films.year, person_name
FROM films
JOIN writers ON films.writer_id = writers.writer_id
JOIN people ON writers.person_id = people.person_id
WHERE people.person_name = 'Arthur C Clarke';

