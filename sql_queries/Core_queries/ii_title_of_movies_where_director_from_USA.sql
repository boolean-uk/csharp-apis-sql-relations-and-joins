-- title, director, and star name for all movies
SELECT m.title, p_d.name as director_name, p_s.name as star_name
FROM movie as m
	JOIN director_movie as dm ON m.id = dm.movie_id
		JOIN director as d ON dm.director_id = d.id
			JOIN people as p_d ON p_d.id = d.people_id
	JOIN star_movie as sm ON m.id = sm.movie_id
		JOIN star as s ON sm.star_id = s.id
			JOIN people as p_s ON p_s.id = s.people_id
;