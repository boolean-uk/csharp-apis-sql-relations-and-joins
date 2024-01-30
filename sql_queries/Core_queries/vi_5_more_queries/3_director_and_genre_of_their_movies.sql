-- 3 Director and genre of their movies
SELECT pd.name, m.genre
FROM movie as m
	JOIN director_movie as dm ON m.id = dm.movie_id
		JOIN director as d ON d.id = dm.director_id
			JOIN people as pd ON d.people_id = pd.id 
;