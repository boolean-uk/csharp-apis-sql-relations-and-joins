SELECT m.title, d.name AS director_name, a.name AS star_name
FROM movie m
JOIN people d ON m.director = d.id
JOIN cast_members cm ON cm.movie = m.id AND cm.role = 'Star'
JOIN people a ON cm.actor = a.id;