-- title and director name for all movies
SELECT movie.title, director.name
FROM movie 
	JOIN director_movie ON movie.id = director_movie.movie_id
		JOIN director ON director_movie.director_id = director.id
;

-- title, director, and star name for all movies
SELECT m.title, d.name, s.name 
FROM movie as m
	JOIN director_movie as dm ON m.id = dm.movie_id
		JOIN director as d ON dm.director_id = d.id
	JOIN star_movie as sm ON m.id = sm.movie_id
		JOIN star as s ON sm.star_id = s.id
;

-- title of movies where director from USA
SELECT m.title
FROM movie as m
	JOIN director_movie as dm ON m.id = dm.movie_id
		JOIN director as d ON dm.director_id = d.id
WHERE d.country ILIKE 'usa'
;


-- Only movies where writer and director are the same
SELECT m.*
FROM movie as m 
	JOIN director_movie as dm ON m.id = dm.movie_id
		JOIN director as d ON dm.director_id = d.id
	JOIN writer_movie as wm ON m.id = wm.movie_id
		JOIN writer as w ON wm.writer_id = w.id
WHERE w.name = d.name 
;


-- Director and movie title for movies with score 8 or higher
SELECT d.name, m.title
FROM movie as m
	JOIN director_movie as dm ON m.id = dm.movie_id
		JOIN director as d ON dm.director_id = d.id
where m.score >= 8
;

-- 5 other join queries.
-- 1 Director-star pairings, going from director instead of starting at movie table
SELECT d.name, s.name
FROM director as d 
	JOIN director_movie as dm ON d.id = dm.director_id
		JOIN movie as m ON dm.movie_id = m.id
	JOIN star_movie as sm ON m.id = sm.movie_id
		JOIN star as s ON s.id = sm.star_id
;

-- 2 Star age and rating comparison
SELECT m.score, (m.year - EXTRACT(YEAR FROM s.dob)) as star_age
FROM movie as m 
	JOIN star_movie as sm ON m.id = sm.movie_id
		JOIN star as s ON sm.star_id = s.id 
ORDER BY m.score DESC
;

-- 3 Director and genre of their movies
SELECT d.name, m.genre
FROM movie as m
	JOIN director_movie as dm ON m.id = dm.movie_id
		JOIN director as d ON d.id = dm.director_id
;

-- 4 Avg score of movies per director country
SELECT ROUND(AVG(m.score), 2) as avg_rating, d.country
FROM movie as m 
	JOIN director_movie as dm ON m.id = dm.movie_id
		JOIN director as d ON d.id = dm.director_id
GROUP BY d.country
ORDER BY avg_rating DESC
;


-- 5 Number of genres each country have made movie in
SELECT d.country, COUNT(DISTINCT m.genre) as number_of_genres
FROM movie as m 
	JOIN director_movie as dm ON m.id = dm.movie_id
		JOIN director as d ON d.id = dm.director_id
GROUP BY d.country
ORDER BY number_of_genres DESC
;

