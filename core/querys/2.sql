SELECT f.title AS "Title", d.name AS "Director", s.name AS "Star"
FROM Film f
LEFT JOIN FilmDirector fd ON fd.FilmFk = f.id
LEFT JOIN Director d ON fd.DirectorFk = d.id
LEFT JOIN FilmStar fs ON fs.FilmFk = f.id
LEFT JOIN Star s ON fs.StarFk = s.id;