-- 4. Show only those films where the writer and the director are the same person

SELECT f.title
FROM films f
LEFT JOIN directors d ON f.directorid_fk = d.id
LEFT JOIN writers w ON f.writerid_fk = w.id
WHERE d."name" = w."name";