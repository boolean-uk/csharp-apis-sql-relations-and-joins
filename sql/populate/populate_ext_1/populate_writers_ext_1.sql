
INSERT INTO writers (fk_person_id, email)
SELECT person_id, 'arthur@clarke.com'
FROM person WHERE person.name LIKE 'Arthur C Clarke';

INSERT INTO writers (fk_person_id, email)
SELECT person_id, 'george@email.com'
FROM person WHERE person.name LIKE 'George Lucas';

INSERT INTO writers (fk_person_id, email)
SELECT person_id, 'harper@lee.com'
FROM person WHERE person.name LIKE 'Harper Lee';

INSERT INTO writers (fk_person_id, email)
SELECT person_id, 'james@cameron.com'
FROM person WHERE person.name LIKE 'James Cameron';

INSERT INTO writers (fk_person_id, email)
SELECT person_id, 'boris@boris.com'
FROM person WHERE person.name LIKE 'Boris Pasternak';

INSERT INTO writers (fk_person_id, email)
SELECT person_id, 'fred@frank.com'
FROM person WHERE person.name LIKE 'Frederick Frank';

INSERT INTO writers (fk_person_id, email)
SELECT person_id, 'theo@angelopoulos.com'
FROM person WHERE person.name LIKE 'Theodoros Angelopoulos';

INSERT INTO writers (fk_person_id, email)
SELECT person_id, 'erik@roelfzema.com'
FROM person WHERE person.name LIKE 'Erik Hazelhoff Roelfzema';

INSERT INTO writers (fk_person_id, email)
SELECT person_id, 'email@email.com'
FROM person WHERE person.name LIKE 'Krzysztof Kieslowsk';

INSERT INTO writers (fk_person_id, email)
SELECT person_id, 'edmond@rostand.com'
FROM person WHERE person.name LIKE 'Edmond Rostand';