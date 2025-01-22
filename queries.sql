-- Show the title and director name for all films
SELECT f.title as FilmTitle, d.name as Director 
FROM film f
JOIN film_directed_by fdb ON fdb.film_id = f.id
JOIN person d ON fdb.person_id = d.id;

-- Show the title, director and star name for all films
SELECT f.title AS FilmTitle, d.name AS Director, s.name AS Star
FROM film f
JOIN film_directed_by fdb ON fdb.film_id = f.id
JOIN person d ON fdb.person_id = d.id
JOIN cast_members cm ON cm.film_id = f.id
JOIN person s ON cm.person_id = s.id
WHERE cm.isStar = TRUE;

-- Show the title of films where the director is from the USA
SELECT f.title as FilmTitle, d.country as DirectorCountry
FROM film f
JOIN film_directed_by fdb ON fdb.film_id = f.id
JOIN person d ON fdb.person_id = d.id
WHERE d.country = 'USA';

-- Show only those films where the writer and the director are the same person
SELECT f.title as FilmTitle, w.name as Writer, d.name as Director
FROM film f
JOIN film_written_by fwb ON fwb.film_id = f.id
JOIN person w ON fwb.person_id = w.id
JOIN film_directed_by fdb ON fdb.film_id = f.id
JOIN person d ON fdb.person_id = d.id
WHERE d.id = w.id;

-- Show directors and film titles for films with a score of 8 or higher
SELECT d.name as Director, f.title as FilmTitle, f.score as Score 
FROM film f
JOIN film_directed_by fdb ON fdb.film_id = f.id
JOIN person d ON d.id = fdb.person_id
WHERE f.score > 7;

-- Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.

-- 1. Show all cast members from every film 
SELECT f.title as FilmTitle, a.name as Actor, cm.isStar as Star
FROM film f
JOIN cast_members cm ON cm.film_id = f.id
JOIN person a ON cm.person_id = a.id;

-- 2. Show all writers and number of films written
SELECT w.name AS Writer, COUNT(fwb.film_id) AS FilmsWritten
FROM film_written_by fwb
JOIN person w ON fwb.person_id = w.id
GROUP BY w.id, w.name
ORDER BY FilmsWritten DESC;

-- 3. Show all people and their roles
SELECT p.name AS Name, r.role_name as Role
FROM person p
INNER JOIN person_has_role phr ON p.id = phr.person_id
INNER JOIN roles r ON phr.roles_id = r.id
ORDER BY p.name ASC;

-- 4. Show film and star for all films
SELECT f.title AS FilmTitle, s.name AS Star
FROM film f
INNER JOIN cast_members cm ON cm.film_id = f.id
INNER JOIN person s ON s.id = cm.person_id WHERE cm.isstar = TRUE;

-- 5. Show film with director and director country ordered by country
SELECT f.title AS FilmTitle, d.name AS Director, d.country as DirectorCountry
FROM film f
INNER JOIN film_directed_by fdb ON fdb.film_id = f.id
INNER JOIN person d ON fdb.person_id = d.id
ORDER BY d.country;



