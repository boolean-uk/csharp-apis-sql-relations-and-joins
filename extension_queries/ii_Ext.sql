/* ii */
SELECT m.title, p.name FROM movies m
INNER JOIN directors d ON d.directorid = m.directorid
JOIN casts c ON c.movieid = m.movieid
JOIN actors a ON a.actorid = c.actorid
INNER JOIN persons p ON p.personid = d.personid OR p.personid = a.personid
