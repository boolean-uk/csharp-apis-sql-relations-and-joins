SELECT movies.title, directors.name as director_name FROM movies
INNER JOIN directors ON directors.id = movies.director_id;

SELECT movies.title, directors.name as director_name, stars.name as star_name FROM movies
INNER JOIN directors ON directors.id = movies.director_id
INNER JOIN stars ON stars.id = movies.star_id;

SELECT movies.title FROM movies
INNER JOIN directors ON directors.id = movies.director_id
WHERE directors.country = 'USA';

SELECT movies.* FROM movies
INNER JOIN writers ON writers.id = movies.writer_id
INNER JOIN directors ON directors.id = movies.director_id
WHERE writers."name" = directors."name";

SELECT directors."name", movies.title FROM movies
INNER JOIN directors ON directors.id = movies.director_id
WHERE movies.score >= 8;

SELECT directors."name", stars."name", movies.title FROM movies
INNER JOIN directors ON directors.id = movies.director_id
INNER JOIN stars ON stars.id = movies.star_id
WHERE movies.genre LIKE '%Science%';

SELECT stars."name" FROM movies
INNER JOIN stars ON stars.id = movies.star_id
WHERE movies.genre = 'Romance';

SELECT stars."name" FROM stars
WHERE stars.date_of_birth < '1990-01-01';

SELECT stars."name", writers."name" FROM movies
INNER JOIN stars ON stars.id = movies.star_id
INNER JOIN writers ON writers.id = movies.writer_id
WHERE stars."name" = writers."name";

SELECT writers."name", writers.email FROM writers
WHERE writers.email LIKE '%email.com%';