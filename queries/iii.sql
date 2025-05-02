SELECT m.title FROM movies m
INNER JOIN directors d ON d.directorid = m.directorid
WHERE d.country = 'USA'