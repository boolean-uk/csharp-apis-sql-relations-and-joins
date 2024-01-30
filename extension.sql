--create table: people
CREATE TABLE people (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

--insert all people that occurs in other tables, and avoid duplicates
INSERT INTO people (name)
SELECT DISTINCT stars.name
FROM stars;

INSERT INTO people (name)
SELECT DISTINCT name
FROM directors;

INSERT INTO people (name)
SELECT DISTINCT name
FROM writers
WHERE name NOT IN (SELECT name from people);

--update all tables to have people_id, and insert values accordingly
ALTER TABLE stars
ADD COLUMN people_id INT REFERENCES people(id);

UPDATE stars
SET people_id = people.id
FROM people
WHERE stars.name = people.name;

ALTER TABLE directors
ADD COLUMN people_id INT REFERENCES people(id);

UPDATE directors
SET people_id = people.id
FROM people
WHERE directors.name = people.name;

ALTER TABLE writers
ADD COLUMN people_id INT REFERENCES people(id);

UPDATE writers
SET people_id = people.id
FROM people
WHERE writers.name = people.name;

--added cast table, and added existing peoples from peoples tables as actors:

CREATE TABLE movie_cast (
    id SERIAL PRIMARY KEY,
    film_id INT REFERENCES films(id),
    actor_id INT REFERENCES people(id)
);

INSERT INTO movie_cast (film_id, actor_id)
SELECT DISTINCT films.id AS film_id, people.id AS actor_id
FROM films
JOIN stars ON films.star_id = stars.id
JOIN people ON stars.name = people.name;

INSERT INTO movie_cast (film_id, actor_id)
SELECT DISTINCT id AS film_id, ROW_NUMBER() OVER () + 10 AS actor_id
FROM films;

SELECT films.title, people.name
FROM movie_cast
JOIN films ON movie_cast.film_id = films.id
JOIN people ON movie_cast.actor_id = people.id;