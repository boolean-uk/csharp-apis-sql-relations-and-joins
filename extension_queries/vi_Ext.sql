/* vi */
--1
SELECT m.title, p.name FROM movies m
INNER JOIN directors d ON m.directorid = d.directorid
INNER JOIN persons p ON p.personid = d.personid
WHERE m.year > 1990

--2
SELECT m.title, p.name, p.dob FROM movies m
INNER JOIN casts c ON c.movieid = m.movieid
INNER JOIN actors a ON a.actorid = c.actorid
INNER JOIN persons p ON p.personid = a.personid
WHERE p.dob > '1950-01-01'

--3
SELECT m.title, m.genre FROM movies m
INNER JOIN writers w ON w.writerid = m.movieid
JOIN persons p ON p.personid = w.personid
WHERE p.name = 'Harper Lee'

--4
SELECT p.name FROM persons p
INNER JOIN actors a ON a.personid = p.personid
INNER JOIN casts c ON c.actorid = a.actorid
INNER JOIN movies m ON c.movieid = m.movieid
WHERE m.score < 8

--5
SELECT w.email FROM writers w
INNER JOIN movies m ON w.writerid = m.writerid
INNER JOIN directors d ON m.directorid = d.directorid
WHERE d.country = 'USA'