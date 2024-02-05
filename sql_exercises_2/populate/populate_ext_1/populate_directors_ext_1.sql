INSERT INTO directors (fk_person_id, country)
SELECT person_id, 'USA'
FROM person WHERE person.name LIKE 'Stanley Kubrick';

INSERT INTO directors (fk_person_id, country)
SELECT person_id, 'USA'
FROM person WHERE person.name LIKE 'George Lucas';

INSERT INTO directors (fk_person_id, country)
SELECT person_id, 'USA'
FROM person WHERE person.name LIKE 'Robert Mulligan';

INSERT INTO directors (fk_person_id, country)
SELECT person_id, 'Canada'
FROM person WHERE person.name LIKE 'James Cameron';

INSERT INTO directors (fk_person_id, country)
SELECT person_id, 'UK'
FROM person WHERE person.name LIKE 'David Lean';

INSERT INTO directors (fk_person_id, country)
SELECT person_id, 'USA'
FROM person WHERE person.name LIKE 'Anthony Mann';

INSERT INTO directors (fk_person_id, country)
SELECT person_id, 'Greece'
FROM person WHERE person.name LIKE 'Theodoros Angelopoulos';

INSERT INTO directors (fk_person_id, country)
SELECT person_id, 'Netherlands'
FROM person WHERE person.name LIKE 'Paul Verhoeven';

INSERT INTO directors (fk_person_id, country)
SELECT person_id, 'Poland'
FROM person WHERE person.name LIKE 'Krzysztof Kieslowski';

INSERT INTO directors (fk_person_id, country)
SELECT person_id, 'France'
FROM person WHERE person.name LIKE 'Jean-Paul Rappeneau';