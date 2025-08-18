SELECT m.title, p.name as director_name, m.score
FROM movie m
LEFT JOIN people p ON m.director = p.id
WHERE m.score >= 8