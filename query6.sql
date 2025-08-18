/*Movie with director, writer and star name*/
SELECT m.title, d.name as director, w.name as writer_name, s.name as star_name
FROM movie m
LEFT JOIN people d ON d.id = m.id
LEFT JOIN people w ON w.id = m.id
LEFT JOIN cast_members cm ON cm.movie = m.id AND cm.role = 'Star'
LEFT JOIN people s ON s.id = cm.actor 