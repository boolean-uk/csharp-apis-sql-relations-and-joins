SELECT m.title, p.name AS Director FROM movies m
LEFT JOIN people p ON p.id = m.director
WHERE m.score >= 8