-- 5. Show directors and film titles for films with a score of 8 or higher

SELECT d."name" AS director, f.title
FROM films f
LEFT JOIN directors d ON f.directorid_fk = d.id
WHERE f.score >= 8;