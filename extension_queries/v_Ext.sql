/* v */
SELECT m.title, p.name FROM movies m
INNER JOIN directors d ON m.directorid = d.directorid
INNER JOIN persons p ON p.personid = d.personid
WHERE m.score >= 8