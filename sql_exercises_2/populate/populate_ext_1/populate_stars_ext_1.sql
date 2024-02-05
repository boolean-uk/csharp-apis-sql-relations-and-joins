INSERT INTO stars (fk_person_id, born)
SELECT person_id, '1936-05-30'
FROM person WHERE person.name LIKE 'Keir Dullea';

INSERT INTO stars (fk_person_id, born)
SELECT person_id, '1951-09-25'
FROM person WHERE person.name LIKE 'Mark Hamill';

INSERT INTO stars (fk_person_id, born)
SELECT person_id, '1916-04-05'
FROM person WHERE person.name LIKE 'Gregory Peck';

INSERT INTO stars (fk_person_id, born)
SELECT person_id, '1974-11-11'
FROM person WHERE person.name LIKE 'Leonardo DiCaprio';

INSERT INTO stars (fk_person_id, born)
SELECT person_id, '1940-04-14'
FROM person WHERE person.name LIKE 'Julie Christie';

INSERT INTO stars (fk_person_id, born)
SELECT person_id, '1923-10-04'
FROM person WHERE person.name LIKE 'Charlton Heston';

INSERT INTO stars (fk_person_id, born)
SELECT person_id, '1908-08-14'
FROM person WHERE person.name LIKE 'Manos Katrakis';

INSERT INTO stars (fk_person_id, born)
SELECT person_id, '1944-01-23'
FROM person WHERE person.name LIKE 'Rutger Hauer';

INSERT INTO stars (fk_person_id, born)
SELECT person_id, '1964-03-09'
FROM person WHERE person.name LIKE 'Juliette Binoche';

INSERT INTO stars (fk_person_id, born)
SELECT person_id, '1948-12-27'
FROM person WHERE person.name LIKE 'Gerard Depardieu';
