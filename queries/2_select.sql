-- Show the title, director and star name for all films

SELECT m.title, p.name AS Director, msp.name AS Star
	FROM movies m 
		INNER JOIN movie_director md ON md.id = m.director_id 
		INNER JOIN movie_star ms ON ms.id = m.movie_star_id
		INNER JOIN persons p ON p.id = md.persons_id 
		INNER JOIN persons msp ON msp.id = ms.persons_id;