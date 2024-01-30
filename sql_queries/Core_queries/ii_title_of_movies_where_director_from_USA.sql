-- title, director, and star name for all movies
SELECT m.title, d.name, s.name 
FROM movie as m
	JOIN director_movie as dm ON m.id = dm.movie_id
		JOIN director as d ON dm.director_id = d.id
	JOIN star_movie as sm ON m.id = sm.movie_id
		JOIN star as s ON sm.star_id = s.id
;