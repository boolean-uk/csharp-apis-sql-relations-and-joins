--Show the title and director name for all films
SELECT f.title, d.name
FROM films f
JOIN people d ON f.directorId = d.id;