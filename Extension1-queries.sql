/*
The 5 main queries are tweaked to fit the new extension 1 tables.
*/
SELECT title, people.name AS director FROM films
LEFT JOIN director ON films.director_id = director.director_id
LEFT JOIN people ON director.people_id = people.people_id;

SELECT title, directors.name AS director, stars.name AS star FROM films
LEFT JOIN director ON films.director_id = director.director_id
LEFT JOIN star ON films.star_id = star.star_id
LEFT JOIN people directors ON director.people_id = directors.people_id
LEFT JOIN people stars ON star.people_id = stars.people_id;

SELECT title, people.name AS person_name FROM films
RIGHT JOIN director ON director.director_id = films.director_id
LEFT JOIN people ON people.people_id = director.people_id
WHERE director.country = 'USA';

SELECT title, dir.name AS "writer and director" FROM films
LEFT JOIN director ON films.director_id = director.director_id
LEFT JOIN writer ON films.writer_id = writer.writer_id
LEFT JOIN people dir ON director.people_id = dir.people_id
LEFT JOIN people wri ON writer.people_id = wri.people_id
WHERE dir.name = wri.name;

SELECT title, people.name AS director, score FROM films
LEFT JOIN director ON films.director_id = director.director_id
LEFT JOIN people ON director.people_id = people.people_id
WHERE score >= 8;
