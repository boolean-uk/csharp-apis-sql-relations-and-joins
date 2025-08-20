
SELECT f.title, f.score, d.director_name
FROM film as f
LEFT JOIN director as d
ON f.director_id = d.director_id
WHERE score > 7;







