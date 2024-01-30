-- Only movies where writer and director are the same
SELECT m.*
FROM movie as m 
	JOIN director_movie as dm ON m.id = dm.movie_id
		JOIN director as d ON dm.director_id = d.id
			JOIN people as pd ON d.people_id = pd.id 
	JOIN writer_movie as wm ON m.id = wm.movie_id
		JOIN writer as w ON wm.writer_id = w.id
			JOIN people as pw ON pw.id = w.people_id
WHERE pd.name = pw.name 
;