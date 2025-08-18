SELECT m.title, p.name AS Director, p2.name AS Star FROM movies m
LEFT JOIN people p ON p.id = m.director
LEFT JOIN people p2 ON p2.id = m.star