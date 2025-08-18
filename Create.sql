--full table from the readme file
SELECT m.title, p.name AS Director, c.country, p2.name AS Star, p2.dob, p3.name AS Writer, p3.email, m.year, g.genre, m.score FROM movies m
LEFT JOIN people p ON p.id = m.director
LEFT JOIN people p2 ON p2.id = m.star
LEFT JOIN people p3 ON p3.id = m.writer
LEFT JOIN roles r ON r.id = p.role
LEFT JOIN countries c ON c.id = p.country
LEFT JOIN genres g ON g.id = m.genre