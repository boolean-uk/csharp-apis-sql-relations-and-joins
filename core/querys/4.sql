SELECT f.title AS "Title", d.name AS "Director", w.name AS "Writer"
FROM Film f
LEFT JOIN FilmDirector fd ON fd.FilmFk = f.id
LEFT JOIN Director d ON fd.DirectorFk = d.id
LEFT JOIN FilmWriter fs ON fs.FilmFk = f.id
LEFT JOIN Writer w ON fs.WriterFk = w.id
WHERE d.name = w.name;