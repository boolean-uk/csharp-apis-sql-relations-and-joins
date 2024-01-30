-- Director and movie title for movies with score 8 or higher
SELECT d.name, m.title
FROM movie as m
	JOIN director_movie as dm ON m.id = dm.movie_id
		JOIN director as d ON dm.director_id = d.id
where m.score >= 8
;