/*
SELECT f.title AS film_title, 
       d.name AS director_name
FROM films f
JOIN directors d ON f.director_fk = d.id
ORDER BY d.name ASC;
*/