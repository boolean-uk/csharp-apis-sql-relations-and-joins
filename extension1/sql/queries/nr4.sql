--Show only those films where the writer and the director are the same person
SELECT f.title
FROM films f
JOIN people d ON f.directorId = d.id
JOIN people w ON f.writerId = w.id
WHERE d.name = w.name;