-- Show the title and director name for all films
SELECT title, people.name as director 
FROM films 
LEFT JOIN directors ON films.director_id = directors.director_id
LEFT JOIN people ON directors.people_id = people.people_id;

-- Show the title, director and star name for all films
SELECT title, d.name as director, s.name as star
FROM films 
LEFT JOIN directors ON films.director_id = directors.director_id 
LEFT JOIN people D ON directors.people_id = D.people_id 
LEFT JOIN stars on films.star_id = stars.star_id
LEFT JOIN people S ON stars.people_id = S.people_id;

-- Show the title of films where the director is from the USA
SELECT title
FROM films 
LEFT JOIN directors ON films.director_id = directors.director_id 
WHERE directors.country ILIKE 'USA';

-- Show only those films where the writer and the director are the same person
SELECT title , d.name as "writer and director"
FROM films
LEFT JOIN directors ON films.director_id = directors.director_id 
LEFT JOIN writers ON films.writer_id = writers.writer_id
LEFT JOIN people D ON directors.people_id = D.people_id 
LEFT JOIN people W ON writers.people_id = W.people_id
WHERE w.name = d.name;

-- Show directors and film titles for films with a score of 8 or higher
SELECT title, people.name as director 
FROM films 
LEFT JOIN directors ON films.director_id = directors.director_id
LEFT JOIN people ON directors.people_id = people.people_id
WHERE score <= 8;
