/*
## Extension Task 2

1. Add a `Cast` table that links Films to Actors (ie the Cast table contains details of all of the Actors in addition to the Star who appear in the Film).
2. You can either add some more people as actors (these can be real actors or just made up names) or just reuse all of the existing people.
*/
-- Create Casts table
CREATE TABLE casts (
    cast_id SERIAL PRIMARY KEY,
    film_id INTEGER REFERENCES films(film_id),
    person_id INTEGER REFERENCES people(person_id)
);


-- Insert data into Casts table
INSERT INTO casts (film_id, person_id) VALUES
    (1, (SELECT person_id FROM people WHERE person_name = 'Keir Dullea')),
    (1, (SELECT person_id FROM people WHERE person_name = 'Stanley Kubrick')), 
    (2, (SELECT person_id FROM people WHERE person_name = 'Mark Hamill')),
    (2, (SELECT person_id FROM people WHERE person_name = 'George Lucas')), 
    (3, (SELECT person_id FROM people WHERE person_name = 'Gregory Peck')),
    (3, (SELECT person_id FROM people WHERE person_name = 'Robert Mulligan'));

-- List all movies with their directors, stars, and writers:
SELECT films.title, director.person_name AS director, star.person_name AS star, writer.person_name AS writer, casts.person_id
FROM films
JOIN directors ON films.director_id = directors.director_id
JOIN stars ON films.star_id = stars.star_id
JOIN writers ON films.writer_id = writers.writer_id
JOIN casts ON films.film_id = casts.film_id
JOIN people AS director ON directors.person_id = director.person_id
JOIN people AS star ON stars.person_id = star.person_id
JOIN people AS writer ON writers.person_id = writer.person_id
JOIN people AS actor ON casts.person_id = actor.person_id;
