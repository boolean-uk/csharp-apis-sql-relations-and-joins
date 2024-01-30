--Q4 Rank movies by writer's name length
SELECT 
film_title AS "Title",
CONCAT(person_first_name, ' ', person_last_name) AS "Writer",
LENGTH(CONCAT(person_first_name, ' ', person_last_name)) AS "namelength"
FROM film
JOIN writer ON film_fk_writer = writer_id
JOIN person ON person_id = writer_fk_person
ORDER BY namelength DESC;