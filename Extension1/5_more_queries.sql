SELECT title, name FROM films
JOIN stars ON films.director_fk_id = stars.id
JOIN people ON stars.people_fk_id = people.id
WHERE stars.dob >= '01/01/1950';

SELECT title, name AS director_name FROM films
JOIN directors ON films.director_fk_id = directors.id
JOIN people ON directors.people_fk_id = people.id
WHERE released_year >= 1970;

SELECT title, name AS director_name FROM films
JOIN directors ON films.director_fk_id = directors.id
JOIN people ON directors.people_fk_id = people.id
WHERE genre = 'Science Fiction';

SELECT name AS star_name FROM films
JOIN stars ON films.director_fk_id = stars.id
JOIN people ON stars.people_fk_id = people.id
WHERE score >= 9;

SELECT name AS writer_name FROM films
JOIN writers ON films.director_fk_id = writers.id
JOIN people ON writers.people_fk_id = people.id
WHERE score <= 7;