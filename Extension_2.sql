-- Extension 2

-- Create a new table for film cast
CREATE TABLE film_cast (
  film_id   INT REFERENCES films(film_id),
  person_id INT REFERENCES people(person_id),
  PRIMARY KEY (film_id, person_id)
);

-- Add some actors
INSERT INTO people (full_name) VALUES
  ('Gary Lockwood'),
  ('Harrison Ford'),
  ('Carrie Fisher'),
  ('Alec Guinness'),
  ('Kate Winslet'),
  ('Omar Sharif'),
  ('Sophia Loren'),
  ('Jeroen Krabbé'),
  ('Benoît Régent'),
  ('Anne Brochet')


-- Insert actors into the film_cast table
INSERT INTO film_cast (film_id, person_id)
SELECT f.film_id, p.person_id FROM films f, people p
WHERE f.title='2001: A Space Odyssey' AND p.full_name IN ('Keir Dullea','Gary Lockwood');


INSERT INTO film_cast (film_id, person_id)
SELECT f.film_id, p.person_id FROM films f, people p
WHERE f.title='Star Wars: A New Hope' AND p.full_name IN ('Mark Hamill','Harrison Ford','Carrie Fisher','Alec Guinness');


INSERT INTO film_cast (film_id, person_id)
SELECT f.film_id, p.person_id FROM films f, people p
WHERE f.title='To Kill A Mockingbird' AND p.full_name IN ('Gregory Peck');


INSERT INTO film_cast (film_id, person_id)
SELECT f.film_id, p.person_id FROM films f, people p
WHERE f.title='Titanic' AND p.full_name IN ('Leonardo DiCaprio','Kate Winslet');


INSERT INTO film_cast (film_id, person_id)
SELECT f.film_id, p.person_id FROM films f, people p
WHERE f.title='Dr Zhivago' AND p.full_name IN ('Julie Christie','Omar Sharif');


INSERT INTO film_cast (film_id, person_id)
SELECT f.film_id, p.person_id FROM films f, people p
WHERE f.title='El Cid' AND p.full_name IN ('Charlton Heston','Sophia Loren');


INSERT INTO film_cast (film_id, person_id)
SELECT f.film_id, p.person_id FROM films f, people p
WHERE f.title='Voyage to Cythera' AND p.full_name IN ('Manos Katrakis');


INSERT INTO film_cast (film_id, person_id)
SELECT f.film_id, p.person_id FROM films f, people p
WHERE f.title='Soldier of Orange' AND p.full_name IN ('Rutger Hauer','Jeroen Krabbé');


INSERT INTO film_cast (film_id, person_id)
SELECT f.film_id, p.person_id FROM films f, people p
WHERE f.title='Three Colours: Blue' AND p.full_name IN ('Juliette Binoche','Benoît Régent');


INSERT INTO film_cast (film_id, person_id)
SELECT f.film_id, p.person_id FROM films f, people p
WHERE f.title='Cyrano de Bergerac' AND p.full_name IN ('Gerard Depardieu','Anne Brochet');


-- Show the full name of actors in the film 'El Cid'
SELECT p.full_name AS actor
FROM film_cast fc
INNER JOIN films  f ON f.film_id = fc.film_id
INNER JOIN people p ON p.person_id = fc.person_id
WHERE f.title = 'El Cid';