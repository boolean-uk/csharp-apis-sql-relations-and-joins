Select * from Film f
JOIN people d ON d.id = f.director_fk
JOIN people w ON w.id = f.writer_fk
WHERE f.director_fk = f.writer_fk;









