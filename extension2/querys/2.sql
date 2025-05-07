SELECT f.title AS "Title", pd.name AS "Director", ps.name AS "Actor"
FROM Film f
LEFT JOIN FilmDirector fd ON fd.FilmFk = f.id
LEFT JOIN Director d ON fd.DirectorFk = d.id
LEFT JOIN FilmActor fs ON fs.FilmFk = f.id
LEFT JOIN Actor a ON fs.ActorFk = a.id
LEFT JOIN Person pd ON d.personFk = pd.id
LEFT JOIN Person ps ON a.personFk = ps.id;