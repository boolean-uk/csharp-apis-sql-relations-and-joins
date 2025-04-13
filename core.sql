-- titles and directors
SELECT films.title, directors.name
FROM films
JOIN directors ON films.director_id = directors.id;

-- same as above + stars_name
SELECT films.title, directors.name, stars.name
FROM films
JOIN directors ON films.director_id = directors.id
JOIN stars ON films.star_id = stars.id;

--all films that have director from USA
SELECT films.title
FROM films
JOIN directors ON films.director_id = directors.id
WHERE directors.country = 'USA';

--all films with same director & writer
SELECT films.title
FROM films
JOIN directors ON films.director_id = directors.id
JOIN writers ON films.writer_id = writers.id
WHERE directors.name = writers.name;

--all films with score of 8 or higher
SELECT films.title, directors.name
FROM films
JOIN directors ON films.director_id = directors.id
WHERE films.score >= 8;


--all films with director, writer and stars
SELECT films.title, directors.name, writers.name, stars.name
FROM films
JOIN directors ON films.director_id = directors.id
JOIN writers ON films.writer_id = writers.id
JOIN stars ON films.star_id = stars.id;

--all films that have director not from USA
SELECT films.title
FROM films
JOIN directors ON films.director_id = directors.id
WHERE directors.country != 'USA';

--all films, director, score and star with rating in ascending order
SELECT films.title, directors.name, films.score, stars.name
FROM films
JOIN directors ON films.director_id = directors.id
JOIN stars ON films.star_id = stars.id 
ORDER BY films.score ASC;

--all films, directors, writers, stars, with title longer than 6 characters
SELECT films.title, directors.name, writers.name, stars.name
FROM films
JOIN directors ON films.director_id = directors.id
JOIN writers ON films.writer_id = writers.id
JOIN stars ON films.star_id = stars.id 
WHERE LENGTH(films.title) > 6;

--all films released before 1990
SELECT films.title, directors.name, writers.name, stars.name, films.relase_year
FROM films
JOIN directors ON films.director_id = directors.id
JOIN writers ON films.writer_id = writers.id
JOIN stars ON films.star_id = stars.id 
WHERE films.relase_year < 1990;