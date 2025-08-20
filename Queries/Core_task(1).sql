
SELECT f.title, d.director_name
FROM film AS f
LEFT JOIN director AS d
ON f.director_id = d.director_id;








