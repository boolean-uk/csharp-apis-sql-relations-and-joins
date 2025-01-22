--Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.


-- less than 8
SELECT m.title, p.name AS Director, m.score
	FROM movies m 
		INNER JOIN movie_director md ON md.id = m.director_id 
		INNER JOIN persons p ON p.id = md.persons_id 
	WHERE m.score < 8;
	
-- All movies and genres
SELECT m.title, g.genre_name
	FROM movies m 
		INNER JOIN genres_for_movies mg ON mg.movies_id = m.id
		INNER JOIN genres g ON g.id = mg.genre_id;
	
-- All Drama Movies
SELECT m.title, g.genre_name
	FROM movies m 
		INNER JOIN genres_for_movies mg ON mg.movies_id = m.id
		INNER JOIN genres g ON g.id = mg.genre_id
	where g.genre_name LIKE '%Drama%';


-- All Science Fiction by Cameron
SELECT m.title, g.genre_name
	FROM movies m 
		INNER JOIN movie_director md ON md.id = m.director_id 
		INNER JOIN persons p ON md.persons_id = p.id
		INNER JOIN genres_for_movies mg ON mg.movies_id = m.id
		INNER JOIN genres g ON g.id = mg.genre_id
	where g.genre_name LIKE '%Science Fiction%'
	AND p.name LIKE '%James Cameron%'; -- results in 0 movies, because Aliens was not part of the list... 
	
-- All Drama movies with a director from USA
SELECT m.title, g.genre_name
	FROM movies m 
		INNER JOIN movie_director md ON md.id = m.director_id 
		INNER JOIN persons p ON md.persons_id = p.id
		INNER JOIN home_countries hc ON hc.person_id = p.id
		INNER JOIN countries c ON hc.countries_id = c.id
		INNER JOIN genres_for_movies mg ON mg.movies_id = m.id
		INNER JOIN genres g ON g.id = mg.genre_id
	where g.genre_name LIKE '%Drama%'
	AND c.countryname LIKE '%USA%'; 
	
	
-- select all other cast from the james cameraon movies 
SELECT m.title, mc.persons_id, mcp.name
	FROM movies m 
		INNER JOIN movie_director md ON md.id = m.director_id 
		INNER JOIN persons p ON md.persons_id = p.id
		INNER JOIN cast_in_movies mc ON mc.movies_id = m.id
		INNER JOIN persons mcp ON mcp.id = mc.persons_id
	AND p.name LIKE '%James Cameron%';