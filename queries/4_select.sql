--Show only those films where the writer and the director are the same person

SELECT m.title
	FROM movies m 
		INNER JOIN movie_director md ON md.id = m.director_id 
		INNER JOIN movie_writer mw ON mw.id = m.movie_star_id
	WHERE mw.persons_id = md.persons_id;