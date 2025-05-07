SELECT
	d.name, f.title
FROM films f
RIGHT JOIN directors d on f.director_id = d.id
WHERE f.score >=8;
