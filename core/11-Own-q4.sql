--Q4 Rank movies by writer's name length
SELECT 
film_title AS "Title",
CONCAT(writer_first_name, ' ', writer_last_name) AS "Writer",
LENGTH(CONCAT(writer_first_name, ' ', writer_last_name)) AS "namelength"
FROM film
INNER JOIN
writer ON film_fk_writer = writer_id
ORDER BY namelength DESC;