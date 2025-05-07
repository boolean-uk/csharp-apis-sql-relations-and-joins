SELECT 
	f.title, d.name "director", w.name "writer"
FROM films f
INNER JOIN directors d on f.director_id = d.id
INNER JOIN writers w on f.writer_id = w.id
WHERE d.name = w.name;
