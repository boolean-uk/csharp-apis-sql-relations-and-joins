CREATE TABLE people
(
    id         SERIAL PRIMARY KEY,
    name       VARCHAR(255) NOT NULL,
    email      VARCHAR(255),
    dob        DATE,
    country_id INTEGER REFERENCES countries (id)
);

CREATE TABLE film_cast
(
    film_id   INTEGER REFERENCES film (id),
    person_id INTEGER REFERENCES people (id),
    is_star   BOOLEAN DEFAULT FALSE,
    PRIMARY KEY (film_id, person_id)
);

ALTER TABLE film
    DROP COLUMN star_id;
ALTER TABLE film
    DROP COLUMN writer_id;
ALTER TABLE film
    DROP COLUMN director_id;

DROP TABLE IF EXISTS director;
DROP TABLE IF EXISTS writer;
DROP TABLE IF EXISTS star;

ALTER TABLE film
    ADD COLUMN writer_id INTEGER REFERENCES people (id);
ALTER TABLE film
    ADD COLUMN director_id INTEGER REFERENCES people (id);

INSERT INTO people (id, name, country_id)
VALUES (1, 'Stanley Kubrick', 1);
INSERT INTO people (id, name, country_id)
VALUES (2, 'George Lucas', 1);
INSERT INTO people (id, name, country_id)
VALUES (3, 'Robert Mulligan', 1);
INSERT INTO people (id, name, country_id)
VALUES (4, 'James Cameron', 2);
INSERT INTO people (id, name, country_id)
VALUES (5, 'David Lean', 3);
INSERT INTO people (id, name, country_id)
VALUES (6, 'Anthony Mann', 1);
INSERT INTO people (id, name, country_id)
VALUES (7, 'Theodoros Angelopoulos', 4);
INSERT INTO people (id, name, country_id)
VALUES (8, 'Paul Verhoeven', 5);
INSERT INTO people (id, name, country_id)
VALUES (9, 'Krzysztof Kieslowski', 6);
INSERT INTO people (id, name, country_id)
VALUES (10, 'Jean-Paul Rappeneau', 7);

INSERT INTO people (id, name, email)
VALUES (11, 'Arthur C Clarke', 'arthur@clarke.com');
INSERT INTO people (id, name, email)
VALUES (12, 'George Lucas', 'george@email.com');
INSERT INTO people (id, name, email)
VALUES (13, 'Harper Lee', 'harper@lee.com');
INSERT INTO people (id, name, email)
VALUES (14, 'James Cameron', 'james@cameron.com');
INSERT INTO people (id, name, email)
VALUES (15, 'Boris Pasternak', 'boris@boris.com');
INSERT INTO people (id, name, email)
VALUES (16, 'Frederick Frank', 'fred@frank.com');
INSERT INTO people (id, name, email)
VALUES (17, 'Theodoros Angelopoulos', 'theo@angelopoulos.com');
INSERT INTO people (id, name, email)
VALUES (18, 'Erik Hazelhoff Roelfzema', 'erik@roelfzema.com');
INSERT INTO people (id, name, email)
VALUES (19, 'Krzysztof Kieslowski', 'email@email.com');
INSERT INTO people (id, name, email)
VALUES (20, 'Edmond Rostand', 'edmond@rostand.com');

INSERT INTO people (id, name, dob)
VALUES (21, 'Keir Dullea', '1936-05-30');
INSERT INTO people (id, name, dob)
VALUES (22, 'Mark Hamill', '1951-09-25');
INSERT INTO people (id, name, dob)
VALUES (23, 'Gregory Peck', '1916-09-25');
INSERT INTO people (id, name, dob)
VALUES (24, 'Leonardo DiCaprio', '1974-11-11');
INSERT INTO people (id, name, dob)
VALUES (25, 'Julie Christie', '1940-04-14');
INSERT INTO people (id, name, dob)
VALUES (26, 'Charlton Heston', '1923-10-04');
INSERT INTO people (id, name, dob)
VALUES (27, 'Manos Katrakis', '1908-08-14');
INSERT INTO people (id, name, dob)
VALUES (28, 'Rutger Hauer', '1944-01-23');
INSERT INTO people (id, name, dob)
VALUES (29, 'Juliette Binoche', '1964-03-09');
INSERT INTO people (id, name, dob)
VALUES (30, 'Gerard Depardieu', '1948-12-27');

-- Some additional actors
INSERT INTO people (id, name, dob)
VALUES (31, 'The Cat', '2020-07-13');

INSERT INTO film_cast (film_id, person_id, is_star)
VALUES (1, 21, TRUE);
INSERT INTO film_cast (film_id, person_id, is_star)
VALUES (2, 22, TRUE);
INSERT INTO film_cast (film_id, person_id, is_star)
VALUES (3, 23, TRUE);
INSERT INTO film_cast (film_id, person_id, is_star)
VALUES (4, 24, TRUE);
INSERT INTO film_cast (film_id, person_id, is_star)
VALUES (5, 25, TRUE);
INSERT INTO film_cast (film_id, person_id, is_star)
VALUES (6, 26, TRUE);
INSERT INTO film_cast (film_id, person_id, is_star)
VALUES (7, 27, TRUE);
INSERT INTO film_cast (film_id, person_id, is_star)
VALUES (8, 28, TRUE);
INSERT INTO film_cast (film_id, person_id, is_star)
VALUES (9, 29, TRUE);
INSERT INTO film_cast (film_id, person_id, is_star)
VALUES (10, 30, TRUE);

INSERT INTO film_cast (film_id, person_id, is_star)
VALUES (1, 31, FALSE);

UPDATE film
SET director_id = 1
WHERE id = 1;
UPDATE film
SET director_id = 2
WHERE id = 2;
UPDATE film
SET director_id = 3
WHERE id = 3;
UPDATE film
SET director_id = 4
WHERE id = 4;
UPDATE film
SET director_id = 5
WHERE id = 5;
UPDATE film
SET director_id = 6
WHERE id = 6;
UPDATE film
SET director_id = 7
WHERE id = 7;
UPDATE film
SET director_id = 8
WHERE id = 8;
UPDATE film
SET director_id = 9
WHERE id = 9;
UPDATE film
SET director_id = 10
WHERE id = 10;

UPDATE film
SET writer_id = 11
WHERE id = 1;
UPDATE film
SET writer_id = 12
WHERE id = 2;
UPDATE film
SET writer_id = 13
WHERE id = 3;
UPDATE film
SET writer_id = 14
WHERE id = 4;
UPDATE film
SET writer_id = 15
WHERE id = 5;
UPDATE film
SET writer_id = 16
WHERE id = 6;
UPDATE film
SET writer_id = 17
WHERE id = 7;
UPDATE film
SET writer_id = 18
WHERE id = 8;
UPDATE film
SET writer_id = 19
WHERE id = 9;
UPDATE film
SET writer_id = 20
WHERE id = 10;
