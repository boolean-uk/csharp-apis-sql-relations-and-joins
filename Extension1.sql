-- EXTENSION 1:

-- Create people:

CREATE TABLE people (
people_id serial PRIMARY KEY,
name VARCHAR(50)
);

CREATE TABLE star_new  (
star_id serial PRIMARY KEY,
people_id INTEGER,
name VARCHAR(50),
star_dob VARCHAR(50),
FOREIGN KEY (people_id) REFERENCES people(people_id)
);

CREATE TABLE writer_new  (
writer_id serial PRIMARY KEY,
people_id INTEGER,
name VARCHAR(50),
email VARCHAR(50),
FOREIGN KEY (people_id) REFERENCES people(people_id)
);

CREATE TABLE director_new  (
director_id serial PRIMARY KEY,
people_id INTEGER,
name VARCHAR(50),
country VARCHAR(50),
FOREIGN KEY (people_id) REFERENCES people(people_id)
);

-- Inserting: 
INSERT INTO people (people_id, name)
VALUES (1, 'Stanley Kubrick');

INSERT INTO people (people_id, name)
VALUES (2, 'George Lucas');

INSERT INTO people (people_id, name)
VALUES (3, 'Robert Mulligan');

INSERT INTO people (people_id, name)
VALUES (4, 'James Cameron');

INSERT INTO people (people_id, name)
VALUES (5, 'David Lean');

INSERT INTO people (people_id, name)
VALUES (6, 'Anthony Mann');

INSERT INTO people (people_id, name)
VALUES (7, 'Theodoros Angelopoulos');

INSERT INTO people (people_id, name)
VALUES (8, 'Paul Verhoeven');

INSERT INTO people (people_id, name)
VALUES (9, 'Krzysztof Kieslowski');

INSERT INTO people (people_id, name)
VALUES (10, 'Jean-Paul Rappeneau');

INSERT INTO people (people_id, name)
VALUES (11, 'Keir Dullea');

INSERT INTO people (people_id, name)
VALUES (12, 'Mark Hamill');

INSERT INTO People (people_id, name)
VALUES (13, 'Gregory Peck');

-- Insert Leonardo DiCaprio with people_id 14
INSERT INTO People (people_id, name)
VALUES (14, 'Leonardo DiCaprio');

-- Insert Julie Christie with people_id 15
INSERT INTO People (people_id, name)
VALUES (15, 'Julie Christie');

-- Insert Charlton Heston with people_id 16
INSERT INTO People (people_id, name)
VALUES (16, 'Charlton Heston');

-- Insert Manos Katrakis with people_id 17
INSERT INTO People (people_id, name)
VALUES (17, 'Manos Katrakis');

-- Insert Rutger Hauer with people_id 18
INSERT INTO People (people_id, name)
VALUES (18, 'Rutger Hauer');
-- Insert Juliette Binoche with people_id 19
INSERT INTO People (people_id, name)
VALUES (19, 'Juliette Binoche');

-- Insert Gerard Depardieu with people_id 20
INSERT INTO People (people_id, name)
VALUES (20, 'Gerard Depardieu');

-- Insert Arthur C Clarke with people_id 21
INSERT INTO People (people_id, name)
VALUES (21, 'Arthur C Clarke');

-- Insert George Lucas with people_id 22
INSERT INTO People (people_id, name)
VALUES (22, 'George Lucas');

-- Insert Harper Lee with people_id 23
INSERT INTO People (people_id, name)
VALUES (23, 'Harper Lee');

-- Insert James Cameron with people_id 24
INSERT INTO People (people_id, name)
VALUES (24, 'James Cameron');

-- Insert Boris Pasternak with people_id 25
INSERT INTO People (people_id, name)
VALUES (25, 'Boris Pasternak');

-- Insert Frederick Frank with people_id 26
INSERT INTO People (people_id, name)
VALUES (26, 'Frederick Frank');

-- Insert Theodoros Angelopoulos with people_id 27
INSERT INTO People (people_id, name)
VALUES (27, 'Theodoros Angelopoulos');

-- Insert Erik Hazelhoff Roelfzema with people_id 28
INSERT INTO People (people_id, name)
VALUES (28, 'Erik Hazelhoff Roelfzema');

-- Insert Krzysztof Kieslowski with people_id 29
INSERT INTO People (people_id, name)
VALUES (29, 'Krzysztof Kieslowski');

-- Insert Edmond Rostand with people_id 30
INSERT INTO People (people_id, name)
VALUES (30, 'Edmond Rostand');


-- Insert Keir Dullea with people_id 11
INSERT INTO star_new (name, people_id)
VALUES ('Keir Dullea', 11);

-- Insert Mark Hamill with people_id 12
INSERT INTO star_new (name, people_id)
VALUES ('Mark Hamill', 12);

-- Insert Gregory Peck with people_id 13
INSERT INTO star_new (name, people_id)
VALUES ('Gregory Peck', 13);

-- Insert Leonardo DiCaprio with people_id 14
INSERT INTO star_new (name, people_id)
VALUES ('Leonardo DiCaprio', 14);

-- Insert Julie Christie with people_id 15
INSERT INTO star_new (name, people_id)
VALUES ('Julie Christie', 15);

-- Insert Charlton Heston with people_id 16
INSERT INTO star_new (name, people_id)
VALUES ('Charlton Heston', 16);

-- Insert Manos Katrakis with people_id 17
INSERT INTO star_new (name, people_id)
VALUES ('Manos Katrakis', 17);

-- Insert Rutger Hauer with people_id 18
INSERT INTO star_new (name, people_id)
VALUES ('Rutger Hauer', 18);

-- Insert Juliette Binoche with people_id 19
INSERT INTO star_new (name, people_id)
VALUES ('Juliette Binoche', 19);

-- Insert Gerard Depardieu with people_id 20
INSERT INTO star_new (name, people_id)
VALUES ('Gerard Depardieu', 20);

-- Insert Stanley Kubrick with people_id 1
INSERT INTO director_new (name, country, people_id)
VALUES ('Stanley Kubrick', 'USA', 1);

-- Insert George Lucas with people_id 2
INSERT INTO director_new (name, country, people_id)
VALUES ('George Lucas', 'USA', 2);

-- Insert Robert Mulligan with people_id 3
INSERT INTO director_new (name, country, people_id)
VALUES ('Robert Mulligan', 'USA', 3);

-- Insert James Cameron with people_id 4
INSERT INTO director_new (name, country, people_id)
VALUES ('James Cameron', 'Canada', 4);

-- Insert David Lean with people_id 5
INSERT INTO director_new (name, country, people_id)
VALUES ('David Lean', 'UK', 5);

-- Insert Anthony Mann with people_id 6
INSERT INTO director_new (name, country, people_id)
VALUES ('Anthony Mann', 'USA', 6);

-- Insert Theodoros Angelopoulos with people_id 7
INSERT INTO director_new (name, country, people_id)
VALUES ('Theodoros Angelopoulos', 'Greece', 7);

-- Insert Paul Verhoeven with people_id 8
INSERT INTO director_new (name, country, people_id)
VALUES ('Paul Verhoeven', 'Netherlands', 8);

-- Insert Krzysztof Kieslowski with people_id 9
INSERT INTO director_new (name, country, people_id)
VALUES ('Krzysztof Kieslowski', 'Poland', 9);

-- Insert Jean-Paul Rappeneau with people_id 10
INSERT INTO director_new (name, country, people_id)
VALUES ('Jean-Paul Rappeneau', 'France', 10);

-- Insert Arthur C Clarke with people_id 21
INSERT INTO writer_new (name, email, people_id)
VALUES ('Arthur C Clarke', 'arthur@clarke.com', 21);

-- Insert George Lucas with people_id 22
INSERT INTO writer_new (name, email, people_id)
VALUES ('George Lucas', 'george@email.com', 22);

-- Insert Harper Lee with people_id 23
INSERT INTO writer_new (name, email, people_id)
VALUES ('Harper Lee', 'harper@lee.com', 23);

-- Insert James Cameron with people_id 24
INSERT INTO writer_new (name, email, people_id)
VALUES ('James Cameron', 'james@cameron.com', 24);

-- Insert Boris Pasternak with people_id 25
INSERT INTO writer_new (name, email, people_id)
VALUES ('Boris Pasternak', 'boris@boris.com', 25);

-- Insert Frederick Frank with people_id 26
INSERT INTO writer_new (name, email, people_id)
VALUES ('Frederick Frank', 'fred@frank.com', 26);

-- Insert Theodoros Angelopoulos with people_id 27
INSERT INTO writer_new (name, email, people_id)
VALUES ('Theodoros Angelopoulos', 'theo@angelopoulos.com', 27);

-- Insert Erik Hazelhoff Roelfzema with people_id 28
INSERT INTO writer_new (name, email, people_id)
VALUES ('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com', 28);

-- Insert Krzysztof Kieslowski with people_id 29
INSERT INTO writer_new (name, email, people_id)
VALUES ('Krzysztof Kieslowski', 'email@email.com', 29);

-- Insert Edmond Rostand with people_id 30
INSERT INTO writer_new (name, email, people_id)
VALUES ('Edmond Rostand', 'edmond@rostand.com', 30);



-- Making queries:
-- Show the title and director name for all films:
SELECT f.title, p.name AS director
FROM film f
JOIN director_new d ON f.director_id = d.director_id
JOIN people p ON d.people_id = p.people_id;

-- Show the title, director, and star name for all films:
SELECT f.title, pd.name AS director, ps.name AS star
FROM film f
JOIN director_new dd ON f.director_id = dd.director_id
JOIN people pd ON dd.people_id = pd.people_id
JOIN star_new ss ON f.star_id = ss.star_id
JOIN people ps ON ss.people_id = ps.people_id;

--Show the title of films where the director is from the USA:
SELECT f.title
FROM film f
JOIN director_new d ON f.director_id = d.director_id
JOIN people p ON d.people_id = p.people_id
WHERE d.country = 'USA';

--Show only those films where the writer and the director are the same person:
SELECT f.title
FROM film f
JOIN director_new d ON f.director_id = d.director_id
JOIN people p ON d.people_id = p.people_id
JOIN writer_new w ON f.writer_id = w.writer_id
WHERE p.people_id = w.people_id;

-- Show directors and film titles for films with a score of 8 or higher:
SELECT f.title, pd.name AS director
FROM film f
JOIN director_new dd ON f.director_id = dd.director_id
JOIN people pd ON dd.people_id = pd.people_id
WHERE score >= 8;


-- Show directors with at least one associated film
SELECT pd.name AS director
FROM director_new dd
JOIN people pd ON dd.people_id = pd.people_id
JOIN film f ON dd.director_id = f.director_id
GROUP BY pd.name
HAVING COUNT(f.director_id) > 0;