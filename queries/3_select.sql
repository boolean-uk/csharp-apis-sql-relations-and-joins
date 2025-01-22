--Show the title of films where the director is from the USA

SELECT m.title, d.name AS Director, msp.name AS Star, c.countryname
	FROM movies m 
		INNER JOIN movie_director md ON md.id = m.director_id 
		INNER JOIN movie_star ms ON ms.id = m.movie_star_id
		INNER JOIN persons d ON d.id = md.persons_id 
		INNER JOIN persons msp ON msp.id = ms.persons_id
		INNER JOIN home_countries homec ON homec.person_id = d.id
		INNER JOIN countries c ON c.id= homec.countries_id
	WHERE c.countryname LIKE '%USA%';