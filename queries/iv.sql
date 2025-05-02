SELECT m.title FROM movies m
INNER JOIN writers w ON m.writerid = w.writerid
INNER JOIN directors d ON m.directorid = d.directorid
WHERE d.name = w.name