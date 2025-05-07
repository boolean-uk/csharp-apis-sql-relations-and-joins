--Show the title and director name for all films
SELECT title, director_name FROM films INNER JOIN directors ON films.director_id = directors.director_id;

--Show the title, director and star name for all films
SELECT title, directors, star_name FROM films INNER JOIN directors ON films.director_id = directors.director_id INNER JOIN stars ON films.star_id = stars.star_id;

--Show the title of films where the director is from the USA
SELECT title FROM films INNER JOIN directors ON films.director_id = directors.director_id WHERE directors.country = 'USA';

--Show only those films where the writer and the director are the same person
SELECT * FROM films INNER JOIN directors ON films.director_id = directors.director_id INNER JOIN writers ON films.writer_id = writers.writer_id WHERE directors.director_name = writers.writer_name;

--Show directors and film titles for films with a score of 8 or higher
SELECT directors, title FROM films INNER JOIN directors ON films.director_id = directors.director_id WHERE score >= 8

--Show writers for films with "email" in their email.
SELECT writers FROM films INNER JOIN writers ON films.writer_id = writers.writer_id WHERE writers.email LIKE '%email%';

--Show writers for films with "email" at the start of their email.
SELECT writers FROM films INNER JOIN writers ON films.writer_id = writers.writer_id WHERE writers.email LIKE 'email%';

--Show writers for films with "email.com" at the end of their email.
SELECT writers FROM films INNER JOIN writers ON films.writer_id = writers.writer_id WHERE writers.email LIKE '%email.com';

--Show stars for films in order of their birth year ascending
SELECT stars FROM films INNER JOIN stars ON films.star_id = stars.star_id ORDER BY date_of_birth ASC

--Show stars for films in order of their birth year descending
SELECT stars FROM films INNER JOIN stars ON films.star_id = stars.star_id ORDER BY date_of_birth DESC


