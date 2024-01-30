SELECT title FROM films
JOIN stars ON films.director_fk_id = stars.id
WHERE dob >= '01/01/1950';

SELECT title, name AS director_name FROM films
JOIN directors ON films.director_fk_id = directors.id
WHERE released_year >= 1970;

SELECT name AS director_name FROM films
JOIN directors ON films.director_fk_id = directors.id
WHERE genre = 'Science Fiction';

SELECT name AS star_name FROM films
JOIN stars ON films.director_fk_id = stars.id
WHERE score >= 9;

SELECT name AS writer_name FROM films
JOIN writers ON films.director_fk_id = writers.id
WHERE score <= 7;