-- 1 Director-star pairings, going from director instead of starting at movie table
SELECT pd.name, ps.name
FROM director as d 
	JOIN director_movie as dm ON d.id = dm.director_id
		JOIN movie as m ON dm.movie_id = m.id
			JOIN people as pd ON d.people_id = pd.id 
	JOIN star_movie as sm ON m.id = sm.movie_id
		JOIN star as s ON s.id = sm.star_id
			JOIN people as ps ON s.people_id = ps.id 
;