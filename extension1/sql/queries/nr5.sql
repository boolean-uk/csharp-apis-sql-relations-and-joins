--Show directors and film titles for films with a score of 8 or higher
SELECT f.title, d.name
FROM films f
JOIN people d ON f.directorId = d.id
where f.score >= 8;