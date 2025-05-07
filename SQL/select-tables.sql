-- Show the title and director name for all films
SELECT title, directors.name as director 
FROM films 
LEFT JOIN directors ON films.director_id = directors.director_id;

-- Show the title, director and star name for all films
SELECT title, directors.name as director, stars.name as star
FROM films 
LEFT JOIN directors ON films.director_id = directors.director_id 
LEFT JOIN stars on films.star_id = stars.star_id;

-- Show the title of films where the director is from the USA
SELECT title
FROM films 
LEFT JOIN directors ON films.director_id = directors.director_id 
WHERE directors.country ILIKE 'USA';

-- Show only those films where the writer and the director are the same person
SELECT title
FROM films 
LEFT JOIN directors ON films.director_id = directors.director_id 
LEFT JOIN writers ON films.writer_id = writers.writer_id
WHERE directors.name = writers.name;

-- Show directors and film titles for films with a score of 8 or higher
SELECT title, directors.name as director 
FROM films 
LEFT JOIN directors ON films.director_id = directors.director_id
WHERE score <= 8;

-- Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.
SELECT title, release_year, directors.name as director 
FROM films 
INNER JOIN directors ON films.director_id = directors.director_id
WHERE release_year > 1990;

SELECT stars.name
FROM films 
RIGHT JOIN stars ON films.star_id = stars.star_id
WHERE genre ILIKE 'Historical';

SELECT title, directors."name" AS director, writers."name" AS writer, stars."name" AS star
FROM films 
INNER JOIN directors ON films.director_id = directors.director_id
INNER JOIN writers ON films.writer_id = writers.writer_id
INNER JOIN stars ON films.star_id = stars.star_id;

SELECT title, release_year, stars."name", stars.dob
FROM films 
FULL JOIN stars ON films.star_id = stars.star_id;

SELECT title, writers.email
FROM films 
INNER JOIN writers ON films.writer_id = writers.writer_id
WHERE genre ILIKE 'drama';