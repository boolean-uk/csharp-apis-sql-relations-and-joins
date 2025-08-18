
SELECT f.title, d.name, s.name FROM Film f
JOIN people d ON d.id = f.director_fk
JOIN people s ON s.id = f.star_fk;








