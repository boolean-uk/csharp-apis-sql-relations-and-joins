/*
SELECT f.title AS film_title, 
       s.name AS star_name
FROM films f
JOIN stars s ON f.star_fk = s.id
WHERE s.name LIKE '%d%'
ORDER BY f.score DESC;
*/