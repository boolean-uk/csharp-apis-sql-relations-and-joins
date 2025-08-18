-- Core tasks 

--1. Show the title and director name for all films
SELECT f.title, d.directorname FROM film f
LEFT JOIN director d ON d.id=f.director_fk

--2. Show the title, director and star name for all films
SELECT f.title, d.directorname, s.name FROM film f
LEFT JOIN director d ON d.id = f.director_fk
LEFT JOIN star s ON s.id = f.star_fk

--3. Show the title of films where the director is from the USA
SELECT f.title FROM film f
LEFT JOIN director d ON d.id = f.director_fk
WHERE d.directorcountry='USA'

--4. Show only those films where the writer and the director are the same person
SELECT f.title FROM film f
LEFT JOIN director d ON d.id = f.director_fk
LEFT JOIN writer w ON w.id = f.writer_fk
WHERE w.writername = d.directorname

--5. Show directors and film titles for films with a score of 8 or higher
SELECT d.directorname, f.title FROM film f
LEFT JOIN director d ON d.id = f.director_fk
WHERE f.score > 7

--6. Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.
SELECT d.directorname, f.title FROM film f
LEFT JOIN director d ON d.id = f.director_fk
WHERE f.year > 1960

SELECT d.directorname, f.title FROM film f
LEFT JOIN director d ON d.id = f.director_fk
WHERE d.directorcountry='UK' 

SELECT d.directorname, f.title FROM film f
LEFT JOIN director d ON d.id = f.director_fk
WHERE f.score > 7

SELECT d.directorname, f.title FROM film f
LEFT JOIN director d ON d.id = f.director_fk
WHERE f.score > 7 AND f.genre='Drama'

SELECT s.name, f.title FROM film f
LEFT JOIN star s ON s.id = f.star_fk
WHERE f.score > 7 AND s.stordob > '1950-01-01'

