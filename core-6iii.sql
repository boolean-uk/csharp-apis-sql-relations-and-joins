SELECT
	f.title
FROM films f
RIGHT JOIN directors d ON f.director_id = d.id
WHERE d.country = 'USA';
