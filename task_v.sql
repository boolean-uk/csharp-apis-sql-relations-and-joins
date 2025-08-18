SELECT d.name, f.title, f.score FROM Film f
JOIN people d ON d.id = f.director_fk
WHERE f.score >= 8;









