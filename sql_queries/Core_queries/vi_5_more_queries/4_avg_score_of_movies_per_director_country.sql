-- 4 Avg score of movies per director country
SELECT ROUND(AVG(m.score), 2) as avg_rating, d.country
FROM movie as m 
	JOIN director_movie as dm ON m.id = dm.movie_id
		JOIN director as d ON d.id = dm.director_id
GROUP BY d.country
ORDER BY avg_rating DESC
;