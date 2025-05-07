SELECT
	f.title, d.name "director", s.name "star"
FROM films f
RIGHT JOIN directors d ON f.director_id = d.id
RIGHT JOIN stars s ON f.star_id = s.id;
