--SELECT * FROM genres
--SELECT * FROM roles
--SELECT * FROM countries




/*
-- query i
SELECT m.title, p.name AS Director FROM movies m
LEFT JOIN people p ON p.id = m.director
*/


/*
--query ii
SELECT m.title, p.name AS Director, p2.name AS Star FROM movies m
LEFT JOIN people p ON p.id = m.director
LEFT JOIN people p2 ON p2.id = m.star
*/


/*
--query iii
SELECT m.title FROM movies m
LEFT JOIN people p ON p.id = m.director
LEFT JOIN countries c ON c.id = p.country
where c.country = 'USA'
*/


/*
--query iv
SELECT m.title FROM movies m
LEFT JOIN people p ON p.id = m.director
LEFT JOIN people p3 ON p3.id = m.writer
WHERE p."name" = p3."name"
*/


/*
--query v
SELECT m.title, p.name AS Director FROM movies m
LEFT JOIN people p ON p.id = m.director
WHERE m.score >= 8
*/


/*
--query vi
SELECT m.title, p2.name AS Star, p2.dob FROM movies m
LEFT JOIN people p2 ON p2.id = m.star
WHERE p2.dob > '1950-01-01'
*/

/*
--query vii
SELECT m.title, c.country, m.score FROM movies m
LEFT JOIN people p ON p.id = m.director
LEFT JOIN countries c ON c.id = p.country
WHERE m.score > 5
AND c.country != 'USA'
*/

/*
--query viii
SELECT m.title, g.genre FROM movies m
LEFT JOIN genres g ON g.id = m.genre
WHERE g.genre = 'Drama'
*/

/*
--query ix
SELECT m.title, g.genre, m.score FROM movies m
LEFT JOIN genres g ON g.id = m.genre
WHERE m.score < 9
And g.genre = 'Drama'
OR g.genre = 'Romance'
*/


/*
--query x
SELECT m.title, p.name AS Director, c.country, p2.name AS Star, p2.dob, p3.name AS Writer, p3.email, m.year, g.genre, m.score FROM movies m
LEFT JOIN people p ON p.id = m.director
LEFT JOIN people p2 ON p2.id = m.star
LEFT JOIN people p3 ON p3.id = m.writer
LEFT JOIN roles r ON r.id = p.role
LEFT JOIN countries c ON c.id = p.country
LEFT JOIN genres g ON g.id = m.genre
*/


