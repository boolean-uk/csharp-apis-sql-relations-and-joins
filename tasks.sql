-- Queries are written twice, where the second query is refactored following the extension changes

-- Show the title and director name for all films
SELECT f."title", d."name" FROM films f
JOIN directors d ON f.directorid = d.directorid;

SELECT f."title", p."name" FROM films_two f
JOIN persons p ON f.directorid = p.personid;

-- Show the title, director and star name for all films
SELECT f."title", d."name", s."name" FROM films f
JOIN directors d ON f.directorid = d.directorid
JOIN stars s ON f.starid = s.starid;

SELECT f."title", p."name", p2."name" FROM films_two f
JOIN persons p ON f.directorid = p.personid
JOIN persons p2 ON f.starid = p2.personid;

-- Show the title of films where the director is from the USA
SELECT f.title FROM films f
JOIN directors d ON f.directorid = d.directorid
WHERE d.country = 'USA';

SELECT f.title FROM films_two f
JOIN persons p ON f.directorid = p.personid
WHERE p.country = 'USA';

-- Show only those films where the writer and the director are the same person
SELECT f.* FROM films f
JOIN directors d ON f.directorid = d.directorid
JOIN writers w ON f.writerid = w.writerid
WHERE d."name" = w."name";

SELECT f.* FROM films_two f
JOIN persons p ON f.directorid = p.personid
JOIN persons p2 ON f.writerid = p2.personid
WHERE p."name" = p2."name";

-- Show directors and film titles for films with a score of 8 or higher
SELECT d."name", f.title FROM films f
JOIN directors d ON f.directorid = d.directorid
WHERE f.score >= 8;

SELECT p."name", f.title FROM films_two f
JOIN persons p ON f.directorid = p.personid
WHERE f.score >= 8;

-- Extra queries

-- 1. Show the titles and genres of films along with the names of their stars
SELECT f.title, f.genre, s."name" from films f
JOIN stars s ON f.starid = s.starid;

SELECT f.title, f.genre, p."name" from films_two f
JOIN persons p ON f.starid = p.personid;

-- 2. Display the names of writers and the titles of films they have written.
SELECT d."name", f.title from directors d
JOIN films f ON d.directorid = f.directorid;

SELECT p."name", f.title from persons p
JOIN films_two f ON p.personid = f.writerid;

-- 3. List the names of directors along with the titles of their films released before the year 1970
SELECT d."name", f.title from directors d
JOIN films f ON d.directorid = f.directorid
WHERE f."year" < 1970;

SELECT p."name", f.title from persons p
JOIN films_two f ON p.personid = f.directorid
WHERE f."year" < 1970;

-- 4. Show the title, genre, and score of films where the star's date of birth is before 1980
SELECT f.title, f.genre, f.score FROM films f
JOIN stars s ON f.starid = s.starid
WHERE EXTRACT(YEAR FROM s.dateofbirth) < 1980;

SELECT f.title, f.genre, f.score FROM films_two f
JOIN persons p ON f.starid = p.personid
WHERE EXTRACT(YEAR FROM p.dateofbirth) < 1980;

-- 5. Retrieve the names of stars who have worked with a director from the USA
SELECT s."name" FROM stars s
JOIN films f ON s.starid = f.starid
JOIN directors d ON s.starid = d.directorid
WHERE d.country = 'USA';

SELECT p."name" FROM persons p
JOIN films_two f ON p.personid = f.starid
JOIN persons p2 ON f.directorid = p2.personid
WHERE p2.country = 'USA';