SELECT f.title AS "Title", pd.name AS "Director", ps.name AS "Star"
FROM Film f
LEFT JOIN FilmDirector fd ON fd.FilmFk = f.id
LEFT JOIN Director d ON fd.DirectorFk = d.id
LEFT JOIN FilmStar fs ON fs.FilmFk = f.id
LEFT JOIN Star s ON fs.StarFk = s.id
LEFT JOIN Person pd ON d.personFk = pd.id
LEFT JOIN Person ps ON s.personFk = ps.id;