--Show the title, director and star name for all films
SELECT f.title, d.name, s.name
FROM films f
JOIN people d ON f.directorId = d.id
JOIN people s ON f.starId = s.id;