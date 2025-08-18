--Show only those films where the writer and the director are the same person
SELECT m.name FROM movies as m
LEFT JOIN persons as p ON director_fk = p.id
WHERE m.director_fk = m.writer_fk
