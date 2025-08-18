SELECT f.title FROM Film f
JOIN people d ON d.id = f.director_fk
WHERE d.country = 'USA';










