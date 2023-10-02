-- 6. Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.

-- i. Show movies whose star DOB is greater than 1950
SELECT f.title, s."name" AS "star", s.dob AS "star dob"
FROM films f
LEFT JOIN stars s ON f.starid_fk = s.id
WHERE EXTRACT(YEAR FROM s.dob) > 1950;

-- ii. Show movies whose writer email has the form ...@email.com
SELECT f.title, w."name" AS "writer", w.email AS "writer email"
FROM films f
LEFT JOIN writers w ON f.writerid_fk = w.id
WHERE w.email LIKE '%@email.com';

-- iii. Show all data for all movies displayed in the initial table in README.md
SELECT f.id AS "ID", f.title AS "Title", d."name" AS "Director", d.country AS "Director Country", s."name" AS "Star", s.dob AS "Star DOB", w."name" AS "Writer", w.email AS "Writer Email", f.release_year AS "Year", f.genre AS "Genre", f.score AS "Score"
FROM films f
LEFT JOIN directors d ON f.directorid_fk = d.id
LEFT JOIN stars s ON f.starid_fk = s.id
LEFT JOIN writers w ON f.writerid_fk = w.id;

-- iv. Show the title of films where the director is from the USA and the genre is Science Fiction
SELECT f.title
FROM films f
LEFT JOIN directors d ON f.directorid_fk = d.id
WHERE d.country = 'USA' and f.genre = 'Science Fiction';

-- v. Show only those films where the writer and the director are the same person and score is greater than 6
SELECT f.title, f.score
FROM films f
LEFT JOIN directors d ON f.directorid_fk = d.id
LEFT JOIN writers w ON f.writerid_fk = w.id
WHERE d."name" = w."name" and f.score > 6;
