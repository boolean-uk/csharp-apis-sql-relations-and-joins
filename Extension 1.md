
-- Create a new 'people' table:

--CREATE TABLE people (
--    id SERIAL PRIMARY KEY,
--    name VARCHAR(30)
--);


--insert star names into people:

--INSERT INTO people (name) VALUES ('Keir Dullea'), ('Mark Hamill'), ('Gregory Peck'), ('Leonardi DiCaprio'), 
--('Julie Christie'), ('Charlton Heston'), ('Manos Katrakis'), ('Rutger Hauer'), ('Juliette Binoche'), 
--('Gerard Depardieu');

--insert writer names into people:
--INSERT INTO people (name) VALUES ('Arthur C Clarke'), ('George Lucas'), ('Harper Lee'),
--('James Cameron'), ('Boris Pasternak'), ('Frederick Frank'), ('Theodoros Angelopoulos'),
--('Erik Hazelhoff Roelfzema'), ('Krzysztof Kieslowsk'), ('Edmond Rostand');

--Insert director names into people :
--INSERT INTO people (name) VALUES ('Stanley Kubrick'), ('George Lucas'), 
--('Robert Mulligan'), ('James Cameron'), ('David Lean'), 
--('Anthony Mann'), ('Theodoros Angelopoulos'), ('Paul Verhoeven'),
--('Krzysztof Kieslowski'), ('Jean-Paul Rappeneau');


-- Update the 'star' table to use the 'people' table:
--ALTER TABLE star
--ADD COLUMN people_id INT REFERENCES people(id) ON DELETE CASCADE;

-- Update the 'director' table to use the 'people' table:
--ALTER TABLE director
--ADD COLUMN people_id INT REFERENCES people(id) ON DELETE CASCADE;

-- Update the 'writer' table to use the 'people' table:
--ALTER TABLE writer
--ADD COLUMN people_id INT REFERENCES people(id) ON DELETE CASCADE;

-- Update the 'film' table to use the 'people' table for writer, directors and stars:
--ALTER TABLE film
--ADD COLUMN director_people_id INT REFERENCES people(id) ON DELETE CASCADE,
--ADD COLUMN star_people_id INT REFERENCES people(id) ON DELETE CASCADE, 
--ADD COLUMN writer_people_id INT REFERENCES people(id) ON DELETE CASCADE;

--UPDATE film
--SET director_people_id = (
--    SELECT id FROM people
--    WHERE people.name = (
--        SELECT name FROM director WHERE director.id = film.director_id) LIMIT 1
--),
--star_people_id = (
--    SELECT id FROM people
--    WHERE people.name = (
--        SELECT name FROM star WHERE star.id = film.star_id) LIMIT 1
--),
--writer_people_id = (
--    SELECT id FROM people
--    WHERE people.name = (
--        SELECT name FROM writer WHERE writer.id = film.writer_id) LIMIT 1
--);

-- Update the data in the 'star' and 'director' tables to reference the 'people' table
--UPDATE star
--SET people_id = (
--    SELECT id FROM people WHERE people.name = star.name LIMIT 1
--);

--UPDATE director
--SET people_id = (
--    SELECT id FROM people WHERE people.name = director.name LIMIT 1
--);

--UPDATE writer
--SET people_id = (
--    SELECT id FROM people WHERE people.name = writer.name LIMIT 1
--);





| id | title                 | year | director_id | star_id | writer_id | genre           | score | director_people_id | star_people_id | writer_people_id |
| -- | --------------------- | ---- | ----------- | ------- | --------- | --------------- | ----- | ------------------ | -------------- | ---------------- |
| 1  | 2001: A Space Odyssey | 1968 | 1           | 1       | 1         | Science Fiction | 10    | 21                 | 1              | 11               |
| 2  | Star Wars: A New Hope | 1977 | 2           | 2       | 2         | Science Fiction | 7     | 12                 | 2              | 12               |
| 3  | To Kill A Mockingbird | 1962 | 3           | 3       | 3         | Drama           | 10    | 23                 | 3              | 13               |
| 4  | Titanic               | 1997 | 4           | 4       | 4         | Romance         | 5     | 14                 | 4              | 14               |
| 5  | Dr Zhivago            | 1965 | 5           | 5       | 5         | Historical      | 8     | 25                 | 5              | 15               |
| 6  | El Cid                | 1961 | 6           | 6       | 6         | Historical      | 6     | 26                 | 6              | 16               |
| 7  | Voyage to Cythera     | 1984 | 7           | 7       | 7         | Drama           | 8     | 17                 | 7              | 17               |
| 8  | Soldier of Orange     | 1977 | 8           | 8       | 8         | Thriller        | 8     | 28                 | 8              | 18               |
| 9  | Three Colours: Blue   | 1993 | 9           | 9       | 9         | Drama           | 8     | 29                 | 9              | 19               |
| 10 | Cyrano de Bergerac    | 1990 | 10          | 10      | 10        | Historical      | 9     | 30                 | 10             | 20               |





| id | name                     |
| -- | ------------------------ |
| 1  | Keir Dullea              |
| 2  | Mark Hamill              |
| 3  | Gregory Peck             |
| 4  | Leonardi DiCaprio        |
| 5  | Julie Christie           |
| 6  | Charlton Heston          |
| 7  | Manos Katrakis           |
| 8  | Rutger Hauer             |
| 9  | Juliette Binoche         |
| 10 | Gerard Depardieu         |
| 11 | Arthur C Clarke          |
| 12 | George Lucas             |
| 13 | Harper Lee               |
| 14 | James Cameron            |
| 15 | Boris Pasternak          |
| 16 | Frederick Frank          |
| 17 | Theodoros Angelopoulos   |
| 18 | Erik Hazelhoff Roelfzema |
| 19 | Krzysztof Kieslowsk      |
| 20 | Edmond Rostand           |
| 21 | Stanley Kubrick          |
| 22 | George Lucas             |
| 23 | Robert Mulligan          |
| 24 | James Cameron            |
| 25 | David Lean               |
| 26 | Anthony Mann             |
| 27 | Theodoros Angelopoulos   |
| 28 | Paul Verhoeven           |
| 29 | Krzysztof Kieslowski     |
| 30 | Jean-Paul Rappeneau      |