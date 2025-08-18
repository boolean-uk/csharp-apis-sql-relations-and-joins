--Count number of directors who are also writers
SELECT COUNT(m.name) FROM movies as m
LEFT JOIN persons as p ON director_fk = p.id
WHERE m.director_fk = m.writer_fk