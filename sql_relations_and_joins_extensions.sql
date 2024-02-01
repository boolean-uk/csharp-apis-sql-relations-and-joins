-- Dropping existing tables if they exist
DROP TABLE IF EXISTS films CASCADE;
DROP TABLE IF EXISTS people CASCADE;
DROP TABLE IF EXISTS directors CASCADE;
DROP TABLE IF EXISTS stars CASCADE;
DROP TABLE IF EXISTS writers CASCADE;
DROP TABLE IF EXISTS actors CASCADE;
DROP TABLE IF EXISTS actor_films CASCADE;

-- Schema creation
CREATE TABLE people (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE
);

CREATE TABLE directors (
    id INT PRIMARY KEY,
    country VARCHAR(255),
    CONSTRAINT directors_id_fk FOREIGN KEY (id) REFERENCES people(id)
);

CREATE TABLE stars (
    id INT PRIMARY KEY,
    date_of_birth DATE,
    CONSTRAINT stars_id_fk FOREIGN KEY (id) REFERENCES people(id)
);

CREATE TABLE writers (
    id INT PRIMARY KEY,
    email VARCHAR(255),
    CONSTRAINT writers_id_fk FOREIGN KEY (id) REFERENCES people(id)
);

CREATE TABLE actors (
    id INT PRIMARY KEY,
    height_in_cm INT,
    weight_in_kg INT,
    num_scandals INT,
    CONSTRAINT actors_id_fk FOREIGN KEY (id) REFERENCES people(id)
);

CREATE TABLE films (
    id SERIAL PRIMARY KEY,
    director_id INT,
    star_id INT,
    writer_id INT,
    title VARCHAR(255) UNIQUE,
    genre VARCHAR(50),
    release_year INT,
    score INT,
    CONSTRAINT film_director_id_fk FOREIGN KEY (director_id) REFERENCES directors(id),
    CONSTRAINT film_star_id_fk FOREIGN KEY (star_id) REFERENCES stars(id),
    CONSTRAINT film_writer_id_fk FOREIGN KEY (writer_id) REFERENCES writers(id)
);

--i.e. "cast"
CREATE TABLE actor_films (
    actor_id INT,
    film_id INT,
    character_name VARCHAR(255),
    character_relationship_status VARCHAR(255),
    CONSTRAINT actor_film_actor_id_fk FOREIGN KEY(actor_id) REFERENCES actors(id),
    CONSTRAINT actor_film_film_id_fk FOREIGN KEY (film_id) REFERENCES films(id),
    PRIMARY KEY (actor_id, film_id)
);


-- DATA INSERTS
-- Core Data for New Schema
INSERT INTO people (name) VALUES 
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

INSERT INTO directors (id, country) VALUES
    ((SELECT id FROM people WHERE name = 'Stanley Kubrick'), 'USA'),
    ((SELECT id FROM people WHERE name = 'George Lucas'), 'USA'),
    ((SELECT id FROM people WHERE name = 'Robert Mulligan'), 'USA'),
    ((SELECT id FROM people WHERE name = 'James Cameron'), 'Canada'),
    ((SELECT id FROM people WHERE name = 'David Lean'), 'UK'),
    ((SELECT id FROM people WHERE name = 'Anthony Mann'), 'USA'),
    ((SELECT id FROM people WHERE name = 'Theodoros Angelopoulos'), 'Greece'),
    ((SELECT id FROM people WHERE name = 'Paul Verhoeven'), 'Netherlands'),
    ((SELECT id FROM people WHERE name = 'Krzysztof Kieslowski'), 'Poland'),
    ((SELECT id FROM people WHERE name = 'Jean-Paul Rappeneau'), 'France');

INSERT INTO stars (id, date_of_birth) VALUES
    ((SELECT id FROM people WHERE name = 'Keir Dullea'), '1936-05-30'),
    ((SELECT id FROM people WHERE name = 'Mark Hamill'), '1951-09-25'),
    ((SELECT id FROM people WHERE name = 'Gregory Peck'), '1916-04-05'),
    ((SELECT id FROM people WHERE name = 'Leonardo DiCaprio'), '1974-11-11'),
    ((SELECT id FROM people WHERE name = 'Julie Christie'), '1940-04-14'),
    ((SELECT id FROM people WHERE name = 'Charlton Heston'), '1923-10-04'),
    ((SELECT id FROM people WHERE name = 'Manos Katrakis'), '1908-08-14'),
    ((SELECT id FROM people WHERE name = 'Rutger Hauer'), '1944-01-23'),
    ((SELECT id FROM people WHERE name = 'Juliette Binoche'), '1964-03-09'),
    ((SELECT id FROM people WHERE name = 'Gerard Depardieu'), '1948-12-27');

INSERT INTO writers (id, email) VALUES
    ((SELECT id FROM people WHERE name = 'Arthur C Clarke'), 'arthur@clarke.com'),
    ((SELECT id FROM people WHERE name = 'George Lucas'), 'george@email.com'),
    ((SELECT id FROM people WHERE name = 'Harper Lee'), 'harper@lee.com'),
    ((SELECT id FROM people WHERE name = 'James Cameron'), 'james@cameron.com'),
    ((SELECT id FROM people WHERE name = 'Boris Pasternak'), 'boris@boris.com'),
    ((SELECT id FROM people WHERE name = 'Frederick Frank'), 'fred@frank.com'),
    ((SELECT id FROM people WHERE name = 'Theodoros Angelopoulos'), 'theo@angelopoulos.com'),
    ((SELECT id FROM people WHERE name = 'Erik Hazelhoff Roelfzema'), 'erik@roelfzema.com'),
    ((SELECT id FROM people WHERE name = 'Krzysztof Kieslowski'), 'email@email.com'),
    ((SELECT id FROM people WHERE name = 'Edmond Rostand'), 'edmond@rostand.com');

INSERT INTO films (director_id, star_id, writer_id, title, genre, release_year, score) VALUES 
    ((SELECT id FROM directors WHERE id = (SELECT id FROM people WHERE name = 'Stanley Kubrick')), (SELECT id FROM stars WHERE id = (SELECT id FROM people WHERE name = 'Keir Dullea')), (SELECT id FROM writers WHERE id = (SELECT id FROM people WHERE name = 'Arthur C Clarke')), '2001: A Space Odyssey', 'Science Fiction', 1968, 10),
    ((SELECT id FROM directors WHERE id = (SELECT id FROM people WHERE name = 'George Lucas')), (SELECT id FROM stars WHERE id = (SELECT id FROM people WHERE name = 'Mark Hamill')), (SELECT id FROM writers WHERE id = (SELECT id FROM people WHERE name = 'George Lucas')), 'Star Wars: A New Hope', 'Science Fiction', 1977, 7),
    ((SELECT id FROM directors WHERE id = (SELECT id FROM people WHERE name = 'Robert Mulligan')), (SELECT id FROM stars WHERE id = (SELECT id FROM people WHERE name = 'Gregory Peck')), (SELECT id FROM writers WHERE id = (SELECT id FROM people WHERE name = 'Harper Lee')), 'To Kill A Mockingbird', 'Drama', 1962, 10),
    ((SELECT id FROM directors WHERE id = (SELECT id FROM people WHERE name = 'James Cameron')), (SELECT id FROM stars WHERE id = (SELECT id FROM people WHERE name = 'Leonardo DiCaprio')), (SELECT id FROM writers WHERE id = (SELECT id FROM people WHERE name = 'James Cameron')), 'Titanic', 'Romance', 1997, 5),
    ((SELECT id FROM directors WHERE id = (SELECT id FROM people WHERE name = 'David Lean')), (SELECT id FROM stars WHERE id = (SELECT id FROM people WHERE name = 'Julie Christie')), (SELECT id FROM writers WHERE id = (SELECT id FROM people WHERE name = 'Boris Pasternak')), 'Dr Zhivago', 'Historical', 1965, 8),
    ((SELECT id FROM directors WHERE id = (SELECT id FROM people WHERE name = 'Anthony Mann')), (SELECT id FROM stars WHERE id = (SELECT id FROM people WHERE name = 'Charlton Heston')), (SELECT id FROM writers WHERE id = (SELECT id FROM people WHERE name = 'Frederick Frank')), 'El Cid', 'Historical', 1961, 6),
    ((SELECT id FROM directors WHERE id = (SELECT id FROM people WHERE name = 'Theodoros Angelopoulos')), (SELECT id FROM stars WHERE id = (SELECT id FROM people WHERE name = 'Manos Katrakis')), (SELECT id FROM writers WHERE id = (SELECT id FROM people WHERE name = 'Theodoros Angelopoulos')), 'Voyage to Cythera', 'Drama', 1984, 8),
    ((SELECT id FROM directors WHERE id = (SELECT id FROM people WHERE name = 'Paul Verhoeven')), (SELECT id FROM stars WHERE id = (SELECT id FROM people WHERE name = 'Rutger Hauer')), (SELECT id FROM writers WHERE id = (SELECT id FROM people WHERE name = 'Erik Hazelhoff Roelfzema')), 'Soldier of Orange', 'Thriller', 1977, 8),
    ((SELECT id FROM directors WHERE id = (SELECT id FROM people WHERE name = 'Krzysztof Kieslowski')), (SELECT id FROM stars WHERE id = (SELECT id FROM people WHERE name = 'Juliette Binoche')), (SELECT id FROM writers WHERE id = (SELECT id FROM people WHERE name = 'Krzysztof Kieslowski')), 'Three Colours: Blue', 'Drama', 1993, 8),
    ((SELECT id FROM directors WHERE id = (SELECT id FROM people WHERE name = 'Jean-Paul Rappeneau')), (SELECT id FROM stars WHERE id = (SELECT id FROM people WHERE name = 'Gerard Depardieu')), (SELECT id FROM writers WHERE id = (SELECT id FROM people WHERE name = 'Edmond Rostand')), 'Cyrano de Bergerac', 'Historical', 1990, 9);


INSERT INTO actors (id, height_in_cm, weight_in_kg, num_scandals) VALUES
    ((SELECT id FROM people WHERE name = 'Keir Dullea'), 183, 75, 0),
    ((SELECT id FROM people WHERE name = 'Mark Hamill'), 175, 77, 2),
    ((SELECT id FROM people WHERE name = 'Gregory Peck'), 191, 85, 0),
    ((SELECT id FROM people WHERE name = 'Leonardo DiCaprio'), 183, 75, 12),
    ((SELECT id FROM people WHERE name = 'Julie Christie'), 160, 55, 0),
    ((SELECT id FROM people WHERE name = 'Charlton Heston'), 191, 90, 3),
    ((SELECT id FROM people WHERE name = 'Manos Katrakis'), 178, 80, 0),
    ((SELECT id FROM people WHERE name = 'Rutger Hauer'), 187, 85, 1),
    ((SELECT id FROM people WHERE name = 'Juliette Binoche'), 168, 57, 7),
    ((SELECT id FROM people WHERE name = 'Gerard Depardieu'), 180, 100, 0);


INSERT INTO actor_films (actor_id, film_id, character_name, character_relationship_status) VALUES
    ((SELECT id FROM people WHERE name = 'Keir Dullea'), (SELECT id FROM films WHERE title = '2001: A Space Odyssey'), 'Dr. David Bowman', 'Single'),
    ((SELECT id FROM people WHERE name = 'Mark Hamill'), (SELECT id FROM films WHERE title = 'Star Wars: A New Hope'), 'Luke Skywalker', 'Single'),
    ((SELECT id FROM people WHERE name = 'Gregory Peck'), (SELECT id FROM films WHERE title = 'To Kill A Mockingbird'), 'Atticus Finch', 'Widowed'),
    ((SELECT id FROM people WHERE name = 'Leonardo DiCaprio'), (SELECT id FROM films WHERE title = 'Titanic'), 'Jack Dawson', 'Single'),
    ((SELECT id FROM people WHERE name = 'Julie Christie'), (SELECT id FROM films WHERE title = 'Dr Zhivago'), 'Lara Antipova', 'Married'),
    ((SELECT id FROM people WHERE name = 'Charlton Heston'), (SELECT id FROM films WHERE title = 'El Cid'), 'El Cid', 'Married'),
    ((SELECT id FROM people WHERE name = 'Manos Katrakis'), (SELECT id FROM films WHERE title = 'Voyage to Cythera'), 'Spyros', 'Married'),
    ((SELECT id FROM people WHERE name = 'Rutger Hauer'), (SELECT id FROM films WHERE title = 'Soldier of Orange'), 'Erik Lanshof', 'Single'),
    ((SELECT id FROM people WHERE name = 'Juliette Binoche'), (SELECT id FROM films WHERE title = 'Three Colours: Blue'), 'Julie Vignon', 'Widowed'),
    ((SELECT id FROM people WHERE name = 'Gerard Depardieu'), (SELECT id FROM films WHERE title = 'Cyrano de Bergerac'), 'Cyrano de Bergerac', 'Single');

-- Additional Inerts
INSERT INTO people (name) VALUES 
('Alice Anderson'),
('Bob Brown'),
('Catherine Carter'),
('David Davis'),
('Emily Evans'),
('Frank Foster'),
('Jade Jezebel'),
('Henry Harris'),
('Zara Zest'),
('Brock Hardwood'),
('Ruby Risqué'),
('Lance Lure'),
('Savannah Sizzle'),
('Romeo Radiant'),
('Scarlett Seduce'),
('John Doe'),
('Susan Butterdough'),
('Norm Normal'),
('Mary Mundane'),
('Joe Dull');

INSERT INTO directors (id, country) VALUES
    ((SELECT id FROM people WHERE name = 'David Davis'), 'USA'),
    ((SELECT id FROM people WHERE name = 'Emily Evans'), 'UK'),
    ((SELECT id FROM people WHERE name = 'Romeo Radiant'), 'USA'),
    ((SELECT id FROM people WHERE name = 'Scarlett Seduce'), 'USA');

INSERT INTO stars (id, date_of_birth) VALUES
    ((SELECT id FROM people WHERE name = 'Alice Anderson'), '1992-03-12'),
    ((SELECT id FROM people WHERE name = 'Bob Brown'), '1987-08-20'),
    ((SELECT id FROM people WHERE name = 'Ruby Risqué'), '1999-05-18'),
    ((SELECT id FROM people WHERE name = 'Lance Lure'), '1995-02-14');
    
INSERT INTO writers (id, email) VALUES
    ((SELECT id FROM people WHERE name = 'Catherine Carter'), 'catherine@carter.com'),
    ((SELECT id FROM people WHERE name = 'Frank Foster'), 'frank@foster.com'),
    ((SELECT id FROM people WHERE name = 'Savannah Sizzle'), 'savannah@sizzle.com'),
    ((SELECT id FROM people WHERE name = 'John Doe'), 'john@doe.com');

INSERT INTO actors (id, height_in_cm, weight_in_kg, num_scandals) VALUES
    ((SELECT id FROM people WHERE name = 'Catherine Carter'), 172, 50, 1),
    ((SELECT id FROM people WHERE name = 'Frank Foster'), 179, 98, 2),
    ((SELECT id FROM people WHERE name = 'Jade Jezebel'), 165, 65, 9),
    ((SELECT id FROM people WHERE name = 'Henry Harris'), 175, 80, 1),
    ((SELECT id FROM people WHERE name = 'Zara Zest'), 160, 48, 10),
    ((SELECT id FROM people WHERE name = 'Brock Hardwood'), 186, 80, 9),
    ((SELECT id FROM people WHERE name = 'Romeo Radiant'), 191, 75, 19),
	((SELECT id FROM people WHERE name = 'Savannah Sizzle'), 168, 50, 25),
	((SELECT id FROM people WHERE name = 'Lance Lure'), 205, 100, 5),
    ((SELECT id FROM people WHERE name = 'John Doe'), 180, 115, 0),
    ((SELECT id FROM people WHERE name = 'Susan Butterdough'), 165, 120, 1),
    ((SELECT id FROM people WHERE name = 'Norm Normal'), 170, 124, 0),
    ((SELECT id FROM people WHERE name = 'Mary Mundane'), 160, 90, 0),
    ((SELECT id FROM people WHERE name = 'Joe Dull'), 168, 132, 0);


INSERT INTO films (director_id, star_id, writer_id, title, genre, release_year, score) VALUES 
    ((SELECT id FROM directors WHERE id = (SELECT id FROM people WHERE name = 'David Davis')), (SELECT id FROM stars WHERE id = (SELECT id FROM people WHERE name = 'Alice Anderson')), (SELECT id FROM people WHERE name = 'Catherine Carter'), 'Eternal Shadows', 'Mystery', 2024, 6),
    ((SELECT id FROM directors WHERE id = (SELECT id FROM people WHERE name = 'Emily Evans')), (SELECT id FROM stars WHERE id = (SELECT id FROM people WHERE name = 'Bob Brown')), (SELECT id FROM people WHERE name = 'Frank Foster'), 'Lost in Time', 'Sci-Fi', 2024, 5),
 	((SELECT id FROM directors WHERE id = (SELECT id FROM people WHERE name = 'Romeo Radiant')), (SELECT id FROM stars WHERE id = (SELECT id FROM people WHERE name = 'Ruby Risqué')), (SELECT id FROM people WHERE name = 'Savannah Sizzle'), 'Temptation Tango', 'Romance', 2024, 3),
    ((SELECT id FROM directors WHERE id = (SELECT id FROM people WHERE name = 'Scarlett Seduce')), (SELECT id FROM stars WHERE id = (SELECT id FROM people WHERE name = 'Lance Lure')), (SELECT id FROM people WHERE name = 'John Doe'), 'Everyday Echo', 'Drama', 2024, 3);

INSERT INTO actor_films (actor_id, film_id, character_name, character_relationship_status) VALUES
    ((SELECT id FROM people WHERE name = 'Catherine Carter'), (SELECT id FROM films WHERE title = 'Eternal Shadows'), 'Natalie Night', 'Married'),
    ((SELECT id FROM people WHERE name = 'Frank Foster'), (SELECT id FROM films WHERE title = 'Lost in Time'), 'Oliver Orbit', 'Single'),
    ((SELECT id FROM people WHERE name = 'Jade Jezebel'), (SELECT id FROM films WHERE title = 'Eternal Shadows'), 'Mysterious Woman', 'In a relationship'),
    ((SELECT id FROM people WHERE name = 'Henry Harris'), (SELECT id FROM films WHERE title = 'Lost in Time'), 'Hector Horizon', 'Single'),
    ((SELECT id FROM people WHERE name = 'Zara Zest'), (SELECT id FROM films WHERE title = 'Eternal Shadows'), 'Iris Ivory', 'Married'),
    ((SELECT id FROM people WHERE name = 'Brock Hardwood'), (SELECT id FROM films WHERE title = 'Lost in Time'), 'Jason Jet', 'In a relationship'),
	((SELECT id FROM people WHERE name = 'Savannah Sizzle'), (SELECT id FROM films WHERE title = 'Temptation Tango'), 'Sienna Sultry', 'In a relationship'),
    ((SELECT id FROM people WHERE name = 'John Doe'), (SELECT id FROM films WHERE title = 'Everyday Echo'), 'Joe Average', 'Single'),
    ((SELECT id FROM people WHERE name = 'Susan Butterdough'), (SELECT id FROM films WHERE title = 'Temptation Tango'), 'Jenny Generic', 'Single'),
    ((SELECT id FROM people WHERE name = 'Norm Normal'), (SELECT id FROM films WHERE title = 'Everyday Echo'), 'Ned Normalcy', 'Single'),
    ((SELECT id FROM people WHERE name = 'Mary Mundane'), (SELECT id FROM films WHERE title = 'Temptation Tango'), 'Molly Mediocre', 'Single'),
	((SELECT id FROM people WHERE name = 'Romeo Radiant'), (SELECT id FROM films WHERE title = 'Temptation Tango'), 'Hot Boyfriend', 'In a relationship'),
    ((SELECT id FROM people WHERE name = 'Joe Dull'), (SELECT id FROM films WHERE title = 'Everyday Echo'), 'Bob Basic', 'Single'),
 	((SELECT id FROM people WHERE name = 'Norm Normal'), (SELECT id FROM films WHERE title = 'Eternal Shadows'), 'Norman Neutral', 'Single'),
    ((SELECT id FROM people WHERE name = 'Joe Dull'), (SELECT id FROM films WHERE title = 'Lost in Time'), 'Billy Basic', 'Single'),
    ((SELECT id FROM people WHERE name = 'Mary Mundane'), (SELECT id FROM films WHERE title = 'Eternal Shadows'), 'Molly Monotone', 'Widowed'),
    ((SELECT id FROM people WHERE name = 'Lance Lure'), (SELECT id FROM films WHERE title = 'Temptation Tango'), 'Lucas Love', 'In a relationship'),
    ((SELECT id FROM people WHERE name = 'Savannah Sizzle'), (SELECT id FROM films WHERE title = 'Eternal Shadows'), 'Sara Steamy', 'Married');

-- CORE QUERIES REFACTORED FOR EXTENSION
--------------------------------------------------------------
-- Show the title and director name for all films
SELECT f."title" AS "film", p."name" AS "director"
FROM films f
JOIN directors d ON f."director_id" = d."id"
JOIN people p ON d."id" = p."id"
ORDER BY f."title" ASC;


-- Show the title, director and star name for all films
SELECT f."title" AS "film", dp."name" AS "director", sp."name" AS "star"
FROM films f
JOIN directors d ON f."director_id" = d."id"
JOIN stars s ON f."star_id" = s."id"
JOIN people dp ON d."id" = dp."id"
JOIN people sp ON s."id" = sp."id";

-- Show the title of films where the director is from the USA
SELECT f."title"
FROM films f JOIN directors d ON f."director_id" = d."id"
WHERE d.country LIKE 'USA';

-- Show only those films where the writer and the director are the same person
SELECT f."title" AS "film", wp."name" AS "writer", dp."name" AS "director"
FROM films f 
JOIN writers w ON f."writer_id" = w."id"
JOIN directors d ON f."director_id" = d."id"
JOIN people wp ON w."id" = wp."id"
JOIN people dp ON d."id" = dp."id"
WHERE wp."name" = dp."name";

-- Show directors and film titles for films with a score of 8 or higher
SELECT f."title" AS "film", dp."name" AS "director"
FROM films f 
JOIN directors d ON f."director_id" = d."id"
JOIN people dp ON d."id" = dp."id"
WHERE f."score" >= 8;

-- Show directors ranked by average scores of their films
SELECT dp."name" AS "director", ROUND(AVG(f."score"),1) AS "average_score"
FROM films f 
JOIN directors d ON f."director_id" = d."id"
JOIN people dp ON d."id" = dp."id"
GROUP BY dp."name"
ORDER BY "average_score" DESC;

-- Show average film score for each generation of stars: Baby Boomer, Generation X, Millennials, Generation Z
SELECT
CASE
	WHEN s."date_of_birth" < '1946-01-01' THEN 'Pre-Boomer'
	WHEN s."date_of_birth" BETWEEN '1946-01-01' AND '1964-12-31' THEN 'Baby Boomers'
	WHEN s."date_of_birth" BETWEEN '1965-01-01' AND '1980-12-31' THEN 'Gen X'
	WHEN s."date_of_birth" BETWEEN '1981-01-01' AND '1996-12-31' THEN 'Millennials'
	WHEN s."date_of_birth" BETWEEN '1997-01-01' AND '2012-12-31' THEN 'Gen Z'
	ELSE 'Post-Zoomer'
END AS "generation",
AVG(f."score") AS "average_score"
FROM stars s
JOIN films f ON s."id" = f."star_id"
GROUP BY "generation"
ORDER BY "average_score" DESC;

-- Show age of stars at time of their film's release
SELECT
    sp."name" AS "star",
    f."title" AS "film",
    f."release_year",
    f."release_year" - EXTRACT(YEAR FROM s."date_of_birth") AS "age_at_release"
FROM films f
JOIN stars s ON f."star_id" = s."id"
JOIN people sp ON s."id" = sp."id"
ORDER BY "age_at_release" ASC;

-- Show average age of stars at film's release based on director's nationality
SELECT
	d."country" as "director_nationality",
	AVG(f."release_year" - EXTRACT(YEAR FROM s."date_of_birth")) AS "average_star_age"
FROM directors d
JOIN films f ON d."id" = f."director_id"
JOIN stars s ON f."star_id" = s."id"
GROUP BY "director_nationality"
ORDER BY "average_star_age" ASC;

-- Show avere score for each genre by nationality of director
SELECT d."country", f."genre", ROUND(AVG(f."score"), 2) AS "average_score"
FROM films f
JOIN directors d ON f."director_id" = d."id"
GROUP BY f."genre", d."country"
ORDER BY f."genre" ASC, "average_score" DESC;

-- EXTENSION ADDITONAL QUERIES
----------------------------------------
-- Show actors height, weight and number of scandals involved in
SELECT ap."name" AS "actor", a."height_in_cm", a."weight_in_kg", a."num_scandals" as "number_of_scandals"
FROM actors a
JOIN people ap ON a."id" = ap."id"
ORDER BY "number_of_scandals" DESC;

-- Show average actor BMI by film characters relationship status
SELECT c."character_relationship_status" AS "relationship_status_of_film_characters",
ROUND(AVG(CAST(weight_in_kg AS DECIMAL(10, 2)) / CAST((height_in_cm * height_in_cm) AS DECIMAL(10, 2)) * 10000), 1) AS "average_actor_bmi"
FROM actor_films c
JOIN actors a ON c."actor_id" = a."id"
GROUP BY c."character_relationship_status"
ORDER BY "average_actor_bmi" ASC;