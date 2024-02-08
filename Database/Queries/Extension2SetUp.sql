-- Creating a Cast table
CREATE TABLE cast (
    id SERIAL PRIMARY KEY,
    film_id INT REFERENCES films(id),
    person_id INT REFERENCES people(id)
);


-- Updating the data in the Cast table with the respective type
INSERT INTO cast (film_id, person_id) VALUES (1, 1);
INSERT INTO cast (film_id, person_id) VALUES (1, 2);
INSERT INTO cast (film_id, person_id) VALUES (1, 3);
INSERT INTO cast (film_id, person_id) VALUES (1, 4);
INSERT INTO cast (film_id, person_id) VALUES (1, 5);


-- Show cast
SELECT films.title AS "Name of the film",
people.name AS "Person name",
people.type AS "Person type"
FROM films
JOIN cast
ON films.id = cast.film_id
JOIN people
ON cast.person_id = people.id;
