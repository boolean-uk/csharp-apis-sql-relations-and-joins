CREATE TABLE people(
    id serial PRIMARY KEY,
    name VARCHAR(40) NOT NULL
)

ALTER TABLE stars
    ADD COLUMN people_id INTEGER,
    ADD CONSTRAINT fk_people FOREIGN KEY (people_id) REFERENCES people(id);
ALTER TABLE stars
    DROP COLUMN name

ALTER TABLE directors
    ADD COLUMN people_id INTEGER,
    ADD CONSTRAINT fk_people FOREIGN KEY (people_id) REFERENCES people(id);
ALTER TABLE directors
    DROP COLUMN name

ALTER TABLE writers
    ADD COLUMN people_id INTEGER,
    ADD CONSTRAINT fk_people FOREIGN KEY (people_id) REFERENCES people(id);
ALTER TABLE writers
    DROP COLUMN name

INSERT INTO people (name) VALUES('Stanley Kubrick');
INSERT INTO people (name) VALUES('Keir Dullea');
INSERT INTO people (name) VALUES('Arthur C Clarke');
INSERT INTO people (name) VALUES('George Lucas');
INSERT INTO people (name) VALUES('Mark Hamill');
INSERT INTO people (name) VALUES('Robert Mulligan');
INSERT INTO people (name) VALUES('Gregory Peck');
INSERT INTO people (name) VALUES('Harper Lee');
INSERT INTO people (name) VALUES('James Cameron');
INSERT INTO people (name) VALUES('Leonardo DiCaprio');
INSERT INTO people (name) VALUES('David Lean');
INSERT INTO people (name) VALUES('Julie Christie');
INSERT INTO people (name) VALUES('Boris Pasternak');
INSERT INTO people (name) VALUES('Anthony Mann');
INSERT INTO people (name) VALUES('Charlton Heston');
INSERT INTO people (name) VALUES('Frederick Frank');
INSERT INTO people (name) VALUES('Theodoros Angelopoulos');
INSERT INTO people (name) VALUES('Manos Katrakis');
INSERT INTO people (name) VALUES('Paul Verhoeven');
INSERT INTO people (name) VALUES('Rutger Hauer');
INSERT INTO people (name) VALUES('Erik Hazelhoff Roelfzema');
INSERT INTO people (name) VALUES('Krzysztof Kielowski');
INSERT INTO people (name) VALUES('Juliette Binoche');
INSERT INTO people (name) VALUES('Jean-Paul Rappeneau');
INSERT INTO people (name) VALUES('Gerard Depardieu');
INSERT INTO people (name) VALUES('Edmond Rostand');
-- i 
SELECT
f.title,
p.name AS director
FROM films f
INNER JOIN directors d 
ON f.director_id = d.id
INNER JOIN people p
ON p.id = d.people_id


-- ii
SELECT
f.title,
p_d.name AS director,
p_s.name AS star
FROM films f
INNER JOIN directors d ON f.director_id = d.id
INNER JOIN stars s ON f.star_id = s.id
INNER JOIN people p_d ON d.people_id = p_d.id
INNER JOIN people p_s ON s.people_id = p_s.id

-- iv
SELECT f.title, f.genre, f.year, f.score
FROM films f
INNER JOIN directors d ON f.director_id = d.id
INNER JOIN writers w ON f.writer_id = w.id
WHERE d.people_id = w.people_id


-- v
SELECT f.title, p.name, f.score
FROM films f
INNER JOIN directors d ON f.director_id = d.id
INNER JOIN people p ON p.id = d.people_id
WHERE f.score >= 8