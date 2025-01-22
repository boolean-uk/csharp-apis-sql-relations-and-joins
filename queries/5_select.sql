--Show directors and film titles for films with a score of 8 or higher


SELECT m.title, p.name AS Director, m.score
	FROM movies m 
		INNER JOIN movie_director md ON md.id = m.director_id 
		INNER JOIN persons p ON p.id = md.persons_id 
	WHERE m.score >= 8;