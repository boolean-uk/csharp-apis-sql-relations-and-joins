SELECT
	f.title, d.name
FROM films f
RIGHT JOIN directors d ON f.director_id = d.id;
