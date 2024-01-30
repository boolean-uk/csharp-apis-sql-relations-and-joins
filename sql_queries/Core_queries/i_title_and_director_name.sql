-- title and director name for all movies
SELECT movie.title, director.name
FROM movie 
	JOIN director_movie ON movie.id = director_movie.movie_id
		JOIN director ON director_movie.director_id = director.id
;