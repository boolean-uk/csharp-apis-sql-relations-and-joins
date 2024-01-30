SELECT movies.title, persons."name" as director_name FROM movies
INNER JOIN directors ON directors.id = movies.director_id
INNER JOIN persons ON directors.person_id = persons.id;

SELECT movies.title, dir_person.name as director, star_person.name as star FROM movies
INNER JOIN directors ON directors.id = movies.director_id
INNER JOIN stars ON stars.id = movies.star_id
INNER JOIN persons dir_person ON dir_person.id = directors.person_id
INNER JOIN persons star_person ON star_person.id = stars.person_id;

SELECT movies.* FROM movies
INNER JOIN writers ON writers.id = movies.writer_id
INNER JOIN directors ON directors.id = movies.director_id
INNER JOIN persons dir_person ON dir_person.id = directors.person_id
INNER JOIN persons writer_person ON writer_person.id = writers.person_id
WHERE writer_person."name" = dir_person."name";

SELECT dir_person.name, movies.title FROM movies
INNER JOIN directors ON directors.id = movies.director_id
INNER JOIN persons dir_person ON directors.id = dir_person.id
WHERE movies.score >= 8;

SELECT dir_person."name", star_person."name", movies.title FROM movies
INNER JOIN directors ON directors.id = movies.director_id
INNER JOIN stars ON stars.id = movies.star_id
INNER JOIN persons dir_person ON dir_person.id = directors.person_id
INNER JOIN persons star_person ON star_person.id = stars.person_id
WHERE movies.genre LIKE '%Science%';

SELECT star_person."name" FROM movies
INNER JOIN stars ON stars.id = movies.star_id
INNER JOIN persons star_person ON stars.person_id = star_person.id
WHERE movies.genre = 'Romance';

SELECT persons."name" FROM stars
INNER JOIN persons ON stars.person_id = persons.id
WHERE stars.date_of_birth < '1990-01-01';

SELECT stars_person."name", writers_person."name" FROM movies
INNER JOIN stars ON stars.id = movies.star_id
INNER JOIN writers ON writers.id = movies.writer_id
INNER JOIN persons stars_person ON stars_person.id = stars.person_id
INNER JOIN persons writers_person ON writers_person.id = writers.person_id
WHERE stars_person."name" = writers_person."name";

SELECT persons."name", writers.email FROM writers
INNER JOIN persons ON persons.id = writers.person_id
WHERE writers.email LIKE '%email.com%';