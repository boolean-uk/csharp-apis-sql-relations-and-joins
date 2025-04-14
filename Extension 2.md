


--Create a new table with foreign key references to the film and people tables;
--CREATE TABLE filmcast (
--    id SERIAL PRIMARY KEY,
--    film_id INT REFERENCES film(id) ON DELETE CASCADE,
--    actor_id INT REFERENCES people(id) ON DELETE CASCADE
--);

-- Insert data into the 'cast' table;

--INSERT INTO filmcast (film_id, actor_id) VALUES
--    (1, 1),
--    (2, 2), 
--    (3, 3), 
--    (4, 4),
--    (5, 5), 
--    (6, 6),
--    (7, 7),
--    (8, 8), 
--    (9, 9),
--    (10, 10),
--    (1, 5),
--    (1, 6), 
--    (1, 7); 



this can then return the cast for 2001: A Space Odyssey, which has film_id 1:

--SELECT people.name AS actor_name, film.title AS film_name
--FROM filmcast
--JOIN people ON filmcast.actor_id = people.id
--JOIN film ON filmcast.film_id = film.id
--WHERE film.title = '2001: A Space Odyssey'; 

| actor_name      | film_name             |
| --------------- | --------------------- |
| Keir Dullea     | 2001: A Space Odyssey |
| Julie Christie  | 2001: A Space Odyssey |
| Charlton Heston | 2001: A Space Odyssey |
| Manos Katrakis  | 2001: A Space Odyssey |