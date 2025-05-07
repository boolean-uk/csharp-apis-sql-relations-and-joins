-- title of movies where director from USA
SELECT m.title
FROM movie as m
	JOIN director_movie as dm ON m.id = dm.movie_id
		JOIN director as d ON dm.director_id = d.id
WHERE d.country ILIKE 'usa'
;