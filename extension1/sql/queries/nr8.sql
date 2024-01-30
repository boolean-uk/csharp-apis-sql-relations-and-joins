--Prints the table from the readme ordered by director_country ascending;
SELECT f.title, d.name, d.country, s.name, s.dateOfBirth, w.name, w.email, f.release_year, f.genre, f.score
FROM films f
JOIN people d ON f.directorId = d.id
JOIN people s ON f.starId = s.id
JOIN people w ON f.writerId = w.id
ORDER BY d.director_country ASC;