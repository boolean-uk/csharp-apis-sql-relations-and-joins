SELECT f.title AS "Title", p.name AS "Director"
FROM Film f
LEFT JOIN FilmDirector fd ON fd.FilmFk = f.id
LEFT JOIN Director d ON fd.DirectorFk = d.id
INNER JOIN Person p ON d.personFk = p.id;