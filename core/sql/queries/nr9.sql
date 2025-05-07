--Prints the table from the readme ordered by release_year ascending;
SELECT f.title, d.name, d.director_country, s.name, s.dateOfBirth, w.name, w.email, f.release_year, f.genre, f.score
FROM films f
JOIN directors d ON f.directorId = d.id
JOIN stars s ON f.starId = s.id
JOIN writers w ON f.writerId = w.id
ORDER BY f.release_year ASC;