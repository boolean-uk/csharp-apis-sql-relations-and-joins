SELECT m.title FROM movies m
LEFT JOIN people p ON p.id = m.director
LEFT JOIN people p3 ON p3.id = m.writer
WHERE p."name" = p3."name"