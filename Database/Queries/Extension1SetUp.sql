-- Creating a People table
CREATE TABLE people (
    id SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    email VARCHAR(40) NOT NULL,
    type VARCHAR(15) NOT NULL -- This field will indicate the type of person (actor, director, writer)
);

-- Modifying the existing tables to use Foreign Key from People table
ALTER TABLE stars ADD COLUMN person_id INT REFERENCES people(id);
ALTER TABLE directors ADD COLUMN person_id INT REFERENCES people(id);
ALTER TABLE writers ADD COLUMN person_id INT REFERENCES people(id);



-- Updating the data in the People table with the respective type
INSERT INTO people (name, email, type) VALUES ('Keir Dullea', 'keir@dullea.com', 'actor');
INSERT INTO people (name, email, type) VALUES ('Mark Hamill', 'mark@hamill.com', 'actor');
INSERT INTO people (name, email, type) VALUES ('Harrison Ford', 'har@gmail.com', 'actor');
INSERT INTO people (name, email, type) VALUES ('Carrie Fisher', 'car@gmail.com', 'actor');
INSERT INTO people (name, email, type) VALUES ('Gregory Peck', 'grp@gmail.com', 'actor');

INSERT INTO people (name, email, type) VALUES ('Stanley Kubrick', 'sta@gmail.com', 'director');
INSERT INTO people (name, email, type) VALUES ('George Lucas', 'mail@gmail.com', 'director');
Insert INTO people (name, email, type) VALUES ('Robert Mulligan', 'mail@gmail.com', 'director');
INSERT INTO people (name, email, type) VALUES ('James Cameron', 'mail@gmail.com', 'director');
INSERT INTO people (name, email, type) VALUES ('David Lean', 'mail@gmail.com', 'director');

INSERT INTO people (name, email, type) VALUES ('Arthur C Clarke', 'arth@gmail.com', 'writer');
INSERT INTO people (name, email, type) VALUES ('Edmond Rostand', 'edmond@rostand.com', 'writer');
INSERT INTO people (name, email, type) VALUES ('Krzysztof Kieslowski', 'email@email.com' , 'writer');
INSERT INTO people (name, email, type) VALUES ('Erik Hazelhoff Roelfzema', 'erik@roelfzema.com' , 'writer');
INSERT INTO people (name, email, type) VALUES ('Theodoros Angelopoulos', 'theo@angelopoulos.com' , 'writer');



UPDATE films SET star_id = (SELECT id FROM people WHERE name = 'Keir Dullea' AND type = 'actor') WHERE star_id = 1;
UPDATE films SET star_id = (SELECT id FROM people WHERE name = 'Mark Hamill' AND type = 'actor') WHERE star_id = 2;
UPDATE films SET star_id = (SELECT id FROM people WHERE name = 'Gregory Peck' AND type = 'actor') WHERE star_id = 3;
UPDATE films SET star_id = (SELECT id FROM people WHERE name = 'Carrie Fisher' AND type = 'actor') WHERE star_id = 4;
UPDATE films SET star_id = (SELECT id FROM people WHERE name = 'Harrison Ford' AND type = 'actor') WHERE star_id = 5;

UPDATE films SET director_id = (SELECT id FROM people WHERE name = 'Stanley Kubrick' AND type = 'director') WHERE director_id = 1;
UPDATE films SET director_id = (SELECT id FROM people WHERE name = 'George Lucas' AND type = 'director') WHERE director_id = 2;
UPDATE films SET director_id = (SELECT id FROM people WHERE name = 'Robert Mulligan' AND type = 'director') WHERE director_id = 3;
UPDATE films SET director_id = (SELECT id FROM people WHERE name = 'James Cameron' AND type = 'director') WHERE director_id = 4;
UPDATE films SET director_id = (SELECT id FROM people WHERE name = 'David Lean' AND type = 'director') WHERE director_id = 5;


UPDATE films SET writer_id = (SELECT id FROM people WHERE name = 'Arthur C Clarke' AND type = 'writer') WHERE writer_id = 1;
UPDATE films SET writer_id = (SELECT id FROM people WHERE name = 'Edmond Rostand' AND type = 'writer') WHERE writer_id = 2;
UPDATE films SET writer_id = (SELECT id FROM people WHERE name = 'Krzysztof Kieslowski' AND type = 'writer') WHERE writer_id = 3;
UPDATE films SET writer_id = (SELECT id FROM people WHERE name = 'Erik Hazelhoff Roelfzema' AND type = 'writer') WHERE writer_id = 4;
UPDATE films SET writer_id = (SELECT id FROM people WHERE name = 'Theodoros Angelopoulos' AND type = 'writer') WHERE writer_id = 5;


-- Removing the now redundant columns from the stars, directors, and writers tables
ALTER TABLE stars DROP COLUMN name, DROP COLUMN star_dob;
ALTER TABLE directors DROP COLUMN name, DROP COLUMN country;
ALTER TABLE writers DROP COLUMN name, DROP COLUMN email;


-- Show people for each film

SELECT films.title AS "Name of the film",
people.name AS "Person name",
people.type AS "Person type"
FROM films
JOIN people
ON films.star_id = people.id
OR films.director_id = people.id
OR films.writer_id = people.id;
