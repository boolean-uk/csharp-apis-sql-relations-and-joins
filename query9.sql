/*Every director who has also been a supporting actor in a movie, and their nationality*/
SELECT a.name, a.country
FROM movie m
INNER JOIN cast_members cm ON m.director = cm.actor
INNER JOIN people a ON cm.actor = a.id