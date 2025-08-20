
SELECT f.title, w.writer_name
FROM film as f
LEFT JOIN writer as w
ON f.writer_id = w.writer_id
ORDER BY w.writer_name ASC;









