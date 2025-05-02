/* iv */
SELECT m.title FROM movies m
INNER JOIN writers w ON m.writerid = w.writerid
INNER JOIN directors d ON m.directorid = d.directorid
INNER JOIN persons p ON d.personid = p.personid OR d.personid = p.personid
WHERE d.personid = p.personid AND w.personid = p.personid
