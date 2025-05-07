SELECT p.name AS actor_name, COUNT(c.movie_id) AS movie_count, MAX(m.title) AS stars_in
FROM actors a
JOIN people p ON a.people_id = p.id
JOIN casts c ON a.id = c.actors_id
LEFT JOIN movies_stars ms ON c.movie_id = ms.movie_id AND a.id = ms.actors_id
LEFT JOIN movies m ON ms.movie_id = m.id
GROUP BY a.id, p.name;