-- 2 Star age and rating comparison
SELECT m.score, (m.year - EXTRACT(YEAR FROM s.dob)) as star_age
FROM movie as m 
	JOIN star_movie as sm ON m.id = sm.movie_id
		JOIN star as s ON sm.star_id = s.id 
			JOIN people as ps ON s.people_id = ps.id 
ORDER BY m.score DESC
;