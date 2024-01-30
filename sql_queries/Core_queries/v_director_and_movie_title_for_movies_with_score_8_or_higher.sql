-- Director and movie title for movies with score 8 or higher
SELECT pd.name, m.title
FROM movie as m
	JOIN director_movie as dm ON m.id = dm.movie_id
		JOIN director as d ON dm.director_id = d.id
			JOIN people as pd ON d.people_id = pd.id 
where m.score >= 8
;