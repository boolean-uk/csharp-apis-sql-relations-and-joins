-- title and director name for all movies
SELECT movie.title, pd.name
FROM movie 
	JOIN director_movie ON movie.id = director_movie.movie_id
		JOIN director as d ON director_movie.director_id = d.id
			JOIN people as pd ON pd.id = d.people_id
;