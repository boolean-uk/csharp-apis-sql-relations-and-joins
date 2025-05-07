SELECT f.title AS "Title", d.name AS "Director"
FROM Film f
LEFT JOIN FilmDirector fd ON fd.FilmFk = f.id
LEFT JOIN Director d ON fd.DirectorFk = d.id
WHERE f.score >= 8;