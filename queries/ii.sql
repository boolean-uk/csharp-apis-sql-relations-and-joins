SELECT m.title, d.name, s.name FROM movies m
INNER JOIN directors d ON d.directorid = m.directorid
INNER JOIN stars s ON s.starid = m.starid