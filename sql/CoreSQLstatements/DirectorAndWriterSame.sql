SELECT f.title, dir.name, w.name FROM film as f
	INNER JOIN director as dir
		ON f.director_id = dir.director_id
	INNER JOIN writer as w
		ON dir.name = w.name;