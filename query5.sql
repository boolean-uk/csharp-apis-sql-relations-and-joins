--Show directors and film titles for films with a score of 8 or higher
SELECT m.name, p.name FROM movies as m
LEFT JOIN persons as p ON m.director_fk = p.id
WHERE m.score >= 8