--1
SELECT m.title, d.name FROM movies m
INNER JOIN directors d ON m.directorid = d.directorid
WHERE m.year > 1990

--2
SELECT m.title, s.name, s.dob FROM movies m
INNER JOIN stars s ON s.starid = m.starid
WHERE s.dob > '1950-01-01'

--3
SELECT m.title, m.genre FROM movies m
INNER JOIN writers w ON w.writerid = m.movieid
WHERE w.name = 'Harper Lee'

--4
SELECT s.name FROM stars s
INNER JOIN movies m ON s.starid = m.starid
WHERE m.score < 8

--5
SELECT w.email FROM writers w
INNER JOIN movies m ON w.writerid = m.writerid
INNER JOIN directors d ON m.directorid = d.directorid
WHERE d.country = 'USA'