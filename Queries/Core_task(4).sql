
SELECT f.title
FROM film as f
LEFT JOIN director as d
ON f.director_id = d.director_id
LEFT JOIN writer as w
ON f.writer_id = w.writer_id
WHERE d.director_name = w.writer_name;






