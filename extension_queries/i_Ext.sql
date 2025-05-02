/* i */
SELECT m.title, p.name FROM movies m
INNER JOIN directors d ON d.directorid = m.directorid
INNER JOIN persons p ON p.personid = d.personid
