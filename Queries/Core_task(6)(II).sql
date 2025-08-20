
SELECT f.title, s.star_name
FROM film as f 
LEFT JOIN star as s
ON f.star_id = s.star_id
WHERE s.star_name = 'Leonardo DiCaprio';








