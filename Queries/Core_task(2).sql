
SELECT f.title, d.director_name, s.star_name
FROM film AS f
LEFT JOIN director AS d
ON f.director_id = d.director_id
LEFT JOIN star AS s
ON f.star_id = s.star_id;














