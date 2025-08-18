/*Every supporting actor from a movie after 1975*/
SELECT a.name
FROM movie m
LEFT JOIN cast_members cm ON cm.movie = movie AND cm.role = 'Supporting Actor'
LEFT JOIN people a ON cm.actor = a.id
WHERE m.year > 1975