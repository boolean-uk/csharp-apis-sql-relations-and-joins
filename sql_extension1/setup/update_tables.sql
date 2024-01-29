CREATE TABLE people(
	id SERIAL PRIMARY KEY,
  fullname VARCHAR(100)
);

INSERT INTO people (fullname)
SELECT full_name FROM directors;

INSERT INTO people (fullname)
SELECT full_name FROM stars;

INSERT INTO people (fullname)
SELECT full_name FROM writers;

ALTER TABLE directors
ADD COLUMN person_id INT REFERENCES people(id);

UPDATE directors
SET person_id = people.id
FROM people
WHERE directors.full_name = people.fullname;

ALTER TABLE stars
ADD COLUMN person_id INT REFERENCES people(id);

UPDATE stars
SET person_id = people.id
FROM people
WHERE stars.full_name = people.fullname;

ALTER TABLE writers
ADD COLUMN person_id INT REFERENCES people(id);

UPDATE writers
SET person_id = people.id
FROM people
WHERE writers.full_name = people.fullname;

ALTER TABLE directors
DROP COLUMN full_name;

ALTER TABLE stars
DROP COLUMN full_name;

ALTER TABLE writers
DROP COLUMN full_name;