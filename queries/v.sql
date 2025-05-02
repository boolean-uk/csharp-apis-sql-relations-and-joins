SELECT m.title, d.name FROM movies m
INNER JOIN directors d ON m.directorid = d.directorid
WHERE m.score >= 8