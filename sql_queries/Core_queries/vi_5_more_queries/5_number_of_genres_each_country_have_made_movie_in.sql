-- 5 Number of genres each country have made movie in
SELECT d.country, COUNT(DISTINCT m.genre) as number_of_genres
FROM movie as m 
	JOIN director_movie as dm ON m.id = dm.movie_id
		JOIN director as d ON d.id = dm.director_id
GROUP BY d.country
ORDER BY number_of_genres DESC
;