SELECT f.title AS "Title", pd.name AS "Director", pw.name AS "Writer"
FROM Film f
LEFT JOIN FilmDirector fd ON fd.FilmFk = f.id
LEFT JOIN Director d ON fd.DirectorFk = d.id
LEFT JOIN FilmWriter fs ON fs.FilmFk = f.id
LEFT JOIN Writer w ON fs.WriterFk = w.id
LEFT JOIN Person pd ON d.personFk = pd.id
LEFT JOIN Person pw ON w.personFk = pw.id
WHERE d.name = w.name;