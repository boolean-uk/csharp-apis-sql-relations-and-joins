-- I
SELECT title, directors.name as director FROM films
    JOIN directors ON films.director_id = directors.id;

-- II

SELECT title, directors.name as director, stars.name as star FROM films
    JOIN directors ON films.director_id = directors.id
    JOIN stars ON films.star_id = stars.id;

-- III

SELECT title, directors.name AS director, directors.country AS country
	FROM films
	JOIN directors ON films.director_id = directors.id
	WHERE directors.country = 'USA';

 -- IV
SELECT title, directors.name AS director, writers.name AS writer
	FROM films
    JOIN directors ON films.director_id = directors.id
    JOIN writers ON films.writer_id = writers.id
    WHERE writers.name = directors.name;

-- V

SELECT title, directors.name as director, score
	FROM films
    JOIN directors ON films.director_id = directors.id
    WHERE score >= 8;

-- VI

-- Show films and directors between 1965 and 1980
SELECT title, directors.name as director, year
	FROM films
    JOIN directors ON films.director_id = directors.id
    WHERE year BETWEEN 1965 AND 1980;

-- Show stars on movies rated 8 or higher
SELECT title, stars.name, score
	FROM films
	JOIN stars ON films.star_id = stars.id
    WHERE score >= 8;

-- Show directors from the genre Historical
SELECT title, directors.name, genre, score
	FROM films
    JOIN directors ON films.director_id = directors.id
    WHERE genre = 'Historical';

-- Show who wrote Star wars
SELECT title, writers.name as writer, genre, score
	FROM films
	JOIN writers ON films.writer_id = writers.id
    WHERE title LIKE '%Star Wars%';

-- Show the stars of the highest scored movies
SELECT title, stars.name as star, score
	FROM films
    JOIN stars ON films.star_id = stars.id
    WHERE score = 10;