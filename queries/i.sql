SELECT m.title, d.name FROM movies m
INNER JOIN directors d ON d.directorid = m.directorid
