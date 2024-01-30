SELECT m.title as movie_title, p.name as actor_name
FROM movie as m 
	JOIN "cast" as c ON c.movie_id = m.id 
		JOIN people as p ON p.id = c.people_id 
ORDER BY m.title ASC