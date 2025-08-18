--Count number of people who are only writers
SELECT COUNT(m.name) FROM movies as m
LEFT JOIN persons as p ON writer_fk = p.id
WHERE p.country_fk IS NULL