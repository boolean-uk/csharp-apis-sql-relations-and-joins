-- Show the title and director name for all films
SELECT f.title, d.name FROM exercise_sql.films f INNER JOIN exercise_sql.director d ON d.id = f.director_fk;

-- Show the title, director and star name for all films
SELECT f.title, d.name AS "Director", s.name AS "Star" FROM exercise_sql.films f 
INNER JOIN exercise_sql.director d ON d.id = f.director_fk
INNER JOIN exercise_sql.star s ON s.id = f.star_fk;

-- Show the title of films where the director is from the USA
SELECT f.title FROM exercise_sql.films f LEFT JOIN exercise_sql.director d ON d.id = f.director_fk
WHERE d.country = 'USA';
;
-- Show only those films where the writer and the director are the same person
SELECT f.title FROM exercise_sql.films f 
LEFT JOIN exercise_sql.director d ON d.id = f.director_fk
LEFT JOIN exercise_sql.writer w ON w.id = f.star_fk
WHERE w.name = d.name;

-- Show directors and film titles for films with a score of 8 or higher
SELECT f.title, d.name FROM exercise_sql.films f INNER JOIN exercise_sql.director d ON d.id = f.director_fk
WHERE f.score >= 8;

-- Show stars and film titles for stars with films with a score of 9 or higher
SELECT s.name, f.title FROM exercise_sql.films f INNER JOIN exercise_sql.star s ON s.id = f.star_fk
WHERE f.score >= 9;

-- Show stars and film titles for stars with films with a score of 5 or lower
SELECT s.name, f.title FROM exercise_sql.films f INNER JOIN exercise_sql.star s ON s.id = f.star_fk
WHERE f.score <= 5;

--Show writers and film titles for writers where the name starts with a specified letter
SELECT w.name, f.title FROM exercise_sql.films f INNER JOIN exercise_sql.writer w ON w.id = f.writer_fk
WHERE w.name LIKE 'A%';

--Show stars  and film titles for stars who are older than a specified date
SELECT s.name, f.title FROM exercise_sql.films f INNER JOIN exercise_sql.star s ON s.id = f.star_fk
WHERE s.dob < '1950/01/01';